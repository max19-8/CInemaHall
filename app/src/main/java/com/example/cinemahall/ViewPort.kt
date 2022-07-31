package com.example.cinemahall

import android.content.Context
import android.content.res.Resources
import android.graphics.*
import android.util.AttributeSet
import android.view.MotionEvent
import android.view.View
import java.util.*


 class ViewPort @JvmOverloads constructor(context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0) : View(context, attrs, defStyleAttr) {
    private var layers: MutableList<Layer> = LinkedList<Layer>()
    var ids = intArrayOf(R.drawable.us)
    override fun onDraw(canvas: Canvas) {
        for (l in layers) {
            l.draw(canvas)
        }
    }

    private var target: Layer? = null
    override fun onTouchEvent(event: MotionEvent): Boolean {
        if (event.action == MotionEvent.ACTION_DOWN) {
            target = null
            for (i in layers.indices.reversed()) {
                val l = layers[i]
                if (l.contains(event)) {
                    target = l
                    layers.remove(l)
                    layers.add(l)
                    invalidate()
                    break
                }
            }
        }
        return if (target == null) {
            false
        } else target!!.onTouchEvent(event)
    }

    init {
        val res: Resources = getResources()
        for (i in ids.indices) {
            val l = Layer(context, this, BitmapFactory.decodeResource(res, ids[i]))
            layers.add(l)
        }
    }
}

internal class Layer(ctx: Context?, p: View, b: Bitmap) :
    MatrixGestureDetector.OnMatrixChangeListener {
    var matrx: Matrix = Matrix()
    var inverse: Matrix = Matrix()
    var bounds: RectF
    var parent: View
    var bitmap: Bitmap
    var mgd = MatrixGestureDetector(matrx, this)
    operator fun contains(event: MotionEvent): Boolean {
        matrx.invert(inverse)
        val pts = floatArrayOf(event.x, event.y)
        inverse.mapPoints(pts)
        return if (!bounds.contains(pts[0], pts[1])) {
            false
        } else Color.alpha(bitmap.getPixel(pts[0].toInt(), pts[1].toInt())) !== 0
    }

    fun onTouchEvent(event: MotionEvent): Boolean {
        mgd.onTouchEvent(event)
        return true
    }

    override fun onChange(matrix: Matrix?) {
        parent.invalidate()
    }

    fun draw(canvas: Canvas) {
        canvas.drawBitmap(bitmap, matrx, null)
    }

    init {
        parent = p
        bitmap = b
        bounds = RectF(0f, 0f, b.width.toFloat(), b.height.toFloat())
        matrx.postTranslate(50 + Math.random().toFloat() * 50, 50 + Math.random().toFloat() * 50)
    }
}

internal class MatrixGestureDetector(matrix: Matrix, listener: OnMatrixChangeListener?) {
    private var ptpIdx = 0
    private val mTempMatrix: Matrix = Matrix()
    private val mMatrix: Matrix
    private val mListener: OnMatrixChangeListener?
    private val mSrc = FloatArray(4)
    private val mDst = FloatArray(4)
    private var mCount = 0

    internal interface OnMatrixChangeListener {
        fun onChange(matrix: Matrix?)
    }

    fun onTouchEvent(event: MotionEvent) {
        if (event.pointerCount > 2) {
            return
        }
        val action = event.actionMasked
        val index = event.actionIndex
        var idx = index * 2
        when (action) {
            MotionEvent.ACTION_DOWN, MotionEvent.ACTION_POINTER_DOWN -> {

                mSrc[idx] = event.getX(index)
                mSrc[idx + 1] = event.getY(index)
                mCount++
                ptpIdx = 0
            }
            MotionEvent.ACTION_MOVE -> {
                var i = 0
                while (i < mCount) {
                    idx = ptpIdx + i * 2
                    mDst[idx] = event.getX(i)
                    mDst[idx + 1] = event.getY(i)
                    i++
                }
                mTempMatrix.setPolyToPoly(mSrc, ptpIdx, mDst, ptpIdx, mCount)
                mMatrix.postConcat(mTempMatrix)
                mListener?.onChange(mMatrix)
                System.arraycopy(mDst, 0, mSrc, 0, mDst.size)
            }
            MotionEvent.ACTION_UP, MotionEvent.ACTION_POINTER_UP -> {
                if (event.getPointerId(index) == 0) ptpIdx = 2
                mCount--
            }
        }
    }

    companion object {
        private const val TAG = "MatrixGestureDetector"
    }

    init {
        mMatrix = matrix
        mListener = listener
    }
}
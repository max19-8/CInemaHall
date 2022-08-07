package com.example.cinemahall

import android.content.Context
import android.graphics.*
import android.graphics.drawable.Drawable
import android.util.AttributeSet
import android.view.GestureDetector
import android.view.MotionEvent
import android.view.ScaleGestureDetector
import android.view.View
import androidx.core.view.ViewCompat
import androidx.vectordrawable.graphics.drawable.VectorDrawableCompat


class Hall @JvmOverloads constructor(context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0) : View(context, attrs, defStyleAttr),GestureDetector.OnGestureListener, GestureDetector.OnDoubleTapListener {

    var paintSvg = Paint(Paint.ANTI_ALIAS_FLAG).apply {
        color = Color.RED
    }
    private val  mMyVectorDrawable = VectorDrawableCompat.create(resources, R.drawable.ic_scene, null);



    //shared constructing
    private var mContext: Context? = null
    private var mScaleDetector: ScaleGestureDetector? = null
    private var mGestureDetector: GestureDetector? = null
    var mMatrix: Matrix? = Matrix()
    private var matrixValues: FloatArray? = null
    var mode = NONE


    val bitmap = BitmapFactory.decodeResource(resources,R.drawable.scene)
    // Scales
    var mSaveScale = 1f
    var mMinScale = 1f
    var mMaxScale = 4f

    // view dimensions
    var origWidth = width
    var origHeight = height
    var viewWidth = mMyVectorDrawable!!.intrinsicWidth
    var viewHeight = mMyVectorDrawable!!.intrinsicHeight
    private var mLast = PointF()
    private var mStart = PointF()



     lateinit var r:Drawable

    init {
        sharedConstructing(context)
    }

    private fun sharedConstructing(context: Context) {
        super.setClickable(true)
        mContext = context
        mScaleDetector = ScaleGestureDetector(context, ScaleListener())
        matrixValues = FloatArray(9)
       // canvas.setMatrix(matrix)
//         this.scaleX = 0f
//         this.scaleY = 0f
        mGestureDetector = GestureDetector(context, this)
    }

    private inner class ScaleListener : ScaleGestureDetector.SimpleOnScaleGestureListener() {
        override fun onScaleBegin(detector: ScaleGestureDetector): Boolean {
            mode = ZOOM
            return true
        }

        override fun onScale(detector: ScaleGestureDetector): Boolean {
            var mScaleFactor = detector.scaleFactor
            val prevScale = mSaveScale
            mSaveScale *= mScaleFactor
            if (mSaveScale > mMaxScale) {
                mSaveScale = mMaxScale
                mScaleFactor = mMaxScale / prevScale
            } else if (mSaveScale < mMinScale) {
                mSaveScale = mMinScale
                mScaleFactor = mMinScale / prevScale
            }
            if (origWidth * mSaveScale <= viewWidth
                || origHeight * mSaveScale <= viewHeight) {
                mMatrix!!.postScale(mScaleFactor, mScaleFactor, viewWidth / 2.toFloat(), viewHeight / 2.toFloat())
            } else {
                mMatrix!!.postScale(mScaleFactor, mScaleFactor,
                    detector.focusX, detector.focusY)
            }
            invalidate()
            fixTranslation()
            return true
        }
    }

    private  fun fitToScreen() {
        mSaveScale = 1f
        val scale: Float
        val drawable = mMyVectorDrawable
        if (drawable == null || drawable.intrinsicWidth == 0 || drawable.intrinsicHeight == 0) return
        val imageWidth = drawable.intrinsicWidth
        val imageHeight = drawable.intrinsicHeight
        val scaleX = viewWidth.toFloat() / imageWidth.toFloat()
        val scaleY = viewHeight.toFloat() / imageHeight.toFloat()
        scale = scaleX.coerceAtMost(scaleY)
        mMatrix!!.setScale(scale, scale)

        ViewCompat.postInvalidateOnAnimation(this@Hall)
        invalidate()

//        // Center the image
//        var redundantYSpace = (viewHeight.toFloat()
//                - scale * imageHeight.toFloat())
//        var redundantXSpace = (viewWidth.toFloat()
//                - scale * imageWidth.toFloat())
//        redundantYSpace /= 2.toFloat()
//        redundantXSpace /= 2.toFloat()
//        matrix!!.postTranslate(redundantXSpace, redundantYSpace)
//        origWidth = viewWidth - 2 * redundantXSpace
//        origHeight = viewHeight - 2 * redundantYSpace
    }

    fun fixTranslation() {
        mMatrix!!.getValues(matrixValues) //put matrix values into a float array so we can analyze
        val transX = matrixValues!![Matrix.MTRANS_X] //get the most recent translation in x direction
        val transY = matrixValues!![Matrix.MTRANS_Y] //get the most recent translation in y direction
        val fixTransX = getFixTranslation(transX, viewWidth.toFloat(), origWidth * mSaveScale)
        val fixTransY = getFixTranslation(transY, viewHeight.toFloat(), origHeight * mSaveScale)
        if (fixTransX != 0f || fixTransY != 0f) mMatrix!!.postTranslate(fixTransX, fixTransY)
        invalidate()
    }

    private fun getFixTranslation(trans: Float, viewSize: Float, contentSize: Float): Float {
        val minTrans: Float
        val maxTrans: Float
        if (contentSize <= viewSize) { // case: NOT ZOOMED
            minTrans = 0f
            maxTrans = viewSize - contentSize
        } else { //CASE: ZOOMED
            minTrans = viewSize - contentSize
            maxTrans = 0f
        }
        if (trans < minTrans) { // negative x or y translation (down or to the right)
            return -trans + minTrans
        }
        if (trans > maxTrans) { // positive x or y translation (up or to the left)
            return -trans + maxTrans
        }
        return 0F
    }

    private fun getFixDragTrans(delta: Float, viewSize: Float, contentSize: Float): Float {
        return if (contentSize <= viewSize) {
            0F
        } else delta
    }


    override fun onDraw(canvas: Canvas) {
      //  canvas.setMatrix(mMatrix)

        mMyVectorDrawable?.draw(canvas)
    }


    override fun onMeasure(widthMeasureSpec: Int, heightMeasureSpec: Int) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec)
        fitToScreen()

    }


    override fun onSizeChanged(w: Int, h: Int, oldw: Int, oldh: Int) {
        super.onSizeChanged(w, h, oldw, oldh)

        val aspectRatio = width.toFloat() / bitmap.width.toFloat()

        val newHeight = bitmap.height * aspectRatio

        val n1 = 0f
        val n2= 0f
        val n3 =  w
        val n4 = h
        mMyVectorDrawable?.setBounds(n1.toInt(),n2.toInt(),n3.toInt(),n4.toInt())
    }


    override fun onTouchEvent(event: MotionEvent): Boolean {
        mScaleDetector!!.onTouchEvent(event)
        mGestureDetector!!.onTouchEvent(event)
        val currentPoint = PointF(event.x, event.y)
        when (event.action) {
            MotionEvent.ACTION_DOWN -> {
                mLast.set(currentPoint)
                mStart.set(mLast)
                true
                //mode = DRAG
            }
            MotionEvent.ACTION_MOVE -> if (mode == DRAG) {
                val dx = currentPoint.x - mLast.x
                val dy = currentPoint.y - mLast.y
                val fixTransX = getFixDragTrans(dx, viewWidth.toFloat(), origWidth * mSaveScale)
                val fixTransY = getFixDragTrans(dy, viewHeight.toFloat(), origHeight * mSaveScale)
                mMatrix!!.postTranslate(fixTransX, fixTransY)
                fixTranslation()
                mLast[currentPoint.x] = currentPoint.y
                invalidate()
            }
            MotionEvent.ACTION_POINTER_UP -> mode = NONE
        }
       //  canvas.setMatrix(matrix)
        return true
    }

    override fun onDown(motionEvent: MotionEvent): Boolean {
        return false
    }

    override fun onShowPress(motionEvent: MotionEvent) {}
    override fun onSingleTapUp(motionEvent: MotionEvent): Boolean {
        return false
    }

    override fun onScroll(motionEvent: MotionEvent, motionEvent1: MotionEvent, v: Float, v1: Float): Boolean {
        return false
    }

    override fun onLongPress(motionEvent: MotionEvent) {}
    override fun onFling(motionEvent: MotionEvent, motionEvent1: MotionEvent, v: Float, v1: Float): Boolean {
        return false
    }

    /*
        onDoubleTap
     */
    override fun onSingleTapConfirmed(motionEvent: MotionEvent): Boolean {
        return false
    }

    override fun onDoubleTap(motionEvent: MotionEvent): Boolean {
       // fitToScreen()
        return false
    }

    override fun onDoubleTapEvent(motionEvent: MotionEvent): Boolean {
        return false
    }

    companion object {

        // Image States
        const val NONE = 0
        const val DRAG = 1
        const val ZOOM = 2
    }
}
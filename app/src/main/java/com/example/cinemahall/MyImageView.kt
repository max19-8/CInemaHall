package com.example.cinemahall

import android.content.Context
import android.graphics.Canvas
import android.graphics.Color
import android.graphics.Paint
import android.graphics.drawable.Drawable
import android.util.AttributeSet
import android.util.Log
import android.view.MotionEvent
import android.view.ScaleGestureDetector
import android.view.ScaleGestureDetector.SimpleOnScaleGestureListener
import android.view.View
import android.widget.Scroller
import androidx.vectordrawable.graphics.drawable.VectorDrawableCompat


class MyImageView(context: Context?, attrs: AttributeSet?, defStyle: Int) :
    View(context, attrs, defStyle) {
    private var mImage: Drawable? = null
    private var mPosX = 0f
    private var mPosY = 0f
    private var mLastTouchX = 0f
    private var mLastTouchY = 0f
    private var mActivePointerId = INVALID_POINTER_ID
    private val mScaleDetector: ScaleGestureDetector
    private var mScaleFactor = 1f

    var paintSvg = Paint(Paint.ANTI_ALIAS_FLAG).apply {
        color = Color.RED
    }



    constructor(context: Context?, attrs: AttributeSet?) : this(context, attrs, 0) {}

    init {
        mImage =  VectorDrawableCompat.create(resources, R.drawable.ic_scene, null)
    }

  override  fun onTouchEvent(ev: MotionEvent): Boolean {
        // Let the ScaleGestureDetector inspect all events.
        mScaleDetector.onTouchEvent(ev)
        val action = ev.action
        when (action and MotionEvent.ACTION_MASK) {
            MotionEvent.ACTION_DOWN -> {
                val x = ev.x
                val y = ev.y
                mLastTouchX = x
                mLastTouchY = y
                mActivePointerId = ev.getPointerId(0)
            }
            MotionEvent.ACTION_MOVE -> {
                val pointerIndex = ev.findPointerIndex(mActivePointerId)
                val x = ev.getX(pointerIndex)
                val y = ev.getY(pointerIndex)

                // Only move if the ScaleGestureDetector isn't processing a gesture.
                if (!mScaleDetector.isInProgress) {
                    val dx = x - mLastTouchX
                    val dy = y - mLastTouchY
                    if (mPosX + dx <= width / 2 && mPosY + dy <= height / 2)
                    mPosX += dx
                    mPosY += dy
                    invalidate()
                }
                mLastTouchX = x
                mLastTouchY = y
            }
            MotionEvent.ACTION_UP -> {
                mActivePointerId = INVALID_POINTER_ID
            }
            MotionEvent.ACTION_CANCEL -> {
                mActivePointerId = INVALID_POINTER_ID
            }
            MotionEvent.ACTION_POINTER_UP -> {
                val pointerIndex = (ev.action and MotionEvent.ACTION_POINTER_INDEX_MASK
                        shr MotionEvent.ACTION_POINTER_INDEX_SHIFT)
                val pointerId = ev.getPointerId(pointerIndex)
                if (pointerId == mActivePointerId) {
                    // This was our active pointer going up. Choose a new
                    // active pointer and adjust accordingly.
                    val newPointerIndex = if (pointerIndex == 0) 1 else 0
                    mLastTouchX = ev.getX(newPointerIndex)
                    mLastTouchY = ev.getY(newPointerIndex)
                    mActivePointerId = ev.getPointerId(newPointerIndex)
                }
            }
        }
        return true
    }

    override fun onSizeChanged(w: Int, h: Int, oldw: Int, oldh: Int) {

        val aspectRatio = width.toFloat() / mImage?.intrinsicWidth!!.toFloat()

        val newHeight = mImage!!.intrinsicHeight * aspectRatio


        val n1 = x.toInt()
        val n2= y.toInt()
        val n3 =  w
        val n4 = n2 + newHeight

        mImage!!.setBounds(n1, n2,n3, n4.toInt())

    }

    override  fun onDraw(canvas: Canvas) {
        val aspectRatio = width.toFloat() / mImage?.intrinsicWidth!!.toFloat()
        val pivotX: Float = (mImage!!.intrinsicWidth / 2).toFloat()
        val pivotY: Float = (mImage!!.intrinsicHeight / 2).toFloat()
        canvas.save()
        Log.d("DEBUG", "X: $mPosX Y: $mPosY")
        Log.d("DEBUG", "pivotX: $pivotX pivotY: $pivotY")
        canvas.translate(mPosX, mPosY)
        canvas.scale(mScaleFactor, mScaleFactor, mPosX,mPosY)
        mImage!!.draw(canvas)
        // 1-ая ложа 3-го яруса
        canvas.drawCircle( 100.535f * aspectRatio , 1219.84f* aspectRatio,6f,paintSvg)
        canvas.drawCircle(  100.535f* aspectRatio, 1186.37f* aspectRatio,6f,paintSvg)
        canvas.drawCircle(  100.535f* aspectRatio, 1152.9f* aspectRatio,6f,paintSvg)
        // 2-ая ложа 3-го яруса
        canvas.drawCircle( 100.535f* aspectRatio, 1119.43f* aspectRatio,6f,paintSvg)
        canvas.drawCircle(  100.535f* aspectRatio, 1085.96f* aspectRatio,6f,paintSvg)
        canvas.drawCircle( 100.535f* aspectRatio, 1052.49f* aspectRatio,6f,paintSvg)
        // 3-ья ложа 3-го яруса
        canvas.drawCircle(  100.535f* aspectRatio, 1019.02f* aspectRatio,6f,paintSvg)
        canvas.drawCircle(     100.535f* aspectRatio, 985.548f* aspectRatio,6f,paintSvg)
        canvas.drawCircle(    100.535f* aspectRatio, 952.077f* aspectRatio,6f,paintSvg)
        // 4-ая ложа 3-го яруса
        canvas.drawCircle(    101.855f* aspectRatio, 918.338f* aspectRatio,6f,paintSvg)
        canvas.drawCircle(    103.664f* aspectRatio, 884.451f* aspectRatio,6f,paintSvg)
        canvas.drawCircle(106.691f* aspectRatio, 851.601f* aspectRatio,6f,paintSvg)
        canvas.restore()
    }

    private inner class ScaleListener : SimpleOnScaleGestureListener() {
        override fun onScale(detector: ScaleGestureDetector): Boolean {
            mScaleFactor *= detector.scaleFactor
            // Don't let the object get too small or too large.

            mScaleFactor = Math.max(1f, Math.min(mScaleFactor, 3.0f))
            invalidate()
            return true
        }
    }

    companion object {
        private const val INVALID_POINTER_ID = -1
    }

    init {
        mScaleDetector = ScaleGestureDetector(context, ScaleListener())
    }
}
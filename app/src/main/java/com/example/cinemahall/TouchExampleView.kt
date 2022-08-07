package com.example.cinemahall

import android.content.Context
import android.graphics.Canvas
import android.util.AttributeSet
import android.view.MotionEvent
import android.view.MotionEvent.INVALID_POINTER_ID
import android.view.ScaleGestureDetector
import android.view.ScaleGestureDetector.SimpleOnScaleGestureListener
import android.view.View
import androidx.vectordrawable.graphics.drawable.VectorDrawableCompat


class TouchExampleView @JvmOverloads constructor(context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0) : View(context, attrs, defStyleAttr) {
    val mIcon = VectorDrawableCompat.create(resources, R.drawable.ic_launcher_background, null)

    private var mScaleFactor = 1f
    private var mPosX = 0f
    private var mPosY = 0f

    private var mActivePointerId = - 1

    private var mLastTouchX = 0f
    private var mLastTouchY = 0f

    // Create our ScaleGestureDetector
   var  mScaleDetector = ScaleGestureDetector(context, ScaleListener())

    init {
        mIcon?.setBounds(0, 0, mIcon.getIntrinsicWidth(), mIcon.getIntrinsicHeight())

    }


    override   fun onTouchEvent(ev: MotionEvent): Boolean {
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
                if (!mScaleDetector.isInProgress()) {
                    val dx: Float = x - mLastTouchX
                    val dy: Float = y - mLastTouchY
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

    override  fun onDraw(canvas: Canvas) {
        super.onDraw(canvas)
        canvas.save()
        canvas.translate(mPosX, mPosY)
        canvas.scale(mScaleFactor, mScaleFactor)
        mIcon?.draw(canvas)
        canvas.restore()
    }

    private inner class ScaleListener : SimpleOnScaleGestureListener() {
        override fun onScale(detector: ScaleGestureDetector): Boolean {
            mScaleFactor *= detector.scaleFactor

            // Don't let the object get too small or too large.
            mScaleFactor = Math.max(0.1f, Math.min(mScaleFactor, 5.0f))
            invalidate()
            return true
        }
    }
}
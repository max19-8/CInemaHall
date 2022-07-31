package com.example.cinemahall

import android.annotation.SuppressLint
import android.content.Context
import android.graphics.*
import android.net.Uri
import android.util.AttributeSet
import android.util.Log
import android.view.GestureDetector
import android.view.MotionEvent
import android.view.ScaleGestureDetector
import android.view.View
import androidx.vectordrawable.graphics.drawable.VectorDrawableCompat


class MyNewView @JvmOverloads constructor(context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0) : View(context, attrs, defStyleAttr) {

    var paintSvg = Paint(Paint.ANTI_ALIAS_FLAG).apply {
        color = Color.RED
    }

    val  mMyVectorDrawable = VectorDrawableCompat.create(resources, R.drawable.ic_scene, null);
    var rectF:RectF
    var path = Path()
    private var mPositionX:Float  = 0f
    private var mPositionY:Float  = 0f
    private var refX:Float  = 0f
    private var refY:Float  = 0f
  //  private  var mScaleDetector:ScaleGestureDetector
    private var mGestureListener:GestureDetector? = null
    var  mScaleFactor = 1f




    private val scaleGestureDetector by lazy {
        ScaleGestureDetector(context, object : ScaleGestureDetector.OnScaleGestureListener {
            var totalScale = 1f

            override fun onScaleBegin(detector: ScaleGestureDetector): Boolean {

                    val actualPivot = PointF(
                        (detector.focusX - translationX + pivotX * (totalScale - 1)) / totalScale,
                        (detector.focusY - translationY + pivotY * (totalScale - 1)) / totalScale,
                    )

                    translationX -= (pivotX - actualPivot.x) * (totalScale - 1)
                    translationY -= (pivotY - actualPivot.y) * (totalScale - 1)
            //    pivotY = point.y

                return true
            }

            override fun onScale(detector: ScaleGestureDetector): Boolean {
                totalScale *= detector.scaleFactor
                totalScale = totalScale.coerceIn(MIN_SCALE_FACTOR, MAX_SCALE_FACTOR)
//                player_view.run {
//                    scale(totalScale)
//                    getContentViewTranslation().run {
//                        translationX += x
//                        translationY += y
//                    }
//                }
                return true
            }

            override fun onScaleEnd(detector: ScaleGestureDetector) = Unit
        })
    }


    private val mCurrentViewport = RectF(x, y, mMyVectorDrawable!!.intrinsicWidth / 2f ,  mMyVectorDrawable.intrinsicHeight / 2f)

    private val mContentRect: Rect? = null

    private inner class  GestureListener : GestureDetector.SimpleOnGestureListener(){
        override fun onScroll(e1: MotionEvent?, e2: MotionEvent?, distanceX: Float, distanceY: Float): Boolean {
            mContentRect?.apply {
                // Pixel offset is the offset in screen pixels, while viewport offset is the
                // offset within the current viewport.
                val viewportOffsetX = distanceX * mCurrentViewport.width() / width
                val viewportOffsetY = -distanceY * mCurrentViewport.height() / height

                // Updates the viewport, refreshes the display.
                setViewportBottomLeft(
                    mCurrentViewport.left + viewportOffsetX,
                    mCurrentViewport.bottom + viewportOffsetY
                )
            }
            return true
        }
        private fun setViewportBottomLeft(x: Float, y: Float) {
            /*
             * Constrains within the scroll range. The scroll range is simply the viewport
             * extremes (AXIS_X_MAX, etc.) minus the viewport size. For example, if the
             * extremes were 0 and 10, and the viewport size was 2, the scroll range would
             * be 0 to 8.
             */
            val curWidth: Float = mCurrentViewport.width()
            val curHeight: Float = mCurrentViewport.height()
            mScaleFactor = Math.max(0.5f, Math.min(mScaleFactor, 3.0f))


            val newX: Float = Math.max(0f, Math.min(x, 1000f - curWidth))
            val newY: Float = Math.max(0f + curHeight, Math.min(y, 1000f))

            mCurrentViewport.set(newX, newY - curHeight, newX + curWidth, newY)

            // Invalidates the View to update the display.
            // ViewCompat.postInvalidateOnAnimation(this)
        }
    }

    init {
        rectF = RectF()
      //  mScaleDetector = ScaleGestureDetector(context,ScaleListener())
      //  mGestureListener = GestureDetector(context,GestureListener())

    }

    private fun drawBitMap(canvas: Canvas){
        canvas.save()
        //  canvas.translate(mPositionX,mPositionY)
        canvas.scale(mScaleFactor,mScaleFactor)





            //mMyVectorDrawable?.draw(canvas)


        canvas.drawCircle(1006.46f , 1219.84f,10f,paintSvg)
        // 1-ая ложа 3-го яруса
        canvas.drawCircle( 100.535f , 1219.84f,6f,paintSvg)
        canvas.drawCircle(  100.535f, 1186.37f,6f,paintSvg)
        canvas.drawCircle(  100.535f, 1152.9f,6f,paintSvg)
        // 2-ая ложа 3-го яруса
        canvas.drawCircle( 100.535f, 1119.43f,6f,paintSvg)
        canvas.drawCircle(  100.535f, 1085.96f,6f,paintSvg)
        canvas.drawCircle( 100.535f, 1052.49f,6f,paintSvg)
        // 3-ья ложа 3-го яруса
        canvas.drawCircle(  100.535f, 1019.02f,6f,paintSvg)
        canvas.drawCircle(     100.535f, 985.548f,6f,paintSvg)
        canvas.drawCircle(    100.535f, 952.077f,6f,paintSvg)
        // 4-ая ложа 3-го яруса
        canvas.drawCircle(    101.855f, 918.338f,6f,paintSvg)
        canvas.drawCircle(    103.664f, 884.451f,6f,paintSvg)
        canvas.drawCircle(106.691f, 851.601f,6f,paintSvg)
        canvas.restore()



    }

    @SuppressLint("ClickableViewAccessibility")
    override fun onTouchEvent(event: MotionEvent?): Boolean {
     //   mScaleDetector.onTouchEvent(event)
        scaleGestureDetector.onTouchEvent(event)
     //   mGestureListener?.onTouchEvent(event)
         var prevX = 0f
         var prevY = 0f
         var moveStarted = false
            if (event == null) return false

            when (event.actionMasked) {
                MotionEvent.ACTION_DOWN -> {
                    prevX = event.x
                    prevY = event.y
                }

                MotionEvent.ACTION_POINTER_UP -> {
                    if (event.actionIndex == 0) {
                        try {
                            prevX = event.getX(1)
                            prevY = event.getY(1)
                        } catch (e: Exception) {
                        }
                    }
                }

                MotionEvent.ACTION_MOVE -> {
                    if (event.pointerCount > 1) {
                        prevX = event.x
                        prevY = event.y
                        return false
                    }
//                    moveStarted = true
//                    player_view?.run {
//                        translationX += (event.x - prevX)
//                        translationY += (event.y - prevY)
//                    }
                    prevX = event.x
                    prevY = event.y
                }

//                MotionEvent.ACTION_UP -> {
//                    if (!moveStarted) return false
//                    reset()
//                    translateToOriginalRect()
//                }
            }
            return true
        }



    override fun onDraw(canvas: Canvas) {
        drawBitMap(canvas)
    }


//    override fun onMeasure(widthMeasureSpec: Int, heightMeasureSpec: Int) {
//        val minWidth = suggestedMinimumWidth + paddingLeft + paddingRight
//        val minHeight = suggestedMinimumHeight + paddingTop + paddingBottom
//
//
//        val desiredWidthVector = TypedValue.applyDimension(TypedValue.COMPLEX_UNIT_DIP, svg.documentWidth ,
//            resources.displayMetrics).toInt()
//        val desiredHeightVector = TypedValue.applyDimension(TypedValue.COMPLEX_UNIT_DIP, svg.documentHeight,
//            resources.displayMetrics).toInt()
//
//        val desiredWith = max(minWidth, desiredWidthVector   + paddingLeft + paddingRight)
//        val desiredHeight = max(minHeight, desiredHeightVector   + paddingTop + paddingBottom)
//
//
//        setMeasuredDimension(
//            resolveSize(desiredWith, widthMeasureSpec),
//            resolveSize(desiredHeight, heightMeasureSpec)
//        )
//    }

    override fun onSizeChanged(w: Int, h: Int, oldw: Int, oldh: Int) {
        super.onSizeChanged(w, h, oldw, oldh)
        val safeWidth = w - paddingLeft - paddingRight
        val safeHeight = h - paddingTop - paddingBottom

        val wi = width * 1f - paddingLeft - paddingRight
        val he = height * 1f - - paddingTop - paddingBottom
        val paddingLeft= (width - wi) / 2
        val paddingTop = (height - he) / 2

        rectF.right =   rectF.left +(mMyVectorDrawable!!.intrinsicWidth / 2f)
        rectF.bottom =  rectF.top +   (mMyVectorDrawable.intrinsicHeight / 2f)
        mMyVectorDrawable.setBounds(paddingLeft.toInt() , paddingTop.toInt() ,    measuredWidth   ,   measuredHeight );

        Log.d("onSizeChanged",rectF.left.toString())
        Log.d("onSizeChanged",rectF.top.toString())
        Log.d("onSizeChanged",rectF.right.toString())
        Log.d("onSizeChanged",safeWidth.toString())
    }

    override fun onMeasure(widthMeasureSpec: Int, heightMeasureSpec: Int) {

        val requestedWidth = MeasureSpec.getSize(widthMeasureSpec)
        val requestedWidthMode = MeasureSpec.getMode(widthMeasureSpec)

        val requestedHeight = MeasureSpec.getSize(heightMeasureSpec)
        val requestedHeightMode = MeasureSpec.getMode(heightMeasureSpec)

        rectF.right =   rectF.left +  (mMyVectorDrawable!!.intrinsicWidth / 2f)
        rectF.bottom =  rectF.top +   (mMyVectorDrawable.intrinsicHeight / 2f)

        val desiredWidth: Int =  (mMyVectorDrawable.intrinsicWidth / 2)
        val desiredHeight: Int = (mMyVectorDrawable.intrinsicHeight / 2)

        val width = when (requestedWidthMode) {
            MeasureSpec.EXACTLY -> requestedWidth
            MeasureSpec.UNSPECIFIED -> desiredWidth
            else -> Math.min(requestedWidth, desiredWidth)
        }

        val height = when (requestedHeightMode) {
            MeasureSpec.EXACTLY -> requestedHeight
            MeasureSpec.UNSPECIFIED -> desiredHeight
            else -> Math.min(requestedHeight, desiredHeight)
        }

        setMeasuredDimension(width, height)
    }
    companion object {
        private const val MAX_SCALE_FACTOR = 5f
        private const val MIN_SCALE_FACTOR = 1f
        private const val CORRECT_LOCATION_ANIMATION_DURATION = 300L
    }
}


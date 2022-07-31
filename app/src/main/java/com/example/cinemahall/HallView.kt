package com.example.cinemahall

import android.annotation.SuppressLint
import android.content.Context
import android.graphics.*
import android.util.AttributeSet
import android.util.DisplayMetrics
import android.util.Log
import android.util.TypedValue
import android.view.GestureDetector
import android.view.MotionEvent
import android.view.ScaleGestureDetector
import android.view.View
import android.widget.ImageView
import androidx.vectordrawable.graphics.drawable.VectorDrawableCompat


class HallView @JvmOverloads constructor(context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0) : View(context, attrs, defStyleAttr) {

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
    private  var mScaleDetector:ScaleGestureDetector
    private var mGestureListener:GestureDetector? = null
     var  mScaleFactor = 1f




    private inner class ScaleListener : ScaleGestureDetector.SimpleOnScaleGestureListener(){
        override fun onScale(detector: ScaleGestureDetector): Boolean {
            mScaleFactor *= detector.scaleFactor
            mScaleFactor = Math.max(0.5f, Math.min(mScaleFactor, 3.0f))
               invalidate()
            return true
        }
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
     mScaleDetector = ScaleGestureDetector(context,ScaleListener())
     mGestureListener = GestureDetector(context,GestureListener())



 }

    private fun drawBitMap(canvas: Canvas){
        canvas.save()
      //  canvas.translate(mPositionX,mPositionY)
        canvas.scale(mScaleFactor, mScaleFactor)

        mMyVectorDrawable?.draw(canvas)

        canvas.drawCircle(100f.toDp() , 100f.toDp(),10f,paintSvg)
        canvas.drawCircle(100f , 100f,10f,paintSvg)
        canvas.drawCircle(10f.toDp() , 10f.toDp(),10f,paintSvg)
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

        // Справа (8 - 14 ложи)
        // 1-ая ложа 3-го яруса
        canvas.drawCircle(    1806.46f, 1219.84f,6f,paintSvg)
        canvas.drawCircle(    1806.46f, 1186.37f,6f,paintSvg)
        canvas.drawCircle(1806.46f, 1152.9f,6f,paintSvg)

        canvas.restore()




    }

    @SuppressLint("ClickableViewAccessibility")
    override fun onTouchEvent(event: MotionEvent?): Boolean {
        mScaleDetector.onTouchEvent(event)
        mGestureListener?.onTouchEvent(event)
                 when(event?.action){
             MotionEvent.ACTION_DOWN -> {
                 refX = event.x
                 refY = event.y
             }
             MotionEvent.ACTION_MOVE -> {
                 val nX = event.x
                 val nY = event.y

                 mPositionX += nX - refX
                 mPositionY += nY - refY

                 refX = nX
                 refY = nY
                 invalidate()
             }
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

        val newWight = mMyVectorDrawable!!.intrinsicWidth / 2
        val newHeight = mMyVectorDrawable.intrinsicHeight / 2



        val n1 = 100.535.toInt()
        val n2= 0
        val n3 =  1806.46.toInt()
        val n4 = n2 + newHeight / 2


        rectF.right =   rectF.left +(mMyVectorDrawable.intrinsicWidth / 2f)
        rectF.bottom =  rectF.top +   (mMyVectorDrawable.intrinsicHeight / 2f)

        mMyVectorDrawable.setBounds(n1 ,
            n2 ,   n3 , n4)


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
    fun Number.toDp() =  TypedValue.applyDimension(TypedValue.COMPLEX_UNIT_DIP, this.toFloat(),
        resources.displayMetrics).toFloat()


}


package com.example.cinemahall

import android.annotation.SuppressLint
import android.content.Context
import android.graphics.*
import android.util.AttributeSet
import android.util.Log
import android.view.GestureDetector
import android.view.GestureDetector.SimpleOnGestureListener
import android.view.MotionEvent
import android.view.ScaleGestureDetector
import android.view.ScaleGestureDetector.SimpleOnScaleGestureListener
import android.view.View
import androidx.vectordrawable.graphics.drawable.VectorDrawableCompat


class HallView @JvmOverloads constructor(context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0) : View(context, attrs, defStyleAttr) {

    var paintSvg = Paint(Paint.ANTI_ALIAS_FLAG).apply {
        color = Color.RED
    }

    val bitmap = BitmapFactory.decodeResource(resources,R.drawable.scene)

   val  mMyVectorDrawable = VectorDrawableCompat.create(resources, R.drawable.ic_scene, null);
     var rectF:RectF
      var path = Path()
    private var mPositionX:Float  = 0f
    private var mPositionY:Float  = 0f
    private var refX:Float  = 0f
    private var refY:Float  = 0f

    var scaleFactorStart = 0f
    private var mScaleDetector: ScaleGestureDetector? = null
    private var mGestureDetector: GestureDetector? = null

    private var detector: GestureDetector? = null

    var scaleFactor = 0f

    var mSaveScale = 1f
    var mMinScale = 1f
    var mMaxScale = 4f

    var mode = Hall.NONE




    private val mCurrentViewport = RectF(x, y, mMyVectorDrawable!!.intrinsicWidth / 2f ,  mMyVectorDrawable.intrinsicHeight / 2f)

    private val mContentRect: Rect? = null

    private var mScaleFactor = 1f
    private var scaleGestureDetector: ScaleGestureDetector? = null
    private var viewSize:Int
    private var viewSize1:Float
    private var canvasSize:Int

 init {
     rectF = RectF()
    viewSize = width
     viewSize1 = width.toFloat()
     canvasSize = viewSize * mScaleFactor.toInt()

     val ca = viewSize1 * mScaleFactor
     Log.d("INIT", bitmap.width.toString())
  //   mScaleDetector = ScaleGestureDetector(context,ScaleListener())
   //  mGestureDetector = GestureDetector(context,GestureListener())



     scaleGestureDetector =  ScaleGestureDetector(context,  MyScaleGestureListener())
     detector = GestureDetector(context, MyGestureListener())


 }

    private inner class MyScaleGestureListener : SimpleOnScaleGestureListener() {
        //обрабатываем "щипок" пальцами
        override fun onScale(scaleGestureDetector: ScaleGestureDetector): Boolean {
            val scaleFactor =
                scaleGestureDetector.scaleFactor //получаем значение зума относительно предыдущего состояния
            //получаем координаты фокальной точки - точки между пальцами

             val aspectRatio = width.toFloat() / bitmap.width.toFloat()

             val newHeight = (bitmap.height / 2 * aspectRatio).toInt()

            val focusX = scaleGestureDetector.focusX
            val focusY = scaleGestureDetector.focusY
            //следим чтобы канвас не уменьшили меньше исходного размера и не допускаем увеличения больше чем в 2 раза
            if (mScaleFactor * scaleFactor > 1 && mScaleFactor * scaleFactor < 2) {
                mScaleFactor *= scaleGestureDetector.scaleFactor
                canvasSize = (newHeight * mScaleFactor).toInt()//изменяем хранимое в памяти значение размера канваса
                //используется при расчетах
                //по умолчанию после зума канвас отскролит в левый верхний угол.
                //Скролим канвас так, чтобы на экране оставалась
                //область канваса, над которой был жест зума
                //Для получения данной формулы достаточно школьных знаний математики (декартовы координаты).
                var scrollX = ((getScrollX() + focusX) * scaleFactor - focusX).toInt()
                scrollX = Math.min(Math.max(scrollX, 0), canvasSize - newHeight)
                var scrollY = ((getScrollY() + focusY) * scaleFactor - focusY).toInt()
                scrollY = Math.min(Math.max(scrollY, 0), canvasSize  - newHeight)
                scrollTo(scrollX, scrollY)
            }
            //вызываем перерисовку принудительно
            invalidate()
            return true
        }
    }
    private  inner class MyGestureListener : SimpleOnGestureListener() {
        //обрабатываем скролл (перемещение пальца по экрану)
        override fun onScroll(
            e1: MotionEvent,
            e2: MotionEvent,
            distanceX: Float,
            distanceY: Float
        ): Boolean {
            //не даем канвасу показать края по горизонтали
            if (scrollX + distanceX < canvasSize - viewSize && scrollX + distanceX > 0) {
                scrollBy(distanceX.toInt(), 0)
            }
            //не даем канвасу показать края по вертикали
            if (scrollY + distanceY < canvasSize - viewSize && scrollY + distanceY > 0) {
                scrollBy(0, distanceY.toInt())
            }
            invalidate()
            return true
        }

        //обрабатываем одиночный тап
        override fun onSingleTapConfirmed(event: MotionEvent): Boolean {
            //получаем координаты ячейки, по которой тапнули
            val cellX: Int = ((event.x + scrollX) / mScaleFactor).toInt()
            val cellY: Int = ((event.y + scrollY) / mScaleFactor).toInt()
            return true
        }

        //обрабатываем двойной тап
        override fun onDoubleTapEvent(event: MotionEvent): Boolean {
            //зумируем канвас к первоначальному виду
            mScaleFactor = 1f
            canvasSize = viewSize
            scrollTo(0, 0) //скролим, чтобы не было видно краев канваса.
            invalidate() //перерисовываем канвас
            return true
        }
    }

    @SuppressLint("ClickableViewAccessibility")
    override fun onTouchEvent(event: MotionEvent?): Boolean {
        detector?.onTouchEvent(event)
        scaleGestureDetector!!.onTouchEvent(event)
        return true;
    }



    override fun onDraw(canvas: Canvas) {

        val aspectRatio = width.toFloat() / bitmap.width.toFloat()
        canvas.save()
        canvas.scale(mScaleFactor, mScaleFactor);//зумируем канвас
       mMyVectorDrawable?.draw(canvas)
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

        val aspectRatio = width.toFloat() / bitmap.width.toFloat()

        val newHeight = bitmap.height * aspectRatio

        val n1 = x.toInt()
        val n2= y.toInt()
        val n3 =  w.toFloat().toInt()
        val n4 = n2 + newHeight.toInt()


        mMyVectorDrawable?.setBounds(n1,n2,n3,n4)

//
//        rectF.left = n1
//            rectF.top =  n2
//        rectF.right =   n3
//        rectF.bottom =  n4

    }





//    override fun onMeasure(widthMeasureSpec: Int, heightMeasureSpec: Int) {
//
//        val requestedWidth = MeasureSpec.getSize(widthMeasureSpec)
//        val requestedWidthMode = MeasureSpec.getMode(widthMeasureSpec)
//
//        val requestedHeight = MeasureSpec.getSize(heightMeasureSpec)
//        val requestedHeightMode = MeasureSpec.getMode(heightMeasureSpec)
//
//        rectF.right =   rectF.left +  (mMyVectorDrawable!!.intrinsicWidth / 2f)
//        rectF.bottom =  rectF.top +   (mMyVectorDrawable.intrinsicHeight / 2f)
//
//        val desiredWidth: Int =  (mMyVectorDrawable.intrinsicWidth / 2)
//        val desiredHeight: Int = (mMyVectorDrawable.intrinsicHeight / 2)
//
//        val width = when (requestedWidthMode) {
//            MeasureSpec.EXACTLY -> requestedWidth
//            MeasureSpec.UNSPECIFIED -> desiredWidth
//            else -> Math.min(requestedWidth, desiredWidth)
//        }
//
//        val height = when (requestedHeightMode) {
//            MeasureSpec.EXACTLY -> requestedHeight
//            MeasureSpec.UNSPECIFIED -> desiredHeight
//            else -> Math.min(requestedHeight, desiredHeight)
//        }
//
//        setMeasuredDimension(width, height)
//    }
//    fun Number.toDp() =  TypedValue.applyDimension(TypedValue.COMPLEX_UNIT_DIP, this.toFloat(),
//        resources.displayMetrics).toFloat()
//

}


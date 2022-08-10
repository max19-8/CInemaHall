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
import java.lang.Integer.max


class HallView @JvmOverloads constructor(context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0) : View(context, attrs, defStyleAttr) {

    private  var paintSvg = Paint(Paint.ANTI_ALIAS_FLAG).apply {
    }

    private  var paintBitmap = Paint(Paint.ANTI_ALIAS_FLAG).apply {
    }

    private val bitmap = BitmapFactory.decodeResource(resources,R.drawable.scene)

    private    var rectF:RectF = RectF()

    private var mScaleFactor = 1f

    private var detector: GestureDetector? = null
    private var scaleGestureDetector: ScaleGestureDetector? = null

    private var canvasSizeHorizontal:Int
    private var canvasSizeVertical:Int

    private val placeRadius = 10f

    var placeToColorMapper = PlaceToColorMapper()

    var cinemaHallMatrix: List<MutableList<Place>> = ArrayList()
        set(value) {
            field = value
            invalidate()
        }

     var onPlaceClick:OnPlaceClick? = null

    init {
        canvasSizeHorizontal = width * mScaleFactor.toInt()
        canvasSizeVertical = height * mScaleFactor.toInt()
        scaleGestureDetector =  ScaleGestureDetector(context,  MyScaleGestureListener())
        detector = GestureDetector(context, MyGestureListener())
    }



    @SuppressLint("ClickableViewAccessibility")
    override fun onTouchEvent(event: MotionEvent?): Boolean {
        detector?.onTouchEvent(event)
        scaleGestureDetector!!.onTouchEvent(event)
        return true;
    }



    override fun onDraw(canvas: Canvas) {
        canvas.drawColor(Color.BLACK)
        val aspectRatio = width.toFloat() / bitmap.width.toFloat()
        val newHeight = bitmap.height * aspectRatio
        val heightDifference = newHeight - height / 2

        canvas.save()
        canvas.scale(mScaleFactor, mScaleFactor);//зумируем канвас
        canvas.drawBitmap(bitmap,null,rectF,paintBitmap)
        drawPlace(canvas,aspectRatio,paintSvg,heightDifference)
        canvas.restore()
    }

    override fun onMeasure(widthMeasureSpec: Int, heightMeasureSpec: Int) {

        val minWidth = suggestedMinimumWidth + paddingLeft + paddingRight
        val minHeight = suggestedMinimumHeight + paddingTop + paddingBottom

        val aspectRatio = width.toFloat() / bitmap.width
        val newHeight = (bitmap.height * aspectRatio).toInt()

        val desiredWith = max(minWidth, width + paddingLeft + paddingRight)
        val desiredHeight = max(minHeight, newHeight + paddingTop + paddingBottom)

        setMeasuredDimension(
            resolveSize(desiredWith, widthMeasureSpec),
            resolveSize(desiredHeight, heightMeasureSpec)
        )
    }


    override fun onSizeChanged(w: Int, h: Int, oldw: Int, oldh: Int) {
        super.onSizeChanged(w, h, oldw, oldh)

        val aspectRatio = w.toFloat() / bitmap.width

        val newHeight = bitmap.height * aspectRatio

        rectF.left = x
        rectF.top = newHeight - height / 2
        rectF.right = w.toFloat()
        rectF.bottom = rectF.top + newHeight

    }

    private  fun drawPlace(canvas: Canvas,ratio:Float,paint: Paint,
                           heightDifference:Float){
        cinemaHallMatrix.forEach { list->
            list.forEach {  place ->
                paint.color = placeToColorMapper.typeToColor(place.id?.placeType)
                canvas.drawCircle(place.x * ratio, place.y * ratio + heightDifference, placeRadius,paint)
            }
        }
    }


    fun setOnClick(onClick:OnPlaceClick){
        this.onPlaceClick = onClick
    }

    private  inner class MyGestureListener : SimpleOnGestureListener() {
        //обрабатываем скролл
        override fun onScroll(
            e1: MotionEvent,
            e2: MotionEvent,
            distanceX: Float,
            distanceY: Float
        ): Boolean {
            //не даем канвасу показать края по горизонтали /// width или bitmap.width * aspectRatio???
            if (scrollX + distanceX < canvasSizeHorizontal - width && scrollX + distanceX > 0) {
                scrollBy(distanceX.toInt(), 0)
            }
            //не даем канвасу показать края по вертикали /// height или bitmap.height * aspectRatio???
            if (scrollY + distanceY < canvasSizeVertical - height && scrollY + distanceY > 0) {
                scrollBy(0, distanceY.toInt())
            }
            invalidate()
            return true
        }

        //обрабатываем одиночный тап
        override fun onSingleTapConfirmed(event: MotionEvent): Boolean {
            //получаем координаты ячейки, по которой тапнули
            val aspectRatio = width.toFloat() / bitmap.width.toFloat()
            val newHeight = bitmap.height * aspectRatio
            val heightDifference = newHeight - height / 2
            val cellX = ((event.x + scrollX) / mScaleFactor)
            val cellY = ((event.y + scrollY) / mScaleFactor)
            onPlaceClick?.click(cellX,cellY,aspectRatio,heightDifference,placeRadius)
            invalidate()
            return true
        }

        //обрабатываем двойной тап
        override fun onDoubleTapEvent(event: MotionEvent): Boolean {
            //зумируем канвас к первоначальному виду
            mScaleFactor = 1f
            canvasSizeHorizontal = width
            canvasSizeVertical = height
            scrollTo(0, 0) //скролим, чтобы не было видно краев канваса.
            invalidate() //перерисовываем канвас
            return true
        }
    }


    private inner class MyScaleGestureListener : SimpleOnScaleGestureListener() {
        override fun onScale(scaleGestureDetector: ScaleGestureDetector): Boolean {
            val scaleFactor =
                scaleGestureDetector.scaleFactor
            //получаем координаты  точки между пальцами
            val focusX = scaleGestureDetector.focusX
            val focusY = scaleGestureDetector.focusY
            //следим чтобы канвас не уменьшили меньше исходного размера и не допускаем увеличения больше чем в 2 раза
            if (mScaleFactor * scaleFactor > 1 && mScaleFactor * scaleFactor < 6) {
                mScaleFactor *= scaleGestureDetector.scaleFactor
                canvasSizeHorizontal = (width * mScaleFactor).toInt()//изменяем хранимое в памяти значение размера канваса
                canvasSizeVertical = (height * mScaleFactor).toInt()//изменяем хранимое в памяти значение размера канваса
                //используется при расчетах
                //по умолчанию после зума канвас отскролит в левый верхний угол.
                //Скролим канвас так, чтобы на экране оставалась область канваса, над которой был жест зума
                var scrollX = ((getScrollX() + focusX) * scaleFactor - focusX).toInt()
                scrollX = Math.min(Math.max(scrollX, 0), canvasSizeHorizontal - width)
                var scrollY = ((getScrollY() + focusY) * scaleFactor - focusY).toInt()
                scrollY = Math.min(Math.max(scrollY, 0), canvasSizeVertical - height )
                scrollTo(scrollX, scrollY)
            }
            invalidate()
            return true
        }
    }
}
package com.example.cinemahall

import android.content.Context
import android.graphics.*
import android.graphics.drawable.Drawable
import android.os.Build
import android.util.AttributeSet
import android.util.Log
import android.util.TypedValue
import android.view.View
import androidx.core.graphics.transform
import androidx.vectordrawable.graphics.drawable.VectorDrawableCompat
import com.caverock.androidsvg.SVG
import java.lang.Math.max


class HallView @JvmOverloads constructor(
    context: Context,
    attrs: AttributeSet? = null,
    defStyleAttr: Int = 0
) : View(context, attrs, defStyleAttr) {

    lateinit var  rect:RectF
    var paintSvg = Paint(Paint.ANTI_ALIAS_FLAG).apply {
        color = Color.RED
    }

    val point = Point(1000,1000)

    var metrics = context.resources.displayMetrics
    var width1 = metrics.widthPixels
    var height1 = metrics.heightPixels
    val matrx = Matrix()

   val  mMyVectorDrawable = VectorDrawableCompat.create(resources, R.drawable.ic_scene, null);
   val  bitmap = BitmapFactory.decodeResource(resources,R.drawable.ic_scene)
    var  icon :Bitmap? = null
    private  var drawable: Drawable? = null
    private  var canvas1: Canvas? = null
     var  svg:SVG

      lateinit var rectF:RectF
      var path = Path()

 init {

     rectF = RectF()
     svg = SVG.getFromResource(context,R.raw.scene)


 }


    override fun onDraw(canvas: Canvas) {
        canvas.drawPicture(svg.renderToPicture(), rectF)
        canvas.drawCircle(1006.46f, 1219.84f,10f,paintSvg)
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
        rectF.left = x
        rectF.top =  y
        rectF.right =   rectF.left +  (svg.documentWidth/2)
        rectF.bottom =  rectF.top +  (svg.documentHeight / 2)
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

        val desiredWidth: Int = ( svg.documentWidth ).toInt()
        val desiredHeight: Int = ( svg.documentHeight ).toInt()

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
}
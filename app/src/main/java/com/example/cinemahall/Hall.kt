package com.example.cinemahall

import android.content.Context
import android.graphics.*
import android.graphics.drawable.BitmapDrawable
import android.graphics.drawable.Drawable
import android.media.ThumbnailUtils
import android.util.AttributeSet
import android.util.Log
import android.util.TypedValue
import android.view.View
import androidx.vectordrawable.graphics.drawable.VectorDrawableCompat
import coil.ImageLoader
import coil.request.ImageRequest
import coil.request.SuccessResult
import coil.transform.CircleCropTransformation
import com.caverock.androidsvg.SVG
import kotlinx.coroutines.*
import kotlin.math.min


class Hall @JvmOverloads constructor(context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0) : View(context, attrs, defStyleAttr) {

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
    var  mScaleFactor = 1f




    val svg = SVG.getFromResource(resources, R.raw.scene)


     lateinit var r:Drawable




    private val mCurrentViewport = RectF(x, y, mMyVectorDrawable!!.intrinsicWidth / 2f ,  mMyVectorDrawable.intrinsicHeight / 2f)

    private val mContentRect: Rect? = null

    val  mImageView = BitmapFactory.decodeResource(resources, R.drawable.ic_scene)


    lateinit var  myBitmap:Bitmap

    init {


        rectF = RectF()

        GlobalScope.launch{
            val loader = ImageLoader(context)
            val request = ImageRequest.Builder(context)
                .data(R.drawable.ic_scene)
                .allowHardware(false) // Disable hardware bitmaps.
                 .transformations(CircleCropTransformation())
                .build()

            val result = (loader.execute(request) as SuccessResult).drawable
            val bitmap = (result as BitmapDrawable).bitmap
            myBitmap = bitmap
        }
        }






    private fun drawBitMap(canvas: Canvas){
        canvas.save()
        //  canvas.translate(mPositionX,mPositionY)
      //  canvas.scale(mScaleFactor, mScaleFactor)

    //    canvas.drawBitmap(r,0f,0f,paintSvg)

    //    mMyVectorDrawable?.draw(canvas)

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





    override fun onDraw(canvas: Canvas) {




       canvas.drawBitmap( drawableToBitmap(mMyVectorDrawable!!.current)!!
           ,0f,0f,paintSvg)










    //     canvas.drawBitmap(ret!! ,0f,0f,paintSvg)


       // drawBitMap(canvas)
       // svg.renderToCanvas(canvas)




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

    fun drawableToBitmap(drawable: Drawable): Bitmap? {
        if (drawable is BitmapDrawable) {
            return drawable.bitmap
        }

        // We ask for the bounds if they have been set as they would be most
        // correct, then we check we are  > 0
        val width =
            if (!drawable.bounds.isEmpty) drawable.bounds.width() else drawable.intrinsicWidth
        val height =
            if (!drawable.bounds.isEmpty) drawable.bounds.height() else drawable.intrinsicHeight

        // Now we check we are > 0
        val bitmap = Bitmap.createBitmap(
            if (width <= 0) 1 else width, if (height <= 0) 1 else height,
            Bitmap.Config.ARGB_8888
        )
        val canvas = Canvas(bitmap)
        drawable.setBounds(0, 0, canvas.width, canvas.height)
        drawable.draw(canvas)
        return bitmap
    }

    fun cropCenter(bmp: Bitmap): Bitmap? {
        val dimension = Math.min(bmp.width, bmp.height)
       return  ThumbnailUtils.extractThumbnail(bmp, dimension, dimension, ThumbnailUtils.OPTIONS_RECYCLE_INPUT);
    }



    override fun onSizeChanged(w: Int, h: Int, oldw: Int, oldh: Int) {
        super.onSizeChanged(w, h, oldw, oldh)
        val safeWidth = w - paddingLeft - paddingRight
        val safeHeight = h - paddingTop - paddingBottom

        val newWight = mMyVectorDrawable!!.intrinsicWidth / 2
        val newHeight = mMyVectorDrawable.intrinsicHeight / 2

        val resWidth = min(w,newWight)

        var ratio = (resWidth/ h.toFloat())

//        Glide.with(this)
//            .asBitmap()
//            .load(R.drawable.ic_scene)
//            .centerCrop()
//
//            .into(object : CustomTarget<Bitmap>(){
//
//                override fun onLoadCleared(placeholder: Drawable?) = Unit
//
//                override fun onResourceReady(resource: Bitmap, transition: Transition<in Bitmap>?) {
//                    var  mainHandler =  Handler(context.getMainLooper())
//
//                 var  myRunnable  =  Runnable {
//                            r = resource
//                        } ;// Your code goes inside the run method
//
//                    mainHandler.post(myRunnable);
//
//
//                }
//
//            })

        val paint = Paint(Paint.ANTI_ALIAS_FLAG or Paint.FILTER_BITMAP_FLAG)

        val minSize = min( mMyVectorDrawable.intrinsicWidth,  mMyVectorDrawable.intrinsicHeight)
        val radius = minSize / 2f





//        val newWidth = minSize
//        output.applyCanvas {
//            drawCircle(radius, radius, radius, paint)
//            paint.xfermode = PorterDuffXfermode(PorterDuff.Mode.SRC_IN)
//            drawBitmap(, paint)
//        }





        Log.e("onSizeChanged ", svg.documentHeight.toString())
        Log.e("onSizeChanged ", svg.documentWidth.toString())
        Log.e("onSizeChanged ", resWidth.toString())
        Log.e("onSizeChanged ", ratio.toString())


//        val resWidth = min(w.toFloat(), svg.documentWidth)
//
//        val ratio = (resWidth/ h.toFloat())
//
//        svg.documentHeight = h.toFloat()* ratio
//        svg.documentWidth = w.toFloat() * ratio
//
//        Log.e("onSizeChanged ", svg.documentHeight.toString())
//        Log.e("onSizeChanged ", svg.documentWidth.toString())
//        Log.e("onSizeChanged ", resWidth.toString())
//        Log.e("onSizeChanged ", ratio.toString())
//        Log.e("onSizeChanged ", svg.documentAspectRatio.toString())

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
    fun Number.toDp() =  TypedValue.applyDimension(TypedValue.COMPLEX_UNIT_DIP, this.toFloat(),
        resources.displayMetrics).toFloat()

    fun newBit() = CoroutineScope(Dispatchers.Default).async{





        }






}

fun drawableToBitmap(drawable: Drawable): Bitmap? {
    if (drawable is BitmapDrawable) {
        return drawable.bitmap
    }
    var width = drawable.intrinsicWidth
    width = if (width > 0) width else 1
    var height = drawable.intrinsicHeight
    height = if (height > 0) height else 1
    val bitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888)
    val canvas = Canvas(bitmap)
    drawable.setBounds(0, 0, canvas.width, canvas.height)
    drawable.draw(canvas)
    return bitmap
}




package com.example.cinemahall

import android.graphics.BitmapFactory
import android.graphics.drawable.BitmapDrawable
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.ImageView
import coil.ImageLoader
import coil.imageLoader
import coil.request.ImageRequest
import coil.request.SuccessResult
import coil.transform.CircleCropTransformation
import com.bumptech.glide.Glide
import kotlinx.coroutines.GlobalScope
import kotlinx.coroutines.launch

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

//        val image = findViewById<ImageView>(R.id.newIage)
//        val loader = ImageLoader(this)
//        val req = ImageRequest.Builder(this)
//            .data(R.drawable.ic_scene) // demo link
//            .target { result ->
//                val bitmap = (result as BitmapDrawable).bitmap
//                image.setImageBitmap(bitmap)
//            }
//            . transformations(CircleCropTransformation())
//            .build()
//
//        val disposable = loader.enqueue(req)

//     GlobalScope.launch{
//            val loader = ImageLoader(this@MainActivity)
//            val request = ImageRequest.Builder(this@MainActivity)
//                .data(R.drawable.ic_scene)
//                .allowHardware(false) // Disable hardware bitmaps.
//                .build()
//
//            val result = (loader.execute(request) as SuccessResult).drawable
//            val bitmap = (result as BitmapDrawable).bitmap
//         runOnUiThread {
//             image.setImageBitmap(bitmap)
//         }
//
//        }






      //  image.setImageBitmap(req)





    }
}
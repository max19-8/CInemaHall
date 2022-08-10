package com.example.cinemahall

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.util.Log
import android.widget.Toast

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        val allPlaces  = listOf(
            _benoir,
            _benoirLodge,
            _mezzanine,
            _mezzanineLodge,
            _firstTier,
            _firstTierLodge,
            _secondTier,
            _secondTierLodge,
            _thirdTier,
            _thirdTierLodge,
            _groundFloor,
            _royalLodge,
            _aLodge,
            _bLodge,
            _cLodge,
        )

        val hall = findViewById<HallView>(R.id.hall)
        hall.cinemaHallMatrix = allPlaces

        val onPlaceClick =  object:OnPlaceClick{
           override fun click(x: Float, y: Float, aspectRatio: Float, heightDifference: Float,placeRadius:Float) {
               allPlaces.forEach { list ->
                   list.forEach {
                       if (Math.abs(it.x * aspectRatio - x) < placeRadius && Math.abs(it.y* aspectRatio + heightDifference  - y) <  placeRadius) {
                           it.id?.placeType = PlaceType.other
                           Log.d("CHECK","${it.x* aspectRatio } ${it.y* aspectRatio }")
                           Log.d("CHECK","$x $y")
                           Log.d("CHECK","${Math.abs(it.x* aspectRatio  - x) <  placeRadius}")
                           Log.d("CHECK","${Math.abs(it.y* aspectRatio  - y) <  placeRadius}")
                           Log.d("CHECK","${(Math.abs(it.x* aspectRatio - x) <  placeRadius && Math.abs(it.y* aspectRatio  - y) <  placeRadius)}")
                       }
                   }
               }
           }
       }
        hall.setOnClick(onPlaceClick)
    }
}

interface OnPlaceClick{
    fun click(x:Float,y:Float,aspectRatio:Float, heightDifference:Float,placeRadius:Float)
}
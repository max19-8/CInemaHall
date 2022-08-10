package com.example.cinemahall

import android.graphics.Color

enum class PlaceType {
    benoir, benoirLodge, mezzanine, mezzanineLodge, firstTier, firstTierLodge,
    secondTier, secondTierLodge, thirdTier, thirdTierLodge, groundFloor, royalLodge, aLodge, bLodge, cLodge, other

}

class PlaceToColorMapper {
    fun typeToColor(placeType: PlaceType?): Int {
        return when (placeType) {
            PlaceType.benoir -> {
                Color.BLUE
            }
            PlaceType.benoirLodge -> {
                Color.CYAN
            }
            PlaceType.mezzanine -> {
                Color.BLUE
            }
            PlaceType.mezzanineLodge -> {
                Color.GREEN
            }
            PlaceType.firstTier -> {
                Color.WHITE
            }
            PlaceType.firstTierLodge -> {
                Color.GREEN
            }
            PlaceType.secondTier -> {
                Color.YELLOW
            }
            PlaceType.secondTierLodge -> {
                Color.BLUE
            }
            PlaceType.thirdTier -> {
                Color.YELLOW
            }
            PlaceType.thirdTierLodge -> {
                Color.MAGENTA
            }
            PlaceType.groundFloor -> {
                Color.YELLOW
            }
            PlaceType.royalLodge -> {
                Color.WHITE
            }
            PlaceType.aLodge -> {
                Color.GREEN
            }
            PlaceType.bLodge -> {
                Color.CYAN
            }
            PlaceType.cLodge -> {
                Color.BLUE
            }
            PlaceType.other ->  Color.RED
            else -> {throw IllegalArgumentException("invalid type place")}
        }
    }

}
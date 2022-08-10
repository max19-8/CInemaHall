package com.example.cinemahall

data class PlaceId(
    val position: Int,
    var placeType: PlaceType,
    var groupPosition: Int,
    var sectionId: Int?=0,
    var price: Int? = 0,
    var externalId: Int? = 0,
    var notifier: Boolean? = false,
    var isGroup: Boolean? = false,
    var count: Int = 0,
    var eventId: Int? = 0,
    var image: String? = ""
)




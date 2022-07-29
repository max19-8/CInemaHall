import 'dart:ui';

import 'package:flutter/material.dart';

enum PlaceType {
  benoir,
  benoirLodge,
  mezzanine,
  mezzanineLodge,
  firstTier,
  firstTierLodge, // 79352
  secondTier,
  secondTierLodge,
  thirdTier,
  thirdTierLodge,
  groundFloor,
  royalLodge,
  aLodge,
  bLodge,
  cLodge,
  other,
}

// Цвета временно пока, потом убрать Color get color
// color должен задаваться исходя из цены места
extension PlaceTypeExtension on PlaceType {
  Color get color {
    switch (this) {
      case PlaceType.benoir:
        return Colors.purpleAccent;
      case PlaceType.benoirLodge:
        return Colors.teal;
      case PlaceType.mezzanine:
        return Colors.brown;
      case PlaceType.mezzanineLodge:
        return Colors.red;
      case PlaceType.firstTier:
        return Colors.deepOrange;
      case PlaceType.firstTierLodge:
        return Colors.yellowAccent;
      case PlaceType.secondTier:
        return Colors.deepPurple;
      case PlaceType.secondTierLodge:
        return Colors.pink;
      case PlaceType.thirdTier:
        return Colors.lightGreen;
      case PlaceType.thirdTierLodge:
        return Colors.lightBlueAccent;
      case PlaceType.groundFloor:
        return Colors.yellowAccent;
      case PlaceType.royalLodge:
        return Colors.deepPurpleAccent;
      case PlaceType.aLodge:
        return Colors.amber;
      case PlaceType.bLodge:
        return Colors.lightGreenAccent;
      case PlaceType.cLodge:
        return Colors.indigoAccent;
      default:
        return Colors.transparent;
    }
  }

  String get name {
    switch (this) {
      case PlaceType.benoir:
        return "Бенуар"; //"benoir";
      case PlaceType.benoirLodge:
        return "Бенуар"; //"benoirLodge";
      case PlaceType.mezzanine:
        return "Бельэтаж"; //"mezzanine";
      case PlaceType.mezzanineLodge:
        return "Бельэтаж"; //"mezzanineLodge";
      case PlaceType.groundFloor:
        return "Партер"; //"groundFloor";
      case PlaceType.royalLodge:
        return "Царская ложа"; //"royalLodge";
      case PlaceType.aLodge:
        return "Ложа А"; //"aLodge";
      case PlaceType.bLodge:
        return "Ложа Б"; //"bLodge";
      case PlaceType.cLodge:
        return "Ложа В"; //"cLodge";

      case PlaceType.firstTier:
        return "1-й ярус"; //"firstTier";
      case PlaceType.firstTierLodge:
        return "1-й ярус"; //"firstTierLodge";
      case PlaceType.secondTier:
        return "2-й ярус"; //"secondTier";
      case PlaceType.secondTierLodge:
        return "2-й ярус"; //"secondTierLodge";
      case PlaceType.thirdTier:
        return "3-й ярус"; //"thirdTier";
      case PlaceType.thirdTierLodge:
        return "3-й ярус"; //"thirdTierLodge";
      default:
        return "";
    }
  }

  String get type {
    switch (this) {
      case PlaceType.benoir:
        return "ряд"; //"benoir";
      case PlaceType.benoirLodge:
        return "ложа"; //"benoirLodge";
      case PlaceType.mezzanine:
        return "ряд"; //"mezzanine";
      case PlaceType.mezzanineLodge:
        return "ложа"; //"mezzanineLodge";
      case PlaceType.groundFloor:
        return "ряд"; //"groundFloor";
      case PlaceType.royalLodge:
        return "royalLodge"; //"royalLodge";
      case PlaceType.aLodge:
        return "aLodge"; //"aLodge";
      case PlaceType.bLodge:
        return "ложа"; //"bLodge";
      case PlaceType.cLodge:
        return "cLodge"; //"cLodge";

      case PlaceType.firstTier:
        return "ряд"; //"firstTier";
      case PlaceType.firstTierLodge:
        return "ложа"; //"firstTierLodge";
      case PlaceType.secondTier:
        return "ряд"; //"secondTier";
      case PlaceType.secondTierLodge:
        return "ложа"; //"secondTierLodge";
      case PlaceType.thirdTier:
        return "ряд"; //"thirdTier";
      case PlaceType.thirdTierLodge:
        return "ложа"; //"thirdTierLodge";
      default:
        return "";
    }
  }
}

class PlaceId {
  PlaceId(
    this.position,
    this.type, {
    this.groupPosition = 0,
    this.sectionId,
    this.externalId,
    this.price,
    this.notifier,
    this.isGroup = false,
    this.placeId,
    this.count = 0,
    this.eventId,
    this.image,
  });

  final int position;
  final PlaceType type;
  final int groupPosition;
  late int? sectionId;
  late int? placeId;
  late int? price;
  late int? externalId;
  late ValueNotifier<bool>? notifier;
  late bool isGroup;
  late int count;
  late int? eventId;
  late Function? blocEvent;
  late String? image;
}

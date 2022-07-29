import 'dart:ui';

import 'PlaceId.dart';

class Place {
  final PlaceId id;
  final double x;
  final double y;

  Place(this.id, this.x, this.y);

  Rect get rect => Rect.fromCenter(center: Offset(x, y), width: 32, height: 32);
}

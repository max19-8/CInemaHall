
import 'dart:ui';

class GroupPlace {
  final int value;
  final double x;
  final double y;
  final double width;
  final double height;
  final double radius = 14.25;

  GroupPlace(this.value, this.x, this.y, this.width, this.height);

  get rect =>  Rect.fromCenter(center: Offset(x + width / 2, y + height / 2), width: width, height: height);
}
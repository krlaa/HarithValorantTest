import 'package:flutter/material.dart';

class Weapons extends StatefulWidget {
  Weapons({
    this.magazineSize,
    this.headshotDamage,
    this.bodyshotDamage,
    this.legshotDamage,
    this.wallPen,
    this.classification,
  });

  final String magazineSize;
  final String headshotDamage;
  final String bodyshotDamage;
  final String legshotDamage;
  final String wallPen;
  final String classification;

  @override
  _WeaponsState createState() => _WeaponsState();
}

class _WeaponsState extends State<Weapons> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

import 'package:diagonal/diagonal.dart';
import 'package:flutter/material.dart';

class Weapons extends StatefulWidget {
  Weapons({
    this.magazineSize,
    this.headshotDamage,
    this.bodyshotDamage,
    this.legshotDamage,
    this.wallPen,
    this.classification,
    this.weaponImage,
    this.weaponName,
  });

  final String magazineSize;
  final String headshotDamage;
  final String bodyshotDamage;
  final String legshotDamage;
  final String wallPen;
  final String classification;
  final String weaponName;
  final String weaponImage;

  @override
  _WeaponsState createState() => _WeaponsState();
}

class _WeaponsState extends State<Weapons> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        padding:EdgeInsets.only(left: 30, right: 30, bottom: 10, top: 10) ,
        margin: EdgeInsets.only(left: 50, right: 50),
        height: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
            color: Colors.grey),
          child: Row(children: [Image.asset(widget.weaponImage,scale: 6.0 ,),Padding(padding:EdgeInsets.only(left: 30, right: 30) ,), Text(widget.weaponName)],),
      ),
    );
  }
}

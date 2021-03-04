import 'dart:ui';

import 'package:diagonal/diagonal.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
    return GestureDetector(
      onTap: ()=>Get.to(ExpandedGun())
      ,
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: FittedBox(
                child: Container(
            padding:EdgeInsets.only(left: 30, right: 30, bottom: 10, top: 10) ,
            margin: EdgeInsets.only(left: 50, right: 50),
            height: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                color: Colors.black45),
              child: Row(children: [Image.asset(widget.weaponImage,scale: 6.0 ,),Padding(padding:EdgeInsets.only(left: 30, right: 30) ,), Text(widget.weaponName,style: TextStyle(color:Colors.white),)],),
          ),
        ),
      ),
    );
  }
}


class ExpandedGun extends StatefulWidget {
  @override
  _ExpandedGunState createState() => _ExpandedGunState();
}

class _ExpandedGunState extends State<ExpandedGun> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 15.0,
              sigmaY: 15.0,
            ),
            child:Container(width:200,height: 200,color:Colors.red))),
      
    );
  }
}
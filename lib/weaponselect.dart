import 'package:diagonal/diagonal.dart';
import 'package:flutter/material.dart';
import 'package:newproject/gun.dart';

class WeaponSelect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.transparent,elevation: 0.0,),
        backgroundColor: Color(0xFFFA4454),
        body: Stack(children: [
          Diagonal(
            child: Container(
              color: Color(0xff042E27),
            ),
            position: Position.TOP_RIGHT,
            clipHeight: MediaQuery.of(context).size.height,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 70),
            child: ListView(
              padding: const EdgeInsets.all(8),
              children: <Widget>[
                Weapons(
                  weaponName: "Classic pistol",
                  weaponImage: "assets/weapons/c.png",
                ),
                Weapons(
                  weaponName: "shorty",
                  weaponImage: "assets/weapons/shorty.png",
                ),
                Weapons(
                  weaponName: "frenzy",
                  weaponImage: "assets/weapons/frenzy.png",
                ),
                Weapons(
                  weaponName: "ghost",
                  weaponImage: "assets/weapons/ghost.png",
                ),
                Weapons(
                  weaponName: "sheriff",
                  weaponImage: "assets/weapons/sheriff.png",
                ),
                Weapons(
                  weaponName: "stinger",
                  weaponImage: "assets/weapons/stinger.png",
                ),
                Weapons(
                  weaponName: "spectre",
                  weaponImage: "assets/weapons/spectre.png",
                ),
                Weapons(
                  weaponName: "bulldog",
                  weaponImage: "assets/weapons/bulldog.png",
                ),
                Weapons(
                  weaponName: "guardian",
                  weaponImage: "assets/weapons/guardian.png",
                ),
                Weapons(
                  weaponName: "phantom",
                  weaponImage: "assets/weapons/phantom.png",
                ),
                Weapons(
                  weaponName: "vandal",
                  weaponImage: "assets/weapons/vandal.png",
                ),
                Weapons(
                  weaponName: "bucky",
                  weaponImage: "assets/weapons/bucky.png",
                ),
                Weapons(
                  weaponName: "judge",
                  weaponImage: "assets/weapons/judge.png",
                ),
                Weapons(
                  weaponName: "ares",
                  weaponImage: "assets/weapons/ares.png",
                ),
                Weapons(
                  weaponName: "odin",
                  weaponImage: "assets/weapons/odin.png",
                ),
                Weapons(
                  weaponName: "marshal",
                  weaponImage: "assets/weapons/marshal.png",
                ),
                Weapons(
                  weaponName: "operator",
                  weaponImage: "assets/weapons/operator.png",
                ),
                Weapons(
                  weaponName: "melee",
                  weaponImage: "assets/weapons/melee.png",
                ),
              ],
            ),
          )
        ]));
  }
}

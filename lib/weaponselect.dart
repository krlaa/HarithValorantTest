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
                  weaponImage: "weapons/c.png",
                ),
                Weapons(
                  weaponName: "shorty",
                  weaponImage: "weapons/shorty.png",
                ),
                Weapons(
                  weaponName: "frenzy",
                  weaponImage: "weapons/frenzy.png",
                ),
                Weapons(
                  weaponName: "ghost",
                  weaponImage: "weapons/ghost.png",
                ),
                Weapons(
                  weaponName: "sheriff",
                  weaponImage: "weapons/sheriff.png",
                ),
                Weapons(
                  weaponName: "stinger",
                  weaponImage: "weapons/stinger.png",
                ),
                Weapons(
                  weaponName: "spectre",
                  weaponImage: "weapons/spectre.png",
                ),
                Weapons(
                  weaponName: "bulldog",
                  weaponImage: "weapons/bulldog.png",
                ),
                Weapons(
                  weaponName: "guardian",
                  weaponImage: "weapons/guardian.png",
                ),
                Weapons(
                  weaponName: "phantom",
                  weaponImage: "weapons/phantom.png",
                ),
                Weapons(
                  weaponName: "vandal",
                  weaponImage: "weapons/vandal.png",
                ),
                Weapons(
                  weaponName: "bucky",
                  weaponImage: "weapons/bucky.png",
                ),
                Weapons(
                  weaponName: "judge",
                  weaponImage: "weapons/judge.png",
                ),
                Weapons(
                  weaponName: "ares",
                  weaponImage: "weapons/ares.png",
                ),
                Weapons(
                  weaponName: "odin",
                  weaponImage: "weapons/odin.png",
                ),
                Weapons(
                  weaponName: "marshal",
                  weaponImage: "weapons/marshal.png",
                ),
                Weapons(
                  weaponName: "operator",
                  weaponImage: "weapons/operator.png",
                ),
                Weapons(
                  weaponName: "melee",
                  weaponImage: "weapons/melee.png",
                ),
              ],
            ),
          )
        ]));
  }
}

import 'package:diagonal/diagonal.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newproject/player.dart';

class PlayerSelect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: Color(0xFFFA4454),
        body: Stack(
          children: [
            Diagonal(
              child: Container(
                color: Color(0xff042E27),
              ),
              position: Position.TOP_RIGHT,
              clipHeight: MediaQuery.of(context).size.height,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "AGENT SELECT",
                  style: TextStyle(fontSize: 36, color: Colors.white),
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "CHOOSE YOUR AGENT",
                  style: TextStyle(fontSize: 36, color: Colors.white),
                ),
                SizedBox(
                  height: 100,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FlatButton(
                        color: Color(0xFF364966),
                        onPressed: () {
                          Get.to(
                            Player(
                              name: 'REYNA',
                              backstory:
                                  "Forged in the heart of Mexico, Reyna dominates single combat, popping off with each kill she scores. Her capability is only limited by her raw skill, making her highly dependent on performance.",
                              abillity1:
                                  "LEER: BLINDS THE OTHER TEAM AND COST 100 CREDITS",
                              abillity2:
                                  "DEVOUR: ONCE YOU HAVE GOT A KILL YOU CAN DEVOUR THERE SOULD AND HEAL UP ",
                              abillity3:
                                  "DISMISS: ONCE THE PLAYER HAS GOT KILL THEY CAN GO  INVINCIBLE FOR 2.5 SECOUNDS",
                              ult:
                                  "ULTIMATE: HER ULTIMATE EMPRESS ONCE USED CAN HEAL AND GO INVINCIBLE AT THE SAME TIME",
                              imagePath: "assets/r.png",
                              backgroundColor: Color(0xff39353B),
                              diagonalColor: Color(0xff7513AD),
                              textcolor: Colors.white,
                              backbutton: Colors.white,
                            ),
                          );
                        },
                        child: Container(
                            width: 80,
                            child: Center(
                                child: Text(
                              "REYNA",
                              style: TextStyle(color: Colors.white),
                            )))),
                    FlatButton(
                        color: Color(0xFF364966),
                        onPressed: () {
                          Get.to(
                            Player(
                              name: 'SAGE',
                              backstory:
                                  "The most prominent support character to date hails from China and brings orbs that heal allies, slow enemies, and create barriers out of the ground to impede the flow of a match.The most prominent support character to date hails from China and brings orbs that heal allies, slow enemies, and create barriers out of the ground to impede the flow of a match.",
                              abillity1:
                                  "SLOW ORB:  HER SLOW ORB ONCE THROWN CAUSES  THE AREA AROUND IT TO BE FROZEN AND MAKES IT ANOYING TO WALK ACROSS",
                              abillity2:
                                  "WALL: ONCE THE WALL IS PLACED CAN BE USED TO BLOCK OFF AREAS AND GAIN HIGH GROUND ",
                              abillity3:
                                  "HEAL ORB: ONCE USED CAN HEAL THE PLAYER OR TEAM MATE FOR 60 HP",
                              ult: "ULT: YOU CAN REVIVE A TEAM MATE",
                              imagePath: "assets/s.png",
                              backgroundColor: Color(0xffffffff),
                              diagonalColor: Color(0xff71E8D4),
                              textcolor: Colors.black,
                              backbutton: Colors.black,
                            ),
                          );
                        },
                        child: Container(
                            width: 80,
                            child: Center(
                                child: Text(
                              "SAGE",
                              style: TextStyle(color: Colors.white),
                            ))))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FlatButton(
                        color: Color(0xFF364966),
                        onPressed: () {
                          Get.to(
                            Player(
                              name: 'PHONEIX',
                              backstory:
                                  "Phoenix’s star power shines through in his fighting style,igniting the battlefield with his flash and flare. Whether he’s got backup or not,he’s rushing in to fight on his own terms",
                              abillity1:
                                  "BLAZE: WHICH IS A WALL OF FIRE THAT CAN BE CRVED ",
                              abillity2:
                                  "CURVE BALL: THE  USER CAN SEND A BALL OF FIRE THAT CAN BLIND OTHER PLAYERS",
                              abillity3:
                                  "HOT HANDS: A THROWABLE BALL OF FIRE THAT DOES SPLASH DAMAGE",
                              ult:
                                  "ULT: IT ALOWS THE USER TO HAVE A SECOUND LIFE FOR A LIMITED AMOUNT OF TIME",
                              imagePath: "assets/p.png",
                              backgroundColor: Color(0xffB2A100),
                              diagonalColor: Color(0xffD45005),
                              textcolor: Colors.white,
                              backbutton: Colors.white,
                            ),
                          );
                        },
                        child: Container(
                            width: 80,
                            child: Center(
                                child: Text(
                              "PHONEIX",
                              style: TextStyle(color: Colors.white),
                            )))),
                    FlatButton(
                        color: Color(0xFF364966),
                        onPressed: () {
                          Get.to(
                            Player(
                              name: 'OMEN',
                              backstory:
                                  "Phoenix’s star power shines through in his fighting style,igniting the battlefield with his flash and flare. Whether he’s got backup or not,he’s rushing in to fight on his own terms",
                              abillity1:
                                  "SHROUDED STEP: CAN TELAPORT TO A CERTIN DISTANCE",
                              abillity2:
                                  "PARANOIA: SENDS A WAVE OF BLINDNESS TO WHOEVER GETS HIT BY IT",
                              abillity3:
                                  "DARK COVER: AN ORB OF DARKNESS TO BLOCK SIGHT ",
                              ult:
                                  "ULT:YOU ARE ABLE TO TELEPORT ANYWHERE ON THE MAP",
                              imagePath: "assets/o.png",
                              backgroundColor: Color(0xff0000000),
                              diagonalColor: Color(0xff5747BA),
                              textcolor: Colors.white,
                              backbutton: Colors.white,
                            ),
                          );
                        },
                        child: Container(
                            width: 80,
                            child: Center(
                                child: Text(
                              "OMEN",
                              style: TextStyle(color: Colors.white),
                            )))),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FlatButton(
                        color: Color(0xFF364966),
                        onPressed: () {
                          Get.to(
                            Player(
                              name: 'RAZE',
                              backstory:
                                  "Raze loves explosives. With her blunt-force-trauma playstyle, she excels at flushing entrenched enemies and clearing tight spaces with a generous dose of boom",
                              abillity1:
                                  "Boom bot: Equip a Boom Bot. Fire to deploy the bot, causing it to travel in a straight line on the ground, bouncing off walls. The Boom Bot will lock on to any enemies in its frontal cone and chase them, exploding for heavy damage if it reaches them.",
                              abillity2:
                                  "Blast pack: Instantly throw a Blast Pack that will stick to surfaces. Re-use to detonate, damaging and knocking back anything hit. Blast Pack will not damage Raze, but she can still suffer fall damage.",
                              abillity3:
                                  "Paint shells: Equip a cluster grenade. Fire to throw the grenade, which deals damage and creates sub-munitions, each exploding and dealing further damage.",
                              ult:
                                  "ULTIMATE: Equip a single-use Rocket Launcher and light its fuse. Fire to launch a rocket, which travels in a straight line and explodes on contact, dealing high damage to enemies caught in its blast radius. ",
                              imagePath: "assets/ra.png",
                              backgroundColor: Color(0xffFF7A00),
                              diagonalColor: Color(0xff042E27),
                              textcolor: Colors.white,
                              backbutton: Colors.white,
                            ),
                          );
                        },
                        child: Container(
                            width: 80,
                            child: Center(
                                child: Text(
                              "RAZE",
                              style: TextStyle(color: Colors.white),
                            )))),
                    FlatButton(
                        color: Color(0xFF364966),
                        onPressed: () {
                          Get.to(
                            Player(
                              name: 'Breach',
                              backstory:
                                  "Breach fires powerful, targeted kinetic blasts to aggressively clear a path through enemy ground. The damage and disruption he inflicts ensures no fight is ever fair.",
                              abillity1:
                                  "AFTER SHOCK: Equip a fusion charge. Fire the charge to set a slow-acting burst through the wall. The burst does heavy damage to anyone caught in its area.",
                              abillity2:
                                  "FLASH POINT: Equip a blinding charge. Fire the charge to set a fast-acting burst through the wall.",
                              abillity3:
                                  "FAULT LINE:  Equip a seismic blast. Hold Fire to increase the distance. Release to set off the quake",
                              ult:
                                  "ULT: Equip a seismic charge. Fire to send a cascading quake through all terrain.",
                              imagePath: "assets/b.png",
                              backgroundColor: Color(0xffA95B13),
                              diagonalColor: Color(0xff094D18),
                              textcolor: Colors.white,
                              backbutton: Colors.white,
                            ),
                          );
                        },
                        child: Container(
                            width: 80,
                            child: Center(
                                child: Text(
                              "BREACH",
                              style: TextStyle(color: Colors.white),
                            )))),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FlatButton(
                    color: Color(0xFF364966),
                    onPressed: () {
                      Get.to(
                        Player(
                          name: 'SKYE',
                          backstory:
                              "Hailing from Australia, Skye and her band of beasts trail-blaze the way through hostile territory. With her creations hampering the enemy, and her power to heal others, the team is strongest and safest by Skye's side.",
                          abillity1:
                              "a healing trinket. HOLD FIRE to channel, healing allies in range and line of sight. Can be reused until her healing pool is depleted. Skye cannot heal herself.",
                          abillity2:
                              " a Tasmanian tiger trinket. FIRE to send out and take control of the predator. While in control, FIRE to leap forward, exploding in a concussive blast and damaging directly hit enemies.",
                          abillity3:
                              " a hawk trinket. FIRE to send it forward. HOLD FIRE to guide the hawk in the direction of your crosshair. RE-USE while the hawk is in flight to transform it into a flash that plays a hit confirm if an enemy was within range and line of sight.",
                          ult:
                              "ULT: a Seeker trinket. FIRE to send out three Seekers to track down the three closest enemies. If a Seeker reaches its target, it nearsights them.",
                          imagePath: "assets/sk.png",
                          backgroundColor: Color(0xff1D845B),
                          diagonalColor: Color(0xff042E27),
                          textcolor: Colors.white,
                          backbutton: Colors.white,
                        ),
                      );
                    },
                    child: Container(
                        width: 80,
                        child: Center(
                            child: Text(
                          "SKYE",
                          style: TextStyle(color: Colors.white),
                        )))),
                FlatButton(
                    color: Color(0xFF364966),
                    onPressed: () {
                      Get.to(
                        Player(
                          name: 'CYPHER ',
                          backstory:
                              "The Moroccan information broker, Cypher is a one-man surveillance network who keeps tabs on the enemy’s every move. No secret is safe. No maneuver goes unseen. Cypher is always watching ",
                          abillity1:
                              "Equip a trapwire. Fire to place a destructible and covert tripware at the targeted location, creating a line that spans between the placed location and the wall opposite. Enemy players who cross a tripwire will be tethered, revealed, and dazed after a short period if they do not destroy the device in time.",
                          abillity2:
                              "Instantly toss a cyber cage in front of Cypher. Activate from any distance to create a temporary zone that blocks vision.",
                          abillity3:
                              "Equip a spycam. Fire to place the spycam at the targeted location. REUSE this ability to take control of the camera's view. While in control of the camera, Fire to shoot a tracking dart. The dart is removable and will periodically reveal the location of the enemy hit.",
                          ult:
                              "ULT: Use on a fresh enemy corpse to throw Cypher's hat. After a brief delay, all enemy players' locations will be revealed once.",
                          imagePath: "assets/c.png",
                          backgroundColor: Color(0xffB2B2B2),
                          diagonalColor: Color(0xff28282F),
                          textcolor: Colors.white,
                          backbutton: Colors.white,
                        ),
                      );
                    },
                    child: Container(
                        width: 80,
                        child: Center(
                            child: Text(
                          "CYPHER",
                          style: TextStyle(color: Colors.white),
                        )))),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FlatButton(
                    color: Color(0xFF364966),
                    onPressed: () {
                      Get.to(
                        Player(
                          name: 'JETT',
                          backstory:
                              "From Korea comes Jett, an agile fighter who prioritizes movement over everything. Her abilities include a teleportation-based dash and an updraft that lets her reach higher ledges.",
                          abillity1:
                              "instantly throw a projectile that expands into a brief vision cloud on impact with a surface. Hold the ability key to curve the cloud in the direction of your crosshair.",
                          abillity2: "Instantly propel Jett high into the air.",
                          abillity3:
                              "Instantly propel in the direction she is moving. If Jett is standing still, she will propel forward.",
                          ult:
                              "ULT:Equip a set of 5 highly accurate throwing knives. Fire to throw a single knife. Alternative Fire to throw all remaining daggers at once. Restocks upon killing an enemy.",
                          imagePath: "assets/j.png",
                          backgroundColor: Color(0xff145976),
                          diagonalColor: Color(0xffD1DDEC),
                          textcolor: Colors.white,
                          backbutton: Colors.white,
                        ),
                      );
                    },
                    child: Container(
                        width: 80,
                        child: Center(
                            child: Text(
                          "JETT",
                          style: TextStyle(color: Colors.white),
                        )))),
                FlatButton(
                    color: Color(0xFF364966),
                    onPressed: () {
                      Get.to(
                        Player(
                          name: 'KILLJOY',
                          backstory:
                              "The genius of Germany. Killjoy secures the battlefield with ease using her arsenal of inventions. If the damage from her gear doesn't stop her enemies, her robots debuff will help make short work of them.",
                          abillity1:
                              "a covert Alarmbot. FIRE to deploy a bot that hunts down enemies that get in range. After reaching its target, the bot explodes, applying Vulnerable.",
                          abillity2:
                              "a Nanoswarm grenade. FIRE to throw the grenade. Upon landing, the Nanoswarm goes covert. ACTIVATE the Nanoswarm to deploy a damaging swarm of nanobots.",
                          abillity3:
                              "a Turret. FIRE to deploy a turret that fires at enemies in a 180 degree cone that deals 11 damage per burst. HOLD EQUIP to recall the deployed turret. Deactivates if Killjoy is more than 40m away from them.",
                          ult:
                              "ULT: he Lockdown device. FIRE to deploy the device. After a long windup, the device Detains all enemies caught in the radius. The device can be destroyed by enemies. Enemies detained by the ultimate can neither shoot nor use any abilities for 8 seconds.",
                          imagePath: "assets/k.png",
                          backgroundColor: Color(0xffE3CC3E),
                          diagonalColor: Color(0xffE584FD),
                          textcolor: Colors.white,
                          backbutton: Colors.white,
                        ),
                      );
                    },
                    child: Container(
                        width: 80,
                        child: Center(
                            child: Text(
                          "KILLJOY",
                          style: TextStyle(color: Colors.white),
                        )))),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FlatButton(
                    color: Color(0xFF364966),
                    onPressed: () {
                      Get.to(
                        Player(
                          name: 'SOVA',
                          backstory:
                              "Sova tracks, finds, and eliminates enemies with ruthless efficiency and precision. His custom bow and incredible scouting abilities ensure that even if you run, you cannot hide",
                          abillity1:
                              "Equip a bow with shock bolt. Fire to send the explosive bolt forward detonating upon collision and damaging players nearby.",
                          abillity2:
                              "an owl drone. Fire to deploy and take control of movement of the drone. While in control of the drone, Fire to shoot a marking dart.",
                          abillity3:
                              "Equip a bow with recon bolt. Fire to send the bolt forward activating upon collision and revealing the location of nearby enemies caught in the line of sight of the bolt. Enemies can destroy this bolt.",
                          ult:
                              "ULT:Equip a bow with three long-range, wall-piercing energy blasts. Fire to release an blast in a line in front of Sova dealing damage and revealing the location of enemies caught in the line.",
                          imagePath: "assets/so.png",
                          backgroundColor: Color(0xff3D5D95),
                          diagonalColor: Color(0xffC2C6C8),
                          textcolor: Colors.white,
                          backbutton: Colors.white,
                        ),
                      );
                    },
                    child: Container(
                        width: 80,
                        child: Center(
                            child: Text(
                          "SOVA",
                          style: TextStyle(color: Colors.white),
                        )))),
                FlatButton(
                    color: Color(0xFF364966),
                    onPressed: () {
                      Get.to(
                        Player(
                          name: 'BRIMSTONE',
                          backstory:
                              "Bimstone is a powerful commander that utilizes incendiary grenades, smokescreen airstrikes, and rapid-fire-inducing stim beacons to damage enemies and buff teammates.",
                          abillity1:
                              "Equip an Incendiary grenade launcher. Fire to launch a grenade that detonates as it comes to a rest on the floor, creating a lingering fire zone that damages players.",
                          abillity2:
                              "Equip a Stim Beacon. Fire to toss the stim beacon in front of Brimstone. Upon landing, the stim beacon will create a field that grants players RapidFire.",
                          abillity3:
                              "Equip a tactical map. Fire to set locations where Brimstone's smoke clouds will land. Alternate Fire to confirm, launching long-lasting smoke clouds that block vision in the selected area.",
                          ult:
                              "ULT: he Lockdown device. FIRE to deploy the device. After a long windup, the device Detains all enemies caught in the radius. The device can be destroyed by enemies. Enemies detained by the ultimate can neither shoot nor use any abilities for 8 seconds.",
                          imagePath: "assets/br.png",
                          backgroundColor: Color(0xffA43A01),
                          diagonalColor: Color(0xff8695A8),
                          textcolor: Colors.white,
                          backbutton: Colors.white,
                        ),
                      );
                    },
                    child: Container(
                        width: 80,
                        child: Center(
                            child: Text(
                          "BRIMSTONE",
                          style: TextStyle(color: Colors.white),
                        )))),
              ],
            ),
          ],
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:diagonal/diagonal.dart';
import 'package:get/route_manager.dart';
import 'package:newproject/player.dart';
import 'package:newproject/playerSelect.dart';
import 'package:newproject/weaponselect.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: WeaponSelect());
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FlatButton(
                      color: Color(0xFF364966),
                      onPressed: () {
                        Get.to(PlayerSelect());
                      },
                      child: Container(
                          width: 80,
                          child: Center(
                              child: Text(
                            "AGENTS",
                            style: TextStyle(color: Colors.white),
                          )))),
                  FlatButton(
                      color: Color(0xFF364966),
                      onPressed: () {
                        print("WEAPONS");
                      },
                      child: Container(
                          width: 80,
                          child: Center(
                              child: Text(
                            "WEAPONS",
                            style: TextStyle(color: Colors.white),
                          ))))
                ],
              ),
              Padding(padding: EdgeInsets.all(40)),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FlatButton(
                        color: Color(0xFF364966),
                        onPressed: () {
                          print("CLIPS");
                        },
                        child: Container(
                            width: 80,
                            child: Center(
                                child: Text(
                              "CLIPS",
                              style: TextStyle(color: Colors.white),
                            )))),
                    FlatButton(
                        color: Color(0xFF364966),
                        onPressed: () {
                          print("PROFILE");
                        },
                        child: Container(
                            width: 80,
                            child: Center(
                                child: Text(
                              "PROFILE",
                              style: TextStyle(color: Colors.white),
                            ))))
                  ]),
            ],
          ),
        ],
      ),
    );
  }
}

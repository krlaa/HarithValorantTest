import 'package:diagonal/diagonal.dart';
import 'package:flutter/material.dart';

class Player extends StatefulWidget {
  Player(
      {this.backgroundColor,
      this.diagonalColor,
      this.imagePath,
      this.name,
      this.backstory,
      this.abillity1,
      this.abillity2,
      this.abillity3,
      this.ult,
      this.textcolor,
      this.backbutton});

  final Color backgroundColor;
  final Color diagonalColor;
  final String imagePath;
  final String name;
  final String backstory;
  final String abillity1;
  final String abillity2;
  final String abillity3;
  final String ult;
  final Color textcolor;
  final Color backbutton;
  @override
  _PlayerState createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  TextStyle style() {
    return TextStyle(color: widget.textcolor, fontSize: 14);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(widget.name),
        iconTheme: IconThemeData(color: widget.backbutton),
      ),
      body: Stack(
        children: [
          Diagonal(
            child: Container(
              color: widget.diagonalColor,
            ),
            position: Position.TOP_RIGHT,
            clipHeight: MediaQuery.of(context).size.height,
          ),
          Opacity(
            opacity: 0.3,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(widget.imagePath)),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "BACK STORY:",
                style: style(),
              ),
              SizedBox(
                height: 50,
              ),
              Text(widget.backstory, style: style()),
              SizedBox(
                height: 35,
              ),
              Text("ABILITIES:", style: style()),
              SizedBox(
                height: 35,
              ),
              Text(widget.abillity1, style: style()),
              SizedBox(
                height: 35,
              ),
              Text(widget.abillity2, style: style()),
              SizedBox(
                height: 35,
              ),
              Text(widget.abillity3, style: style()),
              SizedBox(
                height: 35,
              ),
              Text(widget.ult, style: style())
            ],
          )
        ],
      ),
      backgroundColor: widget.backgroundColor,
    );
  }
}

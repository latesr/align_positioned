import 'package:align_positioned/align_positioned.dart';
import 'package:flutter/material.dart';
import 'package:matrix4_transform/matrix4_transform.dart';

void main() async => runApp(MaterialApp(home: Demo()));

class Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //

    return Scaffold(
      appBar: AppBar(title: const Text('AlignPositioned Example')),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 50, width: double.infinity),
              //
              Container(
                width: 150,
                height: 150,
                color: Colors.yellow,
                child: Stack(
                  children: [
                    AlignPositioned(
                      child: circle(Colors.yellow),
                      alignment: Alignment(0, 0),
                      touch: Touch.middle,
                    ),
                    AlignPositioned(
                      child: circle(Colors.yellow),
                      alignment: Alignment(0.5, 0),
                      touch: Touch.middle,
                    ),
                    AlignPositioned(
                      child: circle(Colors.yellow),
                      alignment: Alignment(-0.5, 0),
                      touch: Touch.middle,
                    ),
                    AlignPositioned(
                      child: circle(Colors.yellow),
                      alignment: Alignment(0, 0.5),
                      touch: Touch.middle,
                    ),
                    AlignPositioned(
                      child: circle(Colors.yellow),
                      alignment: Alignment(0, -0.5),
                      touch: Touch.middle,
                    ),
                    AlignPositioned(
                      child: circle(Colors.red),
                      alignment: Alignment(-1, 0),
                      touch: Touch.middle,
                    ),
                    AlignPositioned(
                      child: circle(Colors.blue),
                      alignment: Alignment(1, 0),
                      touch: Touch.middle,
                    ),
                    AlignPositioned(
                      child: circle(Colors.green),
                      alignment: Alignment(0, -1),
                      touch: Touch.middle,
                    ),
                    AlignPositioned(
                      child: circle(Colors.purple),
                      alignment: Alignment(0, 1),
                      touch: Touch.middle,
                    ),
                    AlignPositioned(
                      child: circle(Colors.black38),
                      alignment: Alignment(-1, -1),
                      touch: Touch.middle,
                    ),
                    AlignPositioned(
                      child: circle(Colors.black38),
                      alignment: Alignment(1, 1),
                      touch: Touch.middle,
                    ),
                    AlignPositioned(
                      child: circle(Colors.black38),
                      alignment: Alignment(1, -1),
                      touch: Touch.middle,
                    ),
                    AlignPositioned(
                      child: circle(Colors.black38),
                      alignment: Alignment(-1, 1),
                      touch: Touch.middle,
                    )
                  ],
                ),
              ),
              //
              SizedBox(height: 50, width: double.infinity),
              //
              Container(width: 150, height: 150, color: Colors.yellow, child: Stack(children: circlesInside())),
              //
              SizedBox(height: 50, width: double.infinity),
              //
              Container(width: 150, height: 150, color: Colors.yellow, child: Stack(children: circlesOutside())),
              //
              SizedBox(height: 60),
              //
              Container(width: 150, height: 150, color: Colors.yellow, child: Stack(children: circlesWithOffset())),
              SizedBox(height: 100),
              //
              Container(
                  width: 150, height: 150, color: Colors.yellow, child: Stack(children: circlesWithNamedAlignments())),
              //
              SizedBox(height: 50),
              //
              Container(
                  width: 150,
                  height: 150,
                  color: Colors.yellow,
                  child: Stack(children: circlesWithDWidthAndDHeightInside())),
              //
              SizedBox(height: 50),
              //
              Container(
                  width: 150,
                  height: 150,
                  color: Colors.yellow,
                  child: Stack(children: circlesWithDWidthAndDHeightOutside())),
              //
              SizedBox(height: 80),
              //
              Container(
                width: 150,
                height: 150,
                color: Colors.blue,
                child: Stack(
                  children: <Widget>[
                    AlignPositioned(
                      touch: Touch.inside,
                      alignment: Alignment.topLeft,
                      dx: 15.0,
                      moveByChildWidth: -0.5,
                      moveByChildHeight: -0.5,
                      child: circle(Color(0x50000000), 60.0),
                    ),
                    AlignPositioned(
                      touch: Touch.inside,
                      alignment: Alignment.topLeft,
                      dx: 15.0,
                      moveByChildWidth: -0.5,
                      moveByChildHeight: -0.5,
                      child: circle(Colors.white, 5.0),
                    ),
                    AlignPositioned(
                      rotateDegrees: 180,
                      touch: Touch.inside,
                      alignment: Alignment.topLeft,
                      dx: 15.0,
                      moveByChildWidth: -0.5,
                      moveByChildHeight: -0.5,
                      child: circle(Color(0x50000000), 60.0),
                    ),
                    AlignPositioned(
                      rotateDegrees: 180,
                      touch: Touch.inside,
                      alignment: Alignment.topLeft,
                      dx: 15.0,
                      moveByChildWidth: -0.5,
                      moveByChildHeight: -0.5,
                      child: circle(Colors.white, 5.0),
                    ),
                  ],
                ),
              ),
              //
              SizedBox(height: 50),
              //
              Container(
                width: 150,
                height: 150,
                color: Colors.red,
                child: Stack(
                  children: <Widget>[
                    AlignPositioned(
                      touch: Touch.inside,
                      alignment: Alignment.topLeft,
                      dx: 15.0,
                      moveByChildWidth: -0.5,
                      moveByChildHeight: -0.5,
                      moveByContainerWidth: 1,
                      moveByContainerHeight: 1,
                      child: circle(Color(0x50000000), 60.0),
                    ),
                    AlignPositioned(
                      touch: Touch.inside,
                      alignment: Alignment.topLeft,
                      dx: 15.0,
                      moveByChildWidth: -0.5,
                      moveByChildHeight: -0.5,
                      moveByContainerWidth: 1,
                      moveByContainerHeight: 1,
                      child: circle(Colors.white, 5.0),
                    ),
                  ],
                ),
              ),
              //
              SizedBox(height: 50),
              //
              Container(
                width: 150,
                height: 150,
                color: Colors.green,
                child: Stack(
                  children: <Widget>[
                    for (double i = 0; i < 360 * 2; i += 5)
                      AlignPositioned(
                        alignment: Alignment.center,
                        rotateDegrees: i,
                        touch: Touch.inside,
                        moveByContainerWidth: 0.5 / 2 / 360 * i,
                        childWidthRatio: 0.5 / 2 / 360 * i,
                        childHeightRatio: 0.5 / 2 / 360 * i,
                        child: circle(Colors.white, 15.0),
                      )
                  ],
                ),
              ),
              //
              SizedBox(height: 50),
              //
              Container(
                width: 150,
                height: 150,
                color: Colors.green,
                child: Stack(
                  children: <Widget>[
                    for (double i = 0; i < 360; i += 45)
                      AlignPositioned(
                        alignment: Alignment.center,
                        rotateDegrees: i,
                        child: Container(color: Colors.black, width: 60, height: 6),
                      ),
                    for (double i = 0; i < 360; i += 45)
                      AlignPositioned(
                        alignment: Alignment.center,
                        dx: 50,
                        dy: 60,
                        rotateDegrees: i,
                        child: Container(color: Colors.black, width: 40, height: 8),
                      ),
                    for (double i = 0; i < 360; i += 5)
                      AlignPositioned(
                        alignment: Alignment.bottomLeft,
                        rotateDegrees: i,
                        child: Container(color: Colors.black.withOpacity(i / 360 * .8), width: 100, height: 10),
                      )
                  ],
                ),
              ),
              //
              SizedBox(height: 120),
              //
              Container(
                width: 150,
                height: 150,
                color: Colors.purple,
                child: Stack(
                  children: <Widget>[
                    AlignPositioned(
                      alignment: Alignment.center,
                      rotateDegrees: 45,
                      child: Container(color: Colors.yellow, width: 60, height: 20),
                    ),
                    AlignPositioned(
                      alignment: Alignment.center,
                      matrix4Transform: Matrix4Transform().scale(2),
                      child: Container(color: Colors.green.withOpacity(0.5), width: 60, height: 20),
                    ),
                    AlignPositioned(
                      alignment: Alignment.center,
                      rotateDegrees: 45,
                      matrix4Transform: Matrix4Transform().scale(2),
                      child: Container(color: Colors.red.withOpacity(0.5), width: 60, height: 20),
                    ),
                    AlignPositioned(
                      alignment: Alignment.center,
                      rotateDegrees: 45,
                      matrix4Transform: Matrix4Transform().scale(2).rotateDegrees(90),
                      child: Container(color: Colors.blue.withOpacity(0.5), width: 60, height: 20),
                    ),
                  ],
                ),
              ),
              //
              SizedBox(height: 50),
              //
              Container(
                width: 150,
                height: 150,
                color: Colors.red,
                child: AlignPositioned(
                  alignment: Alignment.center,
                  childHeightRatio: 0.5,
                  moveByContainerHeight: 0.25,
                  childWidth: 75,
                  wins: Wins.min,
                  child: Container(color: Color(0x50000000)),
                ),
              ),
              //
              SizedBox(height: 50),
              //
              Container(
                width: 150,
                height: 150,
                color: Colors.red,
                child: AlignPositioned(
                  alignment: Alignment.center,
                  childHeightRatio: 0.5,
                  moveByChildHeight: 0.5,
                  childWidth: 75,
                  wins: Wins.min,
                  child: Container(color: Color(0x50000000)),
                ),
              ),
              //
              SizedBox(height: 50),
              //
              Container(
                width: 150,
                height: 150,
                color: Colors.red,
                child: AlignPositioned(
                  alignment: Alignment.center,
                  childHeightRatio: 1.0,
                  minChildWidthRatio: 0.66,
                  maxChildWidthRatio: 0.33,
                  wins: Wins.min,
                  child: Container(color: Color(0x50000000)),
                ),
              ),
              //
              SizedBox(height: 50),
              //
              Container(
                width: 150,
                height: 150,
                color: Colors.red,
                child: AlignPositioned(
                  alignment: Alignment.center,
                  childHeightRatio: 1.0,
                  minChildWidthRatio: 0.66,
                  maxChildWidthRatio: 0.33,
                  wins: Wins.max,
                  child: Container(color: Color(0x50000000)),
                ),
              ),
              //
              SizedBox(height: 50),
              //
              Container(
                width: 150,
                height: 150,
                color: Colors.red,
                child: AlignPositioned(
                  alignment: Alignment.center,
                  childHeightRatio: 1.20,
                  moveByContainerHeight: 0.10,
                  childWidth: 190,
                  wins: Wins.max,
                  child: Container(color: Color(0x50000000)),
                ),
              ),
              //
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> circlesWithDWidthAndDHeightInside() {
    var children1 = <Widget>[];
    children1.addAll(circles(Colors.red, Touch.inside, 0, -1, moveByChildWidth: 0.0, moveByChildHeight: 0.0));
    children1.addAll(circles(Colors.blue, Touch.inside, 0, -1, moveByChildWidth: 1.0, moveByChildHeight: 0.0));
    children1.addAll(circles(Colors.green, Touch.inside, 0, -1, moveByChildWidth: -1.0, moveByChildHeight: 0.0));

    children1.addAll(circles(Colors.red, Touch.inside, 1, 0, moveByChildWidth: 0.0, moveByChildHeight: 0.0));
    children1.addAll(circles(Colors.blue, Touch.inside, 1, 0, moveByChildWidth: 0.0, moveByChildHeight: 1.0));
    children1.addAll(circles(Colors.green, Touch.inside, 1, 0, moveByChildWidth: 0.0, moveByChildHeight: -1.0));

    children1.addAll(circles(Colors.red, Touch.inside, 0, 1, moveByChildWidth: 0.0, moveByChildHeight: 0.0));
    children1.addAll(circles(Colors.blue, Touch.inside, 0, 1, moveByChildWidth: 1.0, moveByChildHeight: 0.0));
    children1.addAll(circles(Colors.green, Touch.inside, 0, 1, moveByChildWidth: -1.0, moveByChildHeight: 0.0));

    children1.addAll(circles(Colors.red, Touch.inside, -1, 0, moveByChildWidth: 0.0, moveByChildHeight: 0.0));
    children1.addAll(circles(Colors.blue, Touch.inside, -1, 0, moveByChildWidth: 0.0, moveByChildHeight: 1.0));
    children1.addAll(circles(Colors.green, Touch.inside, -1, 0, moveByChildWidth: 0.0, moveByChildHeight: -1.0));
    return children1;
  }

  List<Widget> circlesWithDWidthAndDHeightOutside() {
    var children1 = <Widget>[];
    children1.addAll(circles(Colors.red, Touch.outside, 0, -1, moveByChildWidth: 0.0, moveByChildHeight: 0.0));
    children1.addAll(circles(Colors.blue, Touch.outside, 0, -1, moveByChildWidth: 1.0, moveByChildHeight: 0.0));
    children1.addAll(circles(Colors.green, Touch.outside, 0, -1, moveByChildWidth: -1.0, moveByChildHeight: 0.0));

    children1.addAll(circles(Colors.red, Touch.outside, 1, 0, moveByChildWidth: 0.0, moveByChildHeight: 0.0));
    children1.addAll(circles(Colors.blue, Touch.outside, 1, 0, moveByChildWidth: 0.0, moveByChildHeight: 1.0));
    children1.addAll(circles(Colors.green, Touch.outside, 1, 0, moveByChildWidth: 0.0, moveByChildHeight: -1.0));

    children1.addAll(circles(Colors.red, Touch.outside, 0, 1, moveByChildWidth: 0.0, moveByChildHeight: 0.0));
    children1.addAll(circles(Colors.blue, Touch.outside, 0, 1, moveByChildWidth: 1.0, moveByChildHeight: 0.0));
    children1.addAll(circles(Colors.green, Touch.outside, 0, 1, moveByChildWidth: -1.0, moveByChildHeight: 0.0));

    children1.addAll(circles(Colors.red, Touch.outside, -1, 0, moveByChildWidth: 0.0, moveByChildHeight: 0.0));
    children1.addAll(circles(Colors.blue, Touch.outside, -1, 0, moveByChildWidth: 0.0, moveByChildHeight: 1.0));
    children1.addAll(circles(Colors.green, Touch.outside, -1, 0, moveByChildWidth: 0.0, moveByChildHeight: -1.0));
    return children1;
  }

  List<Widget> circlesInside() {
    var children1 = <Widget>[];
    children1.addAll(circles(Colors.red, Touch.inside, 0, -1));
    children1.addAll(circles(Colors.red, Touch.inside, -1, 0));
    children1.addAll(circles(Colors.red, Touch.inside, 0, 1));
    children1.addAll(circles(Colors.red, Touch.inside, 1, 0));
    children1.addAll(circles(Colors.blue, Touch.inside, -1, -1));
    children1.addAll(circles(Colors.blue, Touch.inside, -1, 1));
    children1.addAll(circles(Colors.blue, Touch.inside, 1, 1));
    children1.addAll(circles(Colors.blue, Touch.inside, 1, -1));
    return children1;
  }

  List<Widget> circlesOutside() {
    var children1 = <Widget>[];
    children1.addAll(circles(Colors.red, Touch.outside, 0, -1));
    children1.addAll(circles(Colors.red, Touch.outside, -1, 0));
    children1.addAll(circles(Colors.red, Touch.outside, 0, 1));
    children1.addAll(circles(Colors.red, Touch.outside, 1, 0));
    children1.addAll(circles(Colors.blue, Touch.outside, -1, -1));
    children1.addAll(circles(Colors.blue, Touch.outside, -1, 1));
    children1.addAll(circles(Colors.blue, Touch.outside, 1, 1));
    children1.addAll(circles(Colors.blue, Touch.outside, 1, -1));
    return children1;
  }

  List<Widget> circlesWithOffset() {
    var children2 = <Widget>[];
    children2.addAll(circles(Colors.purple, Touch.outside, 0, -1, dx: -15, dy: 15));
    children2.addAll(circles(Colors.purple, Touch.outside, -1, 0, dx: -15, dy: 15));
    children2.addAll(circles(Colors.purple, Touch.outside, 0, 1, dx: -15, dy: 15));
    children2.addAll(circles(Colors.purple, Touch.outside, 1, 0, dx: -15, dy: 15));
    children2.addAll(circles(Colors.green, Touch.inside, 0, -1, dx: -15, dy: 15));
    children2.addAll(circles(Colors.green, Touch.inside, -1, 0, dx: -15, dy: 15));
    children2.addAll(circles(Colors.green, Touch.inside, 0, 1, dx: -15, dy: 15));
    children2.addAll(circles(Colors.green, Touch.inside, 1, 0, dx: -15, dy: 15));

    return children2;
  }

  List<Widget> circles(
    Color color,
    Touch touch,
    int dirX,
    int dirY, {
    double dx = 0.0,
    double dy = 0.0,
    double moveByChildWidth = 0.0,
    double moveByChildHeight = 0.0,
  }) {
    return <Widget>[
      for (double i = 0.0; i <= 1.0; i += 0.1)
        alignPositionedCircle(i, color, dirX, dirY, touch, dx, dy, moveByChildWidth, moveByChildHeight),
    ];
  }

  List<Widget> circlesWithNamedAlignments() {
    return <Widget>[
      AlignPositioned(child: circle(Colors.orange), alignment: Alignment.center, touch: Touch.inside),
      AlignPositioned(child: circle(Colors.orange), alignment: Alignment.center, touch: Touch.outside),

      //
      AlignPositioned(child: circle(Colors.green), alignment: Alignment.centerRight, touch: Touch.inside),
      AlignPositioned(child: circle(Colors.green), alignment: Alignment.bottomCenter, touch: Touch.inside),
      AlignPositioned(child: circle(Colors.green), alignment: Alignment.centerLeft, touch: Touch.inside),
      AlignPositioned(child: circle(Colors.green), alignment: Alignment.topCenter, touch: Touch.inside),
      //
      AlignPositioned(child: circle(Colors.blue), alignment: Alignment.topRight, touch: Touch.inside),
      AlignPositioned(child: circle(Colors.blue), alignment: Alignment.bottomRight, touch: Touch.inside),
      AlignPositioned(child: circle(Colors.blue), alignment: Alignment.topLeft, touch: Touch.inside),
      AlignPositioned(child: circle(Colors.blue), alignment: Alignment.bottomLeft, touch: Touch.inside),
      //
      AlignPositioned(child: circle(Colors.red), alignment: Alignment.centerRight, touch: Touch.outside),
      AlignPositioned(child: circle(Colors.red), alignment: Alignment.bottomCenter, touch: Touch.outside),
      AlignPositioned(child: circle(Colors.red), alignment: Alignment.centerLeft, touch: Touch.outside),
      AlignPositioned(child: circle(Colors.red), alignment: Alignment.topCenter, touch: Touch.outside),
      //
      AlignPositioned(child: circle(Colors.purple), alignment: Alignment.topRight, touch: Touch.outside),
      AlignPositioned(child: circle(Colors.purple), alignment: Alignment.bottomRight, touch: Touch.outside),
      AlignPositioned(child: circle(Colors.purple), alignment: Alignment.topLeft, touch: Touch.outside),
      AlignPositioned(child: circle(Colors.purple), alignment: Alignment.bottomLeft, touch: Touch.outside),
    ];
  }

  AlignPositioned alignPositionedCircle(
    double mult,
    Color color,
    int dirX,
    int dirY,
    Touch touch,
    double dx,
    double dy,
    double moveByChildWidth,
    double moveByChildHeight,
  ) {
    return AlignPositioned(
        child: circle(color),
        alignment: Alignment(mult * dirX, mult * dirY),
        touch: touch,
        dx: dx,
        dy: dy,
        moveByChildWidth: moveByChildWidth,
        moveByChildHeight: moveByChildHeight);
  }

  Container circle(Color color, [double diameter = 30.0]) {
    return Container(
        width: diameter,
        height: diameter,
        decoration: BoxDecoration(
          border: Border.all(width: 1.0, color: Colors.black),
          color: color,
          shape: BoxShape.circle,
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

Center pdpAcademy = const Center(
    child: Text(
      '●// PDP Academy',
      style: TextStyle(
        color: Colors.white,
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    ));

Center icon = const Center(
  child: Icon(
    Icons.arrow_back,
    color: Colors.blue,
    size: 100,
    textDirection: TextDirection.rtl,
    semanticLabel: 'Text to announce in accessibility modes',
  ),
);

Center cupertinoIcon = const Center(
  child: Icon(
    CupertinoIcons.chevron_left_slash_chevron_right,
    color: Colors.indigoAccent,
    size: 200,
  ),
);

Center iconData = const Center(
  child: Icon(
    IconData(
      129488,
      matchTextDirection: true,
    ),
    color: Colors.indigoAccent,
    size: 84,
  ),
);

Center coloredBox = const Center(
  child: ColoredBox(
    color: Colors.lightGreenAccent,
    child: Text(
      'Flutter',
      style: TextStyle(
        fontSize: 32,
      ),
    ),
  ),
);

Center padding = const Center(
  child: ColoredBox(
    color: Colors.deepOrange,
    child: Padding(
      padding: EdgeInsets.all(15),
      child: Text(
        'with padding',
        style: TextStyle(
          fontSize: 32,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  ),
);

Center pdpAcademy2 = const Center(
  child: ColoredBox(
    color: Colors.white,
    child: Padding(
      padding: EdgeInsets.all(20),
      child: Text(
        '●// PDP Academy',
        style: TextStyle(
          color: Color(0xFF2F5D28),
          fontSize: 32,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  ),
);

Center sizedBox = const Center(
  child: ColoredBox(
    color: Colors.purpleAccent,
    child: SizedBox(
      width: 200,
      height: 200,
    ),
  ),
);

Center pdpAcademy3 = const Center(
  child: ColoredBox(
    color: Color(0xFF081A20),
    child: SizedBox(
      width: 400,
      height: 200,
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Center(
          child: Text(
            '●// PDP Academy',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w800,
              fontSize: 32.0,
            ),
          ),
        ),
      ),
    ),
  ),
);

Align align = const Align(
  alignment: Alignment(1, 0.75),
  child: ColoredBox(
    color: Colors.purpleAccent,
    child: SizedBox(
      width: 200,
      height: 200,
    ),
  ),
);

Align fractionalOffSet = const Align(
  alignment: FractionalOffset(0.5, 0.5),
  child: ColoredBox(
    color: Colors.purpleAccent,
    child: SizedBox(
      width: 200,
      height: 200,
    ),
  ),
);

Align pdpAcademy4 = const Align(
  alignment: FractionalOffset(0.75, 0.75),
  child: ColoredBox(
    color: Color(0xFF081A20),
    child: SizedBox(
      width: 300,
      height: 150,
      child: Center(
        child: Padding(
          padding: EdgeInsets.only(top: 10, bottom: 10),
          child: Text(
            '●// PDP Academy',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w800,
              fontSize: 28,
            ),
          ),
        ),
      ),
    ),
  ),
);

Center container = Center(
  child: Container(
    margin: const EdgeInsets.all(15),
    alignment: Alignment.center,
    height: 300,
    width: 300,
    color: Colors.amberAccent,
    child: const Icon(
      Icons.lightbulb,
      size: 90,
      color: Colors.white,
    ),
  ),
);

const margin = EdgeInsets.symmetric(vertical: 12, horizontal: 24);
const colors = [
  Colors.amberAccent,
  Colors.greenAccent,
  Colors.redAccent,
  Colors.blue
];

Column column = Column(
  children: [
    Container(margin: margin, height: 100, color: colors[0]),
    Container(margin: margin, height: 100, color: colors[1]),
    Container(margin: margin, height: 100, color: colors[2]),
    Container(margin: margin, height: 100, color: colors[3]),
  ],
);

Center row = Center(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(margin: margin, width: 50, height: 100, color: colors[0]),
      Container(margin: margin, width: 50, height: 100, color: colors[1]),
      Container(margin: margin, width: 50, height: 100, color: colors[2]),
      Container(margin: margin, width: 50, height: 100, color: colors[3]),
    ],
  ),
);

Column example1 = Column(
  children: <Widget>[
    Container(color: Colors.blue, height: 200),
    Expanded(child: Container(color: Colors.amber)),
    Container(color: Colors.blue, height: 200),
  ],
);

Row example2 = Row(
  children: <Widget>[
    Container(color: Colors.blue, width: 100),
    Expanded(child: Container(color: Colors.amber)),
    Container(color: Colors.blue, width: 100),
  ],
);

Padding exercise1 = Padding(
  padding: const EdgeInsets.all(15),
  child: Column(
    children: <Widget>[
      Expanded(child: Container(color: Colors.blue)),
      Container(color: Colors.white, height: 15),
      Expanded(child: Container(color: Colors.blue)),
    ],
  ),
);

Padding exercise2 = Padding(
  padding: const EdgeInsets.all(15),
  child: Row(
    children: <Widget>[
      Expanded(child: Container(color: Colors.blue)),
      Container(color: Colors.white, width: 15),
      Expanded(child: Container(color: Colors.blue)),
    ],
  ),
);

Padding exercise3 = Padding(
  padding: const EdgeInsets.all(15),
  child: Row(
    children: <Widget>[
      Expanded(child: Container(color: Colors.blue)),
      Container(color: Colors.white, width: 15),
      Expanded(child: Container(color: Colors.blue)),
      Container(color: Colors.white, width: 15),
      Expanded(child: Container(color: Colors.blue)),
    ],
  ),
);

Center exercise4 = Center(
  child: Padding(
    padding: const EdgeInsets.all(15),
    child: Container(
      width: 400,
      height: 400,
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.blue,
              child: Column(
                children: <Widget>[
                  Expanded(child: Container(color: Colors.blue)),
                  Container(color: Colors.white, height: 15),
                  Expanded(child: Container(color: Colors.blue)),
                ],
              ),
            ),
          ),
          Container(color: Colors.white, width: 15),
          Expanded(
            child: Container(
              color: Colors.blue,
              child: Column(
                children: <Widget>[
                  Expanded(child: Container(color: Colors.blue)),
                  Container(color: Colors.white, height: 15),
                  Expanded(child: Container(color: Colors.blue)),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  ),
);

Center exercise5 = Center(
  child: Padding(
    padding: const EdgeInsets.all(15),
    child: Container(
      width: 400,
      height: 400,
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.blue,
              child: Column(
                children: <Widget>[
                  Expanded(child: Container(color: Colors.blue)),
                ],
              ),
            ),
          ),
          Container(color: Colors.white, width: 15),
          Expanded(
            child: Container(
              color: Colors.blue,
              child: Column(
                children: <Widget>[
                  Expanded(child: Container(color: Colors.blue)),
                  Container(color: Colors.white, height: 15),
                  Expanded(child: Container(color: Colors.blue)),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  ),
);

Center exercise6 = Center(
  child: Padding(
    padding: const EdgeInsets.all(15),
    child: Container(
      width: 400,
      height: 400,
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.blue,
              child: Column(
                children: <Widget>[
                  Expanded(child: Container(color: Colors.blue)),
                  Container(color: Colors.white, height: 15),
                  Expanded(child: Container(color: Colors.blue)),
                ],
              ),
            ),
          ),
          Container(color: Colors.white, width: 15),
          Expanded(
            child: Container(
              color: Colors.blue,
              child: Column(
                children: <Widget>[
                  Expanded(child: Container(color: Colors.blue)),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  ),
);

Center stack = Center(
  child: Stack(
    alignment: Alignment.center,
    children: <Widget>[
      Container(height: 400, width: 400, color: Colors.blueAccent),
      Container(height: 300, width: 300, color: Colors.greenAccent),
      Container(height: 200, width: 200, color: Colors.amber),
    ],
  ),
);

Center wrap = Center(
  child: Wrap(
    children: <Widget>[
      for (int i = 0; i < Colors.accents.length - 2; i++)
        Container(height: 100, width: 100, color: Colors.accents[i])
    ],
  ),
);

/// Home tasks

Container oneColumn = Container(
  color: Colors.blueAccent,
);

Row twoColumns = Row(
  children: <Widget>[
    Expanded(
        child: Container(
          color: Colors.blue,
        )),
    Container(
      color: Colors.white,
      width: 20,
    ),
    Expanded(child: Container(color: Colors.blue)),
  ],
);

Row threeColumns = Row(
  children: <Widget>[
    Expanded(
        child: Container(
          color: Colors.blue,
        )),
    Container(
      color: Colors.white,
      width: 20,
    ),
    Expanded(child: Container(color: Colors.blue)),
    Container(
      color: Colors.white,
      width: 20,
    ),
    Expanded(child: Container(color: Colors.blue)),
  ],
);

Row fourColumns = Row(
  children: <Widget>[
    Expanded(
        child: Container(
          color: Colors.blue,
        )),
    Container(
      color: Colors.white,
      width: 20,
    ),
    Expanded(child: Container(color: Colors.blue)),
    Container(
      color: Colors.white,
      width: 20,
    ),
    Expanded(child: Container(color: Colors.blue)),
    Container(
      color: Colors.white,
      width: 20,
    ),
    Expanded(child: Container(color: Colors.blue)),
  ],
);

Column twoRows = Column(
  children: <Widget>[
    Expanded(
        child: Container(
          color: Colors.blue,
        )),
    Container(
      color: Colors.white,
      height: 40,
    ),
    Expanded(
        child: Container(
          color: Colors.blue,
        )),
  ],
);

Column threeRows = Column(
  children: <Widget>[
    Expanded(
        child: Container(
          color: Colors.blue,
        )),
    Container(
      color: Colors.white,
      height: 20,
    ),
    Expanded(
        child: Container(
          color: Colors.blue,
        )),
    Container(
      color: Colors.white,
      height: 20,
    ),
    Expanded(
        child: Container(
          color: Colors.blue,
        )),
  ],
);

Column fourRows = Column(
  children: <Widget>[
    Expanded(
        child: Container(
          color: Colors.blue,
        )),
    Container(
      color: Colors.white,
      height: 20,
    ),
    Expanded(
        child: Container(
          color: Colors.blue,
        )),
    Container(
      color: Colors.white,
      height: 20,
    ),
    Expanded(
        child: Container(
          color: Colors.blue,
        )),
    Container(
      color: Colors.white,
      height: 20,
    ),
    Expanded(
        child: Container(
          color: Colors.blue,
        )),
  ],
);

Column fiveRows = Column(
  children: <Widget>[
    Expanded(
        child: Container(
          color: Colors.blue,
        )),
    Container(
      color: Colors.white,
      height: 20,
    ),
    Expanded(
        child: Container(
          color: Colors.blue,
        )),
    Container(
      color: Colors.white,
      height: 20,
    ),
    Expanded(
        child: Container(
          color: Colors.blue,
        )),
    Container(
      color: Colors.white,
      height: 20,
    ),
    Expanded(
        child: Container(
          color: Colors.blue,
        )),
    Container(
      color: Colors.white,
      height: 20,
    ),
    Expanded(
        child: Container(
          color: Colors.blue,
        )),
  ],
);

Column sixRows = Column(
  children: <Widget>[
    Expanded(
        child: Container(
          color: Colors.blue,
        )),
    Container(color: Colors.white, height: 20),
    Expanded(child: Container(color: Colors.blue)),
    Container(color: Colors.white, height: 20),
    Expanded(child: Container(color: Colors.blue)),
    Container(color: Colors.white, height: 20),
    Expanded(child: Container(color: Colors.blue)),
    Container(color: Colors.white, height: 20),
    Expanded(
      child: Container(color: Colors.blue),
    ),
    Container(color: Colors.white, height: 20),
    Expanded(
      child: Container(color: Colors.blue),
    ),
  ],
);

// rotate the phone to see result
Wrap largeGrid = Wrap(
  children: <Widget>[
    for (int i = 0; i < Colors.accents.length; i++)
      Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          width: 400,
          height: 200,
          color: Colors.accents[i],
        ),
      )
  ],
);

Wrap smallGrid = Wrap(
  children: <Widget>[
    for (int i = 0; i < Colors.accents.length; i++)
      for (int i = 0; i < Colors.accents.length; i++)
        Padding(
          padding: const EdgeInsets.all(3),
          child: Container(
            width: 100,
            height: 100,
            color: Colors.accents[i],
          ),
        )
  ],
);

Column mosaicOne = Column(
  mainAxisAlignment: MainAxisAlignment.end,
  children: <Widget>[
    Container(color: Colors.blue, height: 100,)
  ],

);

void main() {
  runApp(
    MaterialApp(
// debugShowCheckedModeBanner: false,
      home: Scaffold(
//backgroundColor: const Color(0xFF081A20), // for pdpAcademy3 Colors.white
        body: mosaicOne,
        /// for new_screen task, just comment it, then run
      ),
    ),
  );
}

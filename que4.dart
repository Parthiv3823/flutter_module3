import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: colors1(),
    );
  }
}

class colors1 extends StatefulWidget {
  const colors1({Key? key}) : super(key: key);

  @override
  State<colors1> createState() => _colors1State();
}

class _colors1State extends State<colors1> {
  void getRandomColor() {
    var index = Random().nextInt(Colorlist.length-1);
    print('index : $index');
    setState(() {
      selectColors = Colorlist[index];
    });
  }
  var Colorlist = <Color>[
    Colors.white,
    Colors.red,
    Colors.blue,
    Colors.amberAccent,
    Colors.teal,
    Colors.purple,
    Colors.black87
  ];
  var selectColors = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: selectColors,
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Container(
          child: ElevatedButton(
            child: Text("Change The BackGround"),
            onPressed: () {
              getRandomColor();
            },
          ),
        ),
      ),
    );
  }
}

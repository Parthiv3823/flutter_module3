import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: qustion7(),
    );
  }
}

class qustion7 extends StatefulWidget {
  const qustion7({Key? key}) : super(key: key);

  @override
  State<qustion7> createState() => _qustion7State();
}

class _qustion7State extends State<qustion7> {
  bool ischecked = false;
  bool cricket = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Column(
          children: <Widget>[
            Checkbox(
              value: ischecked,
              onChanged: (value) {
                setState(() {
                  ischecked = value!;
                });
              },
            ),
            ischecked
                ? Text(
              'Checkbox is checked',
              style: TextStyle(fontSize: 20.0),
            )
                : SizedBox(),
            Checkbox(value: cricket, onChanged: (value) {
              setState(() {
                cricket = value!;
              });
            },),
            cricket ? Text("The Select Cricket") : SizedBox(
              height: 20,
            )
          ],
        ),);
  }
}

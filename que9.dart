import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: q9(),
    );
  }
}

class q9 extends StatefulWidget {
  const q9({Key? key}) : super(key: key);

  @override
  State<q9> createState() => _q9State();
}

class _q9State extends State<q9> {
  var _selectedColors = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _selectedColors,
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Container(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text("Select To Change The BackGround Colors",style: TextStyle(fontStyle: FontStyle.italic,fontWeight:
              FontWeight.bold,color: Colors.white,fontSize: 20)),
            ),
            RadioListTile(
              title: Text("Red"),
              value: Colors.red,
              groupValue: _selectedColors,
              onChanged: (value) {
                setState(() {
                  _selectedColors = value!;
                });
              },
            ),
            SizedBox(
              height: 20,
            ),
            RadioListTile(
              title: Text("Blues"),
              value: Colors.blue,
              groupValue: _selectedColors,
              onChanged: (value) {
                setState(() {
                  _selectedColors = value!;
                });
              },
            ),
            SizedBox(
              height: 20,
            ),
            RadioListTile(
              title: Text("White"),
              value: Colors.white,
              groupValue: _selectedColors,
              onChanged: (value) {
                setState(() {
                  _selectedColors = value!;
                });
              },
            ),
            SizedBox(
              height: 20,
            ),
            RadioListTile(
              title: Text("purple"),
              value: Colors.purple,
              groupValue: _selectedColors,
              onChanged: (value) {
                setState(() {
                  _selectedColors = value!;
                });
              },
            ),
            SizedBox(
              height: 20,
            ),
            RadioListTile(
              title: Text("teal"),
              value: Colors.teal,
              groupValue: _selectedColors,
              onChanged: (value) {
                setState(() {
                  _selectedColors = value!;
                });
              },
            ),
          ],
        )),
      ),
    );
  }
}

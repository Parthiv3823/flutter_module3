import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: fontcheck(),
    );
  }
}

class fontcheck extends StatefulWidget {
  const fontcheck({Key? key}) : super(key: key);

  @override
  State<fontcheck> createState() => _fontcheckState();
}

class _fontcheckState extends State<fontcheck> {
  double defaultcheck = 2.0;

  void increse() {
    setState(() {
      defaultcheck += 1.0;
    });
  }
  void decrese(){
    setState(() {
      defaultcheck -= 1.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Container(
          height: 400,
          width: 400,
          color: Colors.purple,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                    onPressed: () {
                      increse();
                    },
                    icon: Icon(
                      Icons.add,
                      color: Colors.white,
                    )),
              ),
              Text(
                "Hello Welcome To Flutter",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: defaultcheck,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                    onPressed: () {
                      decrese();
                    },
                    icon: Icon(
                      Icons.remove,
                      color: Colors.white,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

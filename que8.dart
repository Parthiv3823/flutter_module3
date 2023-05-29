import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            height: 400,
            width: 400,
            color: Colors.purple,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      child: Image(
                          image: AssetImage("assets/images/pic1.jpg"),
                          fit: BoxFit.fill),
                    ),
                    Container(
                      height: 150,
                      width: 150,
                      child: Image(
                          image: AssetImage("assets/images/pic2.jpg"),
                          fit: BoxFit.fill),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Welcome To Flutter",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.italic),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      child: Image(
                          image: AssetImage("assets/images/pic3.jpg"),
                          fit: BoxFit.fill),
                    ),
                    Container(
                      height: 150,
                      width: 150,
                      child: Image(
                          image: AssetImage("assets/images/pic4.jpg"),
                          fit: BoxFit.fill),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

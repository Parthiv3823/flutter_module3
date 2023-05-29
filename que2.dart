import 'package:flutter/material.dart';
import 'package:m1/Module3/que2_second_rout.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Countes(),
    );
  }
}
class Countes extends StatefulWidget {
  @override
  State<Countes> createState() => _CountesState();
}

class _CountesState extends State<Countes> {
  var _number1 = TextEditingController();
  var _number2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Container(
            height: 250,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: _number1,
                    decoration: InputDecoration(
                      label: Text("Starting Range"),
                      hintText: "Enter the Int Number",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: _number2,
                    decoration: InputDecoration(
                      label: Text("Ending Range"),
                      hintText: "Enter the Int Number",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                ElevatedButton(onPressed: () {
                    int num1 = int.parse(_number1.text);
                    int num2 = int.parse(_number2.text);
                  // user u1=user(startingRange: name1, endingRange: name2);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Counter1(num1,num2),));
                }, child: Text("Second Routes"))
              ],
            )
        ),
      ),
    );
  }
}


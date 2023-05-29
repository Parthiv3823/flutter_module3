import 'package:flutter/material.dart';
import 'package:m1/Module3/que6_second_routs.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: qustion6(),
    );
  }
}

class qustion6 extends StatefulWidget {
  const qustion6({Key? key}) : super(key: key);

  @override
  State<qustion6> createState() => _qustion6State();
}
class _qustion6State extends State<qustion6> {
  var _number = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Container(
          height: 500,
          width: 400,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: TextField(
                  controller: _number,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    label: Text("Enter the Number"),
                    hintText: "Nmber To TextFild ",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                    )
                  ),
                ),
              ),
              ElevatedButton(onPressed: () {
                int number= int.parse(_number.text);

                Navigator.push(context, MaterialPageRoute(builder: (context) => second_screens(number),));
              }, child: Text("Navigate To Second Activty"))
            ],
          ),
        ),
      ),
    );
  }
}

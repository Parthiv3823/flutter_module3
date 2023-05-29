import 'package:flutter/material.dart';

void main() {
  runApp(Que1());
}
class Que1 extends StatefulWidget {
  @override
  _ReverseNumberAppState createState() => _ReverseNumberAppState();
}
class _ReverseNumberAppState extends State<Que1> {
  TextEditingController _numberController = TextEditingController();

  String _getReversedNumber(String number) {
    String reversed = '';
    for (int i = number.length-1;i>=0;i--) {
      reversed += number[i];
    }
    return reversed;
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Que1'),
        ),
        body: Container(
          padding: EdgeInsets.all(50),
          child: Column(
            children: [
              TextField(
                controller: _numberController,
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {

                  });
                },
                decoration: InputDecoration(
                  labelText: 'Enter a number',
                ),
              ),
              SizedBox(height:30),
              TextField(
                enabled: false,
                decoration: InputDecoration(
                  labelText: 'Reversed Number',
                  filled: true,
                  fillColor: Colors.grey[250],
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
                controller: TextEditingController(
                  text: _getReversedNumber(_numberController.text),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

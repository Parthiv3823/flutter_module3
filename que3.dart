import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: calculator(),
    );
  }
}

class calculator extends StatefulWidget {
  const calculator({Key? key}) : super(key: key);

  @override
  State<calculator> createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  var _num1 = TextEditingController();
  var _num2 = TextEditingController();
  var chechk_condition = "Add";
  String result = '';
  void calculate() {
    int num1 = int.parse(_num1.text);
    int num2 = int.parse(_num2.text);

    switch (chechk_condition) {
      case 'Add':
        result = (num1 + num2).toString();
        break;
      case 'Sub':
        result = (num1 - num2).toString();
        break;
      case 'Mul':
        result = (num1 * num2).toString();
        break;
      case 'divid':
        result = (num1 / num2).toString();
        break;
      default:
        result = '';
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text("Calcultor In Flutter",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                child: TextField(
                    keyboardType: TextInputType.number,
                    controller: _num1,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        hintText: "Enter The Number 1",
                        label: Text("First"))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                child: TextField(
                    keyboardType: TextInputType.number,
                    controller: _num2,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        hintText: "Enter The Number 2",
                        label: Text("second"))),
              ),
            ),
            RadioListTile(
              title: Text("Addition"),
              value: "Add",
              groupValue: chechk_condition,
              onChanged: (value) {
                setState(() {
                  chechk_condition = value!.toString();
                });
              },
            ),
            RadioListTile(
              title: Text("Subtraction"),
              value: "Sub",
              groupValue: chechk_condition,
              onChanged: (value) {
                setState(() {
                  chechk_condition = value!.toString();
                });
              },
            ),
            RadioListTile(
              title: Text("Multiplication"),
              value: "Mul",
              groupValue: chechk_condition,
              onChanged: (value) {
                setState(() {
                  chechk_condition = value!.toString();
                });
              },
            ),
            RadioListTile(
              title: Text("Divide"),
              value: "divid",
              groupValue: chechk_condition,
              onChanged: (value) {
                setState(() {
                  chechk_condition = value!.toString();
                });
              },
            ),
            ElevatedButton(onPressed: () {
              calculate();
              setState(() {});
            }, child: Text("Caluculate")),
            Text("Result is ${result}",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),)
          ],
        ));
  }
}
import 'package:flutter/material.dart';

class Counter1 extends StatelessWidget {
  int num1;
  int num2;
  Counter1(this.num1, this.num2);

  @override
  Widget build(BuildContext context) {
    List<int> numbers = [];
    for(int i=num1;i<num2;i++){
      numbers.add(i);
    }
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Second Page"),
        ),
        body: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(numbers[index].toString()),
            );
          },
        ),
    )
    );
  }
}


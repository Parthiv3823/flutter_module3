import 'package:flutter/material.dart';

class second_screens extends StatelessWidget {
  int num;

  second_screens(this.num);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Second Screens",
      home:  Scaffold(
        appBar: AppBar(
          title: Text("Second Screens"),
        ),
        body: ListView.builder(
          itemCount: num,itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              decoration: InputDecoration(
                  label: Text("Enter the Name"),
                  hintText: "Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )
              ),
            ),
          );
        },),
      ),
    );
  }
}

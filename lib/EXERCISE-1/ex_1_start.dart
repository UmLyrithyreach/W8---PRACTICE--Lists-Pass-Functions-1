import 'package:flutter/material.dart';

List<String> colors = ["red", "blue", "green"];
List<Widget> getColors(){
  return colors.map((items) => Text(items)).toList();
}

class Ex1 extends StatelessWidget {
  const Ex1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              Label("Method 1: Loop in Array", bold: true),
              for (var i in colors) Text("Item: ${i.toString()}"),
              Label("Method 2: Map", bold: true),
              ...colors.map((items) => Text(items)),
              Label("Method 23: Dedicated Function", bold: true),
              ...getColors(),
            ],
          ),
        ),
      ),
    );
  }
}

class Label extends StatelessWidget {
  const Label(this.text, {super.key, this.bold = false});

  final bool bold;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: (bold ? FontWeight.bold : FontWeight.normal),
      ),
    );
  }
}

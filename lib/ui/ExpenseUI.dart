import 'package:flutter/material.dart';

class Expenseui extends StatelessWidget {
  const Expenseui({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Expenses App"), backgroundColor: Colors.blue),
      body: Center(
        child: Container(
          decoration: BoxDecoration(color: Colors.blue),
          width: 100,
          height: 100,
        ),
      ),
    );
  }
}

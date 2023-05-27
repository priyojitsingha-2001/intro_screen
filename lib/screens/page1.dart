import 'package:flutter/material.dart';

class Page_1 extends StatelessWidget {
  const Page_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blueGrey,
        child: Center(
          child: Text(
            "Page 1",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Page_2 extends StatelessWidget {
  const Page_2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.lightGreen,
        child: Center(
            child: Text(
          "Page 2",
          style: TextStyle(fontSize: 20),
        )),
      ),
    );
  }
}

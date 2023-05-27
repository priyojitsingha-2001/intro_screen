import 'package:flutter/material.dart';

class Page_3 extends StatelessWidget {
  const Page_3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amber,
        child: Center(
          child: Text(
            "Page 3",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}

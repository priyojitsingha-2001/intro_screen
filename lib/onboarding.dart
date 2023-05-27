import 'package:flutter/material.dart';
import 'package:introscreens/homePage.dart';
import 'package:introscreens/screens/page1.dart';
import 'package:introscreens/screens/page2.dart';
import 'package:introscreens/screens/page3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding_screen extends StatefulWidget {
  Onboarding_screen({super.key});

  @override
  State<Onboarding_screen> createState() => _Onboarding_screenState();
}

class _Onboarding_screenState extends State<Onboarding_screen> {
  final _controller = PageController();
  // page controller
  bool onlastpage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onlastpage = (index == 2);
              });
            },
            scrollDirection: Axis.horizontal,
            children: [
              Page_1(),
              Page_2(),
              Page_3(),
            ],
          ),
          // dot indicator
          Container(
            alignment: Alignment(0, 0.7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //skip to last
                GestureDetector(
                  child: Text("SKIP"),
                  onTap: () {
                    _controller.jumpToPage(2);
                  },
                ),
                //dot indicator
                SmoothPageIndicator(controller: _controller, count: 3),
                //next or done
                onlastpage
                    ? GestureDetector(
                        child: Text("DONE"),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return HomePage();
                          }));
                        },
                      )
                    : GestureDetector(
                        child: Text("NEXT"),
                        onTap: () {
                          _controller.nextPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeIn,
                          );
                        },
                      ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}

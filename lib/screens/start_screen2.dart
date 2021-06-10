import 'package:flutter/material.dart';
import 'package:slide_countdown_clock/slide_countdown_clock.dart';

class screen2 extends StatefulWidget {
  screen2({Key key}) : super(key: key);

  @override
  _screen2State createState() => _screen2State();
}

class _screen2State extends State<screen2> {
  Duration _duration = Duration(minutes: 2);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xFF79D6B5),
          title: Text(
            'snoople',
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 30,
              color: Color(0xFFF1F1F1),
            ),
          ),
        ),
        backgroundColor: Color(0xFFF5F5F5),
        drawer: Drawer(),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(25),
                  child: Text(
                    "someone begin",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.w300, fontSize: 40),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(50, 50, 50, 80),
                  child: Text(
                    "Tell us your lifestory in two minutes",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.w300, fontSize: 40),
                  ),
                ),
                SlideCountdownClock(
                  duration: _duration,
                  slideDirection: SlideDirection.Up,
                  separator: ":",
                  textStyle: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  separatorTextStyle: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF79D6B5),
                  ),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Color(0xFF79D6B5), shape: BoxShape.circle),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => screen2(),
                    //   ),
                    // );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xFF79D6B5),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    height: 50,
                    width: 120,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "OK",
                        // textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade700,
                        ),
                      ),
                    ),
                    // color: Color(0xFF79D6B5),

                    margin: EdgeInsets.fromLTRB(200, 100, 0, 5),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

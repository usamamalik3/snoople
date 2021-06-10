import 'package:flutter/material.dart';

import 'package:snoople/screens/start_screen2.dart';

class screen extends StatefulWidget {
  screen({Key key}) : super(key: key);

  @override
  _screenState createState() => _screenState();
}

class _screenState extends State<screen> {
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
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 130, horizontal: 80),
                  child: Text(
                    "Listen to each other in peace having fun without evaluating   Have Fun!",
                    style: TextStyle(fontWeight: FontWeight.w300, fontSize: 40),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => screen2(),
                      ),
                    );
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

                    margin: EdgeInsets.fromLTRB(200, 0, 0, 5),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

import 'package:flutter/material.dart';

//screen 8 is missing, you need to change state when all palyers join snoople then screen 8 should be appeared

class Congrats extends StatefulWidget {
  @override
  _CongratsState createState() => _CongratsState();
}

class _CongratsState extends State<Congrats> {
  String code = 'WXYZ';
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Center(
                child: Text(
              'Congratulations!',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Text(
              'You created a snoople.',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(children: [
                TextSpan(
                  text: 'The code to join is: \n \n',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.black),
                ),
                TextSpan(
                  text: code,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Color(0xFF79D6B5),
                  ),
                )
              ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              'Waiting for other players to join',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'start_screen1.dart';

class player extends StatefulWidget {
  final int player_no;
  player({Key key, @required this.player_no}) : super(key: key);

  @override
  _playerState createState() => _playerState();
}

class _playerState extends State<player> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
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
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(50),
              child: Text(
                "Please type in the name of players",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
              ),
            ),
            ...List.generate(
                widget.player_no,
                (index) => Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'David',
                          hintStyle: TextStyle(
                            fontSize: 18,
                            color: Colors.grey,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    )).toList(),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => screen(),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xFF79D6B5),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                height: 120,
                width: 320,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Let's start",
                    // textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade700,
                    ),
                  ),
                ),
                // color: Color(0xFF79D6B5),
                margin: EdgeInsets.symmetric(vertical: 14, horizontal: 20),
                // padding: EdgeInsets.fromLTRB(30, 30, 20, 10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

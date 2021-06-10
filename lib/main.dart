import 'package:flutter/material.dart';
import 'package:snoople/screens/hotels_list.dart';

import 'package:snoople/screens/second.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Second(),
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
                    "Snoople now",
                    // textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade700,
                    ),
                  ),
                ),
                // color: Color(0xFF79D6B5),
                margin: EdgeInsets.fromLTRB(50, 130, 50, 20),
                // padding: EdgeInsets.fromLTRB(30, 30, 20, 10),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Hotels(),
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
                    "Meet someone to snoople now",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade700,
                    ),
                  ),
                ),
                // color: Color(0xFF79D6B5),
                margin: EdgeInsets.fromLTRB(50, 30, 50, 20),
                // padding: EdgeInsets.fromLTRB(30, 30, 20, 10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

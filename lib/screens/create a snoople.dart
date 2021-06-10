import 'package:flutter/material.dart';
import 'package:snoople/screens/congrats.dart';

class CreateSnoople extends StatefulWidget {
  @override
  _CreateSnoopleState createState() => _CreateSnoopleState();
}

class _CreateSnoopleState extends State<CreateSnoople> {
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Center(
                child: Text(
              'How many players?',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            )),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Congrats(),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFF79D6B5),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              height: 50,
              width: 250,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "2",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade700,
                  ),
                ),
              ),
              margin: EdgeInsets.fromLTRB(50, 30, 50, 20),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Congrats(),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFF79D6B5),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              height: 50,
              width: 250,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "3",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade700,
                  ),
                ),
              ),
              margin: EdgeInsets.fromLTRB(50, 20, 50, 20),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Congrats(),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFF79D6B5),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              height: 50,
              width: 250,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "4",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade700,
                  ),
                ),
              ),
              margin: EdgeInsets.fromLTRB(50, 20, 50, 20),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Congrats(),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFF79D6B5),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              height: 50,
              width: 250,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "5",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade700,
                  ),
                ),
              ),
              margin: EdgeInsets.fromLTRB(50, 20, 50, 20),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Congrats(),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFF79D6B5),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              height: 50,
              width: 250,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "6",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade700,
                  ),
                ),
              ),
              margin: EdgeInsets.fromLTRB(50, 20, 50, 20),
            ),
          ),
        ],
      ),
    );
  }
}

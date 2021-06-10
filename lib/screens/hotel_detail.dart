import 'package:flutter/material.dart';

import 'package:snoople/screens/hotel.dart';

import 'hotel_list2.dart';

// ignore: camel_case_types
class Hotel_detail extends StatelessWidget {
  final Product hotel;
  const Hotel_detail({Key key, this.hotel}) : super(key: key);

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
            child: Container(
              width: 370,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                    child: Image.asset(
                      hotel.pic,
                      width: 390,
                      height: 250,
                    ),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                          child: Text(
                            hotel.title,
                            style: TextStyle(
                                fontWeight: FontWeight.w800, fontSize: 22),
                          ),
                        ),
                        // hotel.rating,
                      ]),
                  Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                  Text(
                    hotel.adress,
                    style: TextStyle(fontWeight: FontWeight.w300, fontSize: 36),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Hotel2(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 90,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xFF79D6B5),
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        height: 120,
                        width: 320,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Snoople here",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey.shade700,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

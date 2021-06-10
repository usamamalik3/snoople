import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:snoople/screens/hotel.dart';
import 'package:snoople/screens/hotel_detail.dart';

class Hotels extends StatefulWidget {
  Hotels({Key key}) : super(key: key);

  @override
  _HotelsState createState() => _HotelsState();
}

class _HotelsState extends State<Hotels> {
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
      body: GridView.builder(
          itemCount: products.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 1.25, crossAxisCount: 1),
          itemBuilder: (context, index) => Hotel_list(
                hotel: products[index],
              )),
    );
  }
}

class Hotel_list extends StatelessWidget {
  final Product hotel;
  final Function press;

  const Hotel_list({
    Key key,
    this.hotel,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Hotel_detail(
                hotel: hotel,
              ),
            ),
          );
        },
        child: Container(
          width: 370,
          child: Column(
            children: [
              Image.asset(
                hotel.pic,
                width: 390,
                height: 250,
              ),
              Padding(
                  padding: EdgeInsets.symmetric(
                vertical: 2,
              )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    hotel.title,
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 22),
                  ),
                  RatingBar.builder(
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 20,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 2)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    hotel.adress,
                    style: TextStyle(fontWeight: FontWeight.w300, fontSize: 22),
                  ),
                  Text(
                    "\$${hotel.price}",
                    style: TextStyle(fontWeight: FontWeight.w300, fontSize: 22),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

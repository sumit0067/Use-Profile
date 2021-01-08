import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                Icons.person,
                color: Colors.orange,
                size: 18,
              ),
              Text(
                'About',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              )
            ],
          ),
          Container(
            child: Card(
              elevation: 5,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: 20, right: 20, top: 15, bottom: 10),
                    child: Row(
                      children: [
                        Icon(
                          Icons.date_range_rounded,
                          color: Colors.orange,
                          size: 18,
                        ),
                        Text(
                          'Join in September,2020',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 20, right: 20, top: 5, bottom: 10),
                    child: Row(
                      children: [
                        Icon(
                          Icons.check_circle_rounded,
                          color: Colors.orange,
                          size: 18,
                        ),
                        Text(
                          'Verified',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 20, right: 20, top: 5, bottom: 10),
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          color: Colors.orange,
                          size: 18,
                        ),
                        Text(
                          'Ahmadabad',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 20, right: 20, top: 5, bottom: 10),
                    child: Row(
                      children: [
                        Icon(
                          Icons.message,
                          color: Colors.orange,
                          size: 18,
                        ),
                        Text(
                          'Speaks English,Italian',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  Divider(
                    height: 2,
                    color: Colors.grey,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 20, right: 20, top: 5, bottom: 10),
                    child: Text(
                      'Visit Venice for an amazing and unforgettable adventure.',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../model/destination_model.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Menu
        Container(
          height: 250,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.menu_book_rounded,
                      color: Colors.orange,
                      size: 18,
                    ),
                    SizedBox(width: 5),
                    Text(
                      'Menu',
                      style: TextStyle(fontFamily: 'mont serrat', fontSize: 18),
                    )
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: destinations.length,
                  itemBuilder: (context, index) {
                    Destination destination = destinations[index];
                    return Card(
                      child: Container(
                        height: 100,
                        width: double.infinity,
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image(
                                  fit: BoxFit.cover,
                                  image: AssetImage(destination.imageUrl),
                                  height: 80,
                                  width: 80,
                                ),
                              ),
                            ),
                            Container(
                              width: 270,
                              height: 120,
                              child: Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(destination.city),
                                        Text(
                                          '\$ 14',
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      destination.description,
                                      overflow: TextOverflow.fade,
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 15),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';

class UserData extends StatefulWidget {
  final List menuTitle;

  UserData({Key key, this.menuTitle}) : super(key: key);

  @override
  _UserDataState createState() => _UserDataState();
}

class _UserDataState extends State<UserData> {
  Widget getList(e) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Container(
          padding: EdgeInsets.only(left: 20, right: 20, top: 8, bottom: 8),
          decoration: BoxDecoration(
              border: Border.all(
                color: e['select'] ? Colors.orange : Colors.grey[400],
              ),
              borderRadius: BorderRadius.circular(20)),
          child: Text(
            e['itemName'],
            style: TextStyle(
                fontSize: 18,
                color: e['select'] ? Colors.orange : Colors.grey[400]),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: Colors.white,
      padding: EdgeInsets.only(bottom: 10),
      child: Stack(
        children: [
          //back ground image
          Image.network(
            'https://post.healthline.com/wp-content/uploads/2020/07/pizza-beer-1200x628-facebook-1200x628.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: 150,
          ),

          //App bar design
          Padding(
            padding: EdgeInsets.only(left: 5, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.arrow_back_ios_outlined,
                  color: Colors.white,
                  size: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Row(
                    children: [
                      Icon(
                        Icons.share,
                        color: Colors.white,
                        size: 30,
                      ),
                      SizedBox(width: 20),
                      Icon(
                        Icons.bookmark_outline,
                        color: Colors.white,
                        size: 30,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          //user Image here
          Positioned(
            top: 100,
            left: 20,
            child: Container(
              height: 90,
              width: 90,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    onError: (_, s) => CircularProgressIndicator(),
                    image: NetworkImage(
                        'https://hotelintel.co/content/images/2019/02/chefimage.jpg'),
                  ),
                  border: Border.all(color: Colors.white, width: 3)),
            ),
          ),

          //name and other thing
          Positioned(
            top: 200,
            left: 25,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Andrew Lee',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1,
                              fontFamily: 'mont serrat'),
                        ),
                        SizedBox(width: 5),
                        Icon(
                          Icons.check_circle_rounded,
                          color: Colors.green,
                          size: 18,
                        )
                      ],
                    ),
                    Text(
                      'Active Now',
                      style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 12,
                          fontFamily: 'mont serrat'),
                    ),
                  ],
                ),
                SizedBox(width: 60),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                        ),
                        SizedBox(width: 5),
                        Text(
                          '4.5',
                          style: TextStyle(
                              color: Colors.orange,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'mont serrat'),
                        ),
                      ],
                    ),
                    Text(
                      '351 Ratting',
                      style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 12,
                          fontFamily: 'mont serrat'),
                    ),
                  ],
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.bookmark_outlined,
                          color: Colors.orange,
                        ),
                        SizedBox(width: 5),
                        Text(
                          '12k',
                          style: TextStyle(
                              color: Colors.orange,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'mont serrat'),
                        ),
                      ],
                    ),
                    Text(
                      'BookMarks',
                      style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 12,
                          fontFamily: 'mont serrat'),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ],
            ),
          ),

          //Check Availability button
          Positioned(
              top: 95,
              right: 20,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                onPressed: () {},
                color: Colors.orange,
                child: Text(
                  'Check Availability',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'mont serrat'),
                ),
              )),
          /*ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: widget.menuTitle.map((e) => getList(e)).toList(),
              )
            ],
          )*/
          ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: widget.menuTitle.length.compareTo(0),
            itemBuilder: (context, index) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: widget.menuTitle.map((e) => getList(e)).toList(),
              );

            }
          )
        ],
      ),
    );
  }
}

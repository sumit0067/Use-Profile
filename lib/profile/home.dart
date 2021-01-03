import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:profile_page/profile/Review.dart';
import 'package:profile_page/profile/about.dart';
import 'package:profile_page/profile/menuPage.dart';
import 'package:profile_page/profile/userData.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ScrollController _scrollController;
  var selectSlide;

  List menuTitle = [
    {'itemName': 'Menu', 'select': false},
    {'itemName': 'About', 'select': false},
    {'itemName': 'Review', 'select': false},
  ];

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(changeSelected);
    setState(() {
      selectSlide = menuTitle[0];
      selectSlide['select'] = true;
    });
  }

  changeSelected() {
    /*var maxValue = _scrollController.position.maxScrollExtent;
    var scrollValue = _scrollController.offset.round();
    var divide = maxValue / menuTitle.length + 20;
    var slideValue = (scrollValue / divide).round();
    var currentValue = menuTitle.indexWhere((element) => element['select']);

    print(slideValue);
    setState(() {
      menuTitle[currentValue]['select'] = false;
      selectSlide = menuTitle[slideValue];
      selectSlide['select'] = true;
    });*/

    var scrollValue = _scrollController.position.pixels;
    //print(scrollValue);
    var divide = (scrollValue / 174).round();
    //print(divide);
    var currentIndex = menuTitle.indexWhere((element) => element['select']);
    setState(() {
      menuTitle[currentIndex]['select'] = false;
      selectSlide = menuTitle[divide];
      selectSlide['select'] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            UserData(
              menuTitle: menuTitle,
            ),
            Expanded(
              child: ListView(
                controller: _scrollController,
                scrollDirection: Axis.vertical,
                children: [
                  MenuPage(),
                  AboutPage(),
                  Review(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

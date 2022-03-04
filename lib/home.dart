import 'package:flutter/material.dart';
import 'package:weather_api_integration/main.dart';
import 'package:weather_api_integration/services.dart';
class Home_Page extends StatefulWidget {
  var main;
Home_Page({required this.main});
  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  void initState() {
    WeatheModel().fetchdata();
    print(main);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      child: Text('$main'),
    );
  }
}
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:shoe_online_app/screen/home/home_screen.dart';

class Body extends StatefulWidget {
  const Body({Key key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List menuItems = ["Home", "New in", "Sale", "Profile", "Log out"];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              menuItems.length,
              (index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: 45),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (_) => HomeScreen()),
                          (route) => false);
                      // Navigator.pop(context);
                    },
                    child: ElasticIn(
                      duration: Duration(milliseconds: 400 * index),
                      child: Text(
                        menuItems[index],
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        )
      ],
    );
  }
}

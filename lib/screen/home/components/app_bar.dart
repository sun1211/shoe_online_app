import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoe_online_app/constants.dart';

AppBar HomeAppBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    backgroundColor: kWhiteColors,
    leading: IconButton(
      icon: SvgPicture.asset("assets/images/burger_icon.svg"),
      onPressed: () {
        // Navigator.push(
        // context,
        // MaterialPageRoute(
        //     fullscreenDialog: true, builder: (_) => MenuPage()));
      },
    ),
    actions: [
      IconButton(
          icon: SvgPicture.asset("assets/images/search_icon.svg"),
          onPressed: () {}),
      IconButton(
          icon: SvgPicture.asset("assets/images/filter_icon.svg"),
          onPressed: () {}),
      IconButton(
        icon: Container(
          child: Center(
            child: Text(
              "3",
              style: TextStyle(
                color: kWhiteColors,
                fontSize: 13,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          decoration:
              BoxDecoration(color: kBlackColors, shape: BoxShape.circle),
        ),
        onPressed: () {
          // Navigator.pushReplacement(
          //     context, MaterialPageRoute(builder: (_) => CartPage()));
        },
      ),
    ],
  );
}

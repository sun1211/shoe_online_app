import 'package:flutter/material.dart';
import 'package:shoe_online_app/constants.dart';

AppBar MenuAppBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    backgroundColor: kWhiteColors,
    leading: IconButton(
        icon: Icon(
          Icons.close,
          color: kBlackColors,
        ),
        onPressed: () {
          Navigator.pop(context);
        }),
  );
}

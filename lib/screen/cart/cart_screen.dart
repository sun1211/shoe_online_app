import 'package:flutter/material.dart';
import 'package:shoe_online_app/components/app_bar.dart';
import 'package:shoe_online_app/constants.dart';
import 'package:shoe_online_app/screen/cart/components/body.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColors,
      appBar: HomeAppBar(context),
      body: Body(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shoe_online_app/constants.dart';
import 'package:shoe_online_app/screen/home/components/app_bar.dart';
import 'package:shoe_online_app/screen/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColors,
      appBar: HomeAppBar(context),
      body: Body(),
    );
  }
}

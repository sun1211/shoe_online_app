import 'package:flutter/material.dart';
import 'package:shoe_online_app/constants.dart';
import 'package:shoe_online_app/screen/menu/components/app_bar.dart';
import 'package:shoe_online_app/screen/menu/components/body.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColors,
      appBar: MenuAppBar(context),
      body: Body(),
    );
  }
}

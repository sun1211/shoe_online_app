import 'package:flutter/material.dart';
import 'package:shoe_online_app/constants.dart';
import 'package:shoe_online_app/models/product.dart';
import 'package:shoe_online_app/screen/detail/components/body.dart';
import 'package:shoe_online_app/size_config.dart';

class DetailScreen extends StatelessWidget {
  final Product product;
  const DetailScreen({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kWhiteColors,
      body: Body(
        product: product,
      ),
    );
  }
}

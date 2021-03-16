import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:shoe_online_app/components/product_slider.dart';
import 'package:shoe_online_app/constants.dart';
import 'package:shoe_online_app/models/product.dart';
import 'package:shoe_online_app/size_config.dart';

class HeaderDetail extends StatelessWidget {
  const HeaderDetail({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      //background of list img
      width: SizeConfig.screenWidth,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 2,
            color: kBlackColors.withOpacity(0.1),
            spreadRadius: 1,
          )
        ],
        borderRadius: BorderRadius.circular(30),
        color: kGreyColors,
      ),
      //carosel img
      child: Stack(
        children: <Widget>[
          FadeInDown(
            child: ProductSlider(
              items: product.mulImg,
            ),
          ),
          SafeArea(
            child: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: kBlackColors,
                ),
                onPressed: () {
                  Navigator.pop(context);
                }),
          )
        ],
      ),
    );
  }
}

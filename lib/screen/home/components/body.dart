import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:shoe_online_app/models/product.dart';
import 'package:shoe_online_app/screen/detail/detail_screen.dart';
import 'package:shoe_online_app/screen/home/components/shoe_card.dart';

import 'header.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          HomeHeader(),
          Column(
            children: List.generate(
              productList.length,
              (index) => FadeInDown(
                duration: Duration(milliseconds: 350 * index),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: CardShoe(
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => DetailScreen(
                            product: productList[index],
                          ),
                        ),
                      );
                    },
                    product: productList[index],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

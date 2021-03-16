import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:shoe_online_app/constants.dart';
import 'package:shoe_online_app/models/product.dart';

class Cart extends StatelessWidget {
  const Cart({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(3, (index) {
        return FadeInDown(
          duration: Duration(milliseconds: 350 * index),
          child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
            child: Row(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: kGreyColors,
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 0.5,
                          color: kBlackColors.withOpacity(0.1),
                          blurRadius: 1,
                        )
                      ],
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 10, left: 25, right: 25, bottom: 25),
                    child: Column(
                      children: <Widget>[
                        Center(
                          child: Container(
                            width: 120,
                            height: 70,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(productList[index].img),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      productList[index].name,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "\$ " + productList[index].price,
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "x1",
                          style: TextStyle(
                            fontSize: 14,
                            color: kBlackColors.withOpacity(0.5),
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    )
                  ],
                ))
              ],
            ),
          ),
        );
      }),
    );
  }
}

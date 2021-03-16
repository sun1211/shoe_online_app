import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoe_online_app/constants.dart';
import 'package:shoe_online_app/models/product.dart';
import 'package:shoe_online_app/screen/detail/components/size_menu.dart';

import 'header.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderDetail(product: product),
          SizedBox(
            height: 30,
          ),
          FadeInDown(
            delay: Duration(milliseconds: 300),
            child: Image.asset(
              "assets/images/nike_logo.png",
              width: 70,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          FadeInDown(
            delay: Duration(milliseconds: 350),
            child: Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Text(
                product.name,
                style: TextStyle(
                    fontSize: 35, fontWeight: FontWeight.w600, height: 1.5),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          FadeInDown(
            delay: Duration(milliseconds: 400),
            child: Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Text(
                "\$ " + product.price,
                style: TextStyle(
                    fontSize: 35, fontWeight: FontWeight.w500, height: 1.5),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
              padding: EdgeInsets.only(left: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FadeInDown(
                    delay: Duration(milliseconds: 450),
                    child: Text(
                      "Size",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                  ),
                  FadeInDown(
                    delay: Duration(milliseconds: 450),
                    child: Text(
                      "Size Guide",
                      style: TextStyle(
                        fontSize: 15,
                        color: kBlackColors.withOpacity(0.7),
                      ),
                    ),
                  )
                ],
              )),
          SizedBox(
            height: 25,
          ),
          SizeMenu(
            sizes: product.sizes,
          ),
          SizedBox(
            height: 25,
          ),
          FadeInDown(
            delay: Duration(milliseconds: 550),
            child: Padding(
              padding: EdgeInsets.only(left: 25, right: 25),
              child: Row(
                children: <Widget>[
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 0.5,
                              blurRadius: 1,
                              color: kBlackColors.withOpacity(0.1))
                        ],
                        color: kGreyColors),
                    child: Center(
                      child: SvgPicture.asset("assets/images/heart_icon.svg"),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Flexible(
                      child: FlatButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          color: kBlackColors,
                          onPressed: () {},
                          child: Container(
                            height: 50,
                            child: Center(
                              child: Text(
                                "ADD TO CART",
                                style: TextStyle(
                                    color: kWhiteColors,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          )))
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

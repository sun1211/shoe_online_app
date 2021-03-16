import 'package:flutter/material.dart';
import 'package:shoe_online_app/constants.dart';

import 'cart.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 40, left: 30, right: 30, bottom: 30),
          child: Text(
            "My Bag",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
          ),
        ),
        Cart(),
        SizedBox(
          height: 50,
        ),
        Padding(
          padding: EdgeInsets.only(left: 30, right: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Total",
                style: TextStyle(
                    fontSize: 22,
                    color: kBlackColors.withOpacity(0.5),
                    fontWeight: FontWeight.w600),
              ),
              Text(
                "\$ 508.00",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: FlatButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            color: kBlackColors,
            onPressed: () {},
            child: Container(
              height: 50,
              child: Center(
                child: Text(
                  "CHECKOUT",
                  style: TextStyle(
                      color: kWhiteColors,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}

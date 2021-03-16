import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 30,
        right: 30,
        bottom: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "Shoes",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
          ),
          Row(
            children: <Widget>[
              Text(
                "Sort by",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                width: 8,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Icon(Icons.keyboard_arrow_down),
              )
            ],
          )
        ],
      ),
    );
  }
}

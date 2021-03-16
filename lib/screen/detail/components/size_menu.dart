import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:shoe_online_app/constants.dart';

class SizeMenu extends StatefulWidget {
  final List<String> sizes;
  const SizeMenu({Key key, this.sizes}) : super(key: key);

  @override
  _SizeMenuState createState() => _SizeMenuState();
}

class _SizeMenuState extends State<SizeMenu> {
  int activeSize = 0;
  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      delay: Duration(milliseconds: 500),
      child: Padding(
          padding: EdgeInsets.only(left: 20, right: 25),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(widget.sizes.length, (index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      activeSize = index;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(
                        right: 15, bottom: 5, left: 5, top: 5),
                    child: Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                          color:
                              activeSize == index ? kBlackColors : kGreyColors,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 0.5,
                                blurRadius: 1,
                                color: kBlackColors.withOpacity(0.1))
                          ]),
                      child: Center(
                        child: Text(
                          widget.sizes[index],
                          style: TextStyle(
                              fontSize: 22,
                              color: activeSize == index
                                  ? kWhiteColors
                                  : kBlackColors),
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
          )),
    );
  }
}

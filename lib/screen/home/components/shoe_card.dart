import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoe_online_app/constants.dart';
import 'package:shoe_online_app/models/product.dart';

class CardShoe extends StatelessWidget {
  final Function press;
  final Product product;
  const CardShoe({Key key, this.press, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        child: Stack(
          children: [
            Container(
              //background
              decoration: BoxDecoration(
                color: kGreyColors,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 1,
                    color: kBlackColors.withOpacity(0.1),
                    blurRadius: 2,
                  )
                ],
              ),
              child: Column(
                children: <Widget>[
                  Center(
                    //img
                    child: Container(
                      width: 280,
                      height: 180,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(product.img),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    product.name,
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "\$ " + product.price,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                ],
              ),
            ),
            //favorite icon
            Positioned(
              right: 10,
              child: IconButton(
                icon: SvgPicture.asset(
                  "assets/images/heart_icon.svg",
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}

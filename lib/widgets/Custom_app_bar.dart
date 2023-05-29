import 'package:flutter/material.dart';
import 'package:furniture_ui/core/color.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  // Cart Icon Design
  @override
  Widget build(BuildContext context) {
    return Container(
      color: white,
      margin: EdgeInsets.only(top: 50.0),
      height: 80.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.menu),
          InkWell(
            onTap: () {},
            splashColor: white,
            child: Container(
              height: 60.0,
              width: 50.0,
              decoration: BoxDecoration(
                color: green,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(5.0),
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(5.0),
                ),
              ),
              child: Icon(
                Icons.shopping_cart_outlined,
                color: white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:furniture_ui/core/color.dart';
import 'package:furniture_ui/core/text_style.dart';
import 'package:furniture_ui/data/tab_bar_menu.dart';

class TabBarButton extends StatefulWidget {
  const TabBarButton({Key? key}) : super(key: key);

  @override
  _TabBarButtonState createState() => _TabBarButtonState();
}

class _TabBarButtonState extends State<TabBarButton> {
  int id = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        for (int i = 0; i < tabBarMenu.length; i++)
          InkWell(
            splashColor: Colors.yellow,     // All, chairs, lamps, tables box color change when tap
            onTap: () {
              setState(() {
                id = tabBarMenu[i].id;
              });
            },
            child: Container(
              height: 40.0,
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: id == i ? gray : Colors.white,  // All, chairs, lamps, tables box color change
                borderRadius: BorderRadius.circular(80.0),
              ),
              child: Center(
                child: Text(
                  tabBarMenu[i].name,
                  style: id == i ? tabButtonS : tabButtonU,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
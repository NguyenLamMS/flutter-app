import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'constants.dart';
class BottomNavItem extends StatelessWidget {
  final String svgSrc;
  final String title;
  final Function press;
  final bool isActive;
  const BottomNavItem({
    Key key, this.svgSrc, this.title, this.press, this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        children: [
          SvgPicture.asset(svgSrc, color: isActive ? kActiveIconColor : kTextColor,),
          Text(title, style: TextStyle(color: isActive ? kActiveIconColor : kTextColor),)
        ],
      ),
    );
  }
}
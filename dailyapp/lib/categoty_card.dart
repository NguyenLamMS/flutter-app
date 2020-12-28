import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'constants.dart';

class CategoryCard extends StatelessWidget {
  final String svgSrc;
  final String title;
  final Function press;

  const CategoryCard({
    Key key,
    this.svgSrc,
    this.title,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(19),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(19),
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 17),
                  blurRadius: 17,
                  spreadRadius: -23,
                  color: kShadowColor)
            ]),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: press,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Spacer(),
                  SvgPicture.asset(svgSrc),
                  Spacer(),
                  Text(
                    title,
                    style: Theme.of(context)
                        .textTheme
                        .caption
                        .copyWith(fontSize: 15),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
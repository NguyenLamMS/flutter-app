import 'package:dailyapp/constants.dart';
import 'package:dailyapp/screen/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'bottom_nav_bar.dart';
import 'categoty_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          fontFamily: "Cario",
          scaffoldBackgroundColor: kBackgroundColor,
          textTheme:
              Theme.of(context).textTheme.apply(displayColor: kTextColor)),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: Stack(
        children: [
          Container(
            height: size.height * .45,
            decoration: BoxDecoration(
                color: Color(0xFFeec5b2),
                image: DecorationImage(
                    alignment: Alignment.centerLeft,
                    image:
                        AssetImage("assets/images/undraw_pilates_gpdb.png"))),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                          color: Color(0xFFe8b19c), shape: BoxShape.circle),
                      child: SvgPicture.asset("assets/icons/menu.svg"),
                    ),
                  ),
                  Text(
                    "Good morning \nLam",
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .copyWith(fontWeight: FontWeight.w900),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 30),
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(29.5)),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Search",
                          icon: SvgPicture.asset("assets/icons/search.svg"),
                          border: InputBorder.none),
                    ),
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: [
                        CategoryCard(
                          svgSrc: "assets/icons/Hamburger.svg",
                          title: "Hamburger",
                          press: (){

                          },
                        ),
                        CategoryCard(
                          svgSrc: "assets/icons/Excrecises.svg",
                          title: "Excrecises",
                          press: (){

                          },
                        ),
                        CategoryCard(
                          svgSrc: "assets/icons/Meditation.svg",
                          title: "Meditation",
                          press: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen()));
                          },
                        ),
                        CategoryCard(
                          svgSrc: "assets/icons/yoga.svg",
                          title: "yoga",
                          press: (){

                          },
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
      height: 80,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BottomNavItem(svgSrc: "assets/icons/calendar.svg",title: "Today", press: (){

          },),
          BottomNavItem(svgSrc: "assets/icons/gym.svg", isActive: true, title: "All Exercies", press: (){

          },),
          BottomNavItem(svgSrc: "assets/icons/Settings.svg", title: "Setting", press: (){

          },),
        ],
      ),
    );
  }
}



import 'package:dailyapp/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../main.dart';

class DetailScreen extends StatelessWidget {
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
                color: kBlueLightColor,
                image: DecorationImage(
                    image: AssetImage("assets/images/meditation_bg.png"),
                    fit: BoxFit.fitWidth)),
          ),
          SafeArea(
            child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text("Meditation",
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          .copyWith(fontWeight: FontWeight.w900)),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "3 - 10 MIN Course",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: size.width * .6,
                    child: Text(
                        "Now come to the details or meditation page, Top of the page has a title with a short description"
                        " of the course and on the right side a yoga lady vector with a small search bar"),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    width: size.width * 0.5,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(29)),
                    child: TextField(
                      decoration: InputDecoration(
                          icon: SvgPicture.asset("assets/icons/search.svg"),
                          border: InputBorder.none,
                          hintText: "Search"),
                    ),
                  ),
                  Wrap(
                    spacing: 20,
                    runSpacing: 20,
                    children: [
                      SessionCard(title: "Session 1",isDone: true,),
                      SessionCard(title: "Session 2",),
                      SessionCard(title: "Session 3",),
                      SessionCard(title: "Session 4",),
                      SessionCard(title: "Session 5"),
                      SessionCard(title: "Session 6",),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                    child: Text("Meditation", style: Theme.of(context).textTheme.subtitle2.copyWith(fontSize: 18),),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SvgPicture.asset("assets/icons/Meditation_women_small.svg"),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Basic 2", style: TextStyle(fontWeight: FontWeight.bold),),
                              Text("This is a just Daily Exercises App")
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: SvgPicture.asset("assets/icons/Lock.svg")
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}

class SessionCard extends StatelessWidget {
  final String title;
  final bool isDone;

  const SessionCard({
    Key key,
    this.title,
    this.isDone = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return LayoutBuilder(builder: (context, contrain) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(13),
        child: Container(
          width: contrain.maxWidth / 2 - 10,
          //   padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(13),
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 17),
                    blurRadius: 23,
                    spreadRadius: -13,
                    color: kShadowColor)
              ]),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      width: 43,
                      height: 42,
                      decoration: BoxDecoration(
                        color: isDone ? kBlueColor : Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(color: kBlueColor)
                      ),
                      child: Icon(
                        Icons.play_arrow,
                        color: isDone ? Colors.white : kBlueColor,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      title,
                      style: Theme.of(context).textTheme.subtitle2,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}

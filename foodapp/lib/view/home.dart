import 'package:flutter/material.dart';
import 'detail.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
final index = StateProvider((ref) => 0);
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {
  var view = [HomeFoods(), DetailFoods()];
  @override
  Widget build(BuildContext context) {
      return Consumer(builder: (context, watch,_){
        return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              leading: Image.asset("assets/icon/menu.png"),
              actions: [
                Image.asset(
                  "assets/icon/noti.png",
                ),
                Image.asset("assets/image/avatar.png")
              ],
            ),
            body: view[watch(index).state]
        );
      },);
  }
}

class HomeFoods extends StatelessWidget {
  const HomeFoods({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi Natalia Raikava',
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  .copyWith(fontWeight: FontWeight.w700),
            ),
            Text(
              'Want to oder something to eat ?',
              style: TextStyle(fontWeight: FontWeight.w300),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Choose Category',
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(
                        color: Color(0xFF8A959E),
                        decoration: TextDecoration.underline),
                  ),
                ],
              ),
            ),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                CategotyCard(
                  image: "assets/icon/fish.png",
                  title: "Sea Foods",
                  isActive: true,
                  press: (){
                   context.read(index).state = 1;
                  },
                ),
                CategotyCard(
                  image: "assets/icon/piza.png",
                  title: "Sea Foods",
                  isActive: false,
                  press: (){

                  },
                ),
                CategotyCard(
                  image: "assets/icon/noodles.png",
                  title: "Sea Foods",
                  isActive: false,
                  press: (){

                  },
                ),
                CategotyCard(
                  image: "assets/icon/salad.png",
                  title: "Sea Foods",
                  isActive: false,
                  press: (){

                  },
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Best for you',
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                  Text('See All',
                      style: TextStyle(
                          color: Color(0xFF8A959E),
                          decoration: TextDecoration.underline))
                ],
              ),
            ),
            Wrap(
              spacing: 10,
              children: [
                ProductCard(
                  title: "Prawns Fried rice",
                  price: "\$75",
                  image: "assets/image/rice.png",
                  color: Color(0xFFF7B500),
                ),
                ProductCard(
                  title: "Pastas Cheese",
                  price: "\$50",
                  image: "assets/image/noodles.png",
                  color: Color(0xFF16BA75),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final Color color;
  final String title, price, image;

  const ProductCard({
    Key key,
    this.color,
    this.title,
    this.price,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, container) {
      return Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: container.maxWidth / 2 - 5,
            height: 170,
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(30)),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Text(
                      title,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 15),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        price,
                        style: Theme.of(context).textTheme.headline5.copyWith(
                            fontWeight: FontWeight.w600, color: Colors.white),
                      ),
                      Row(
                        children: [
                          Container(
                            child: Image.asset("assets/icon/cart.png"),
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(7)),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            child: Image.asset("assets/icon/heart.png"),
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(7)),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 60),
            alignment: Alignment.bottomCenter,
            width: container.maxWidth / 2 - 5,
            child: Image.asset(image),
          ),
        ],
      );
    });
  }
}

class CategotyCard extends StatelessWidget {
  final String image;
  final String title;
  final bool isActive;
  final Function press;
  const CategotyCard({
    Key key,
    this.image,
    this.title,
    this.isActive = false, this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return LayoutBuilder(
      builder: (context, contrain) {
        return Container(
          width: contrain.maxWidth / 2 - 5,
          height: size.height * .15,
          decoration: BoxDecoration(
              color: isActive ? Color(0xFF17C37B) : Color(0xFFF6F6F6),
              borderRadius: BorderRadius.circular(25)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: press,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(image),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      title,
                      style: Theme.of(context).textTheme.subtitle2.copyWith(
                          color: isActive ? Colors.white : Colors.black,
                          fontWeight: isActive ? FontWeight.w700 : FontWeight.w300),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

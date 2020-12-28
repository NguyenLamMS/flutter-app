import 'package:flutter/material.dart';

class DetailFoods extends StatelessWidget {
  const DetailFoods({
    Key key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Pasta Noodles',
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'With extra cheese topping above',
                    style: Theme.of(context)
                        .textTheme
                        .subtitle2
                        .copyWith(fontWeight: FontWeight.w400),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Container(
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 15),
                            alignment: Alignment.topRight,
                            width: size.width * .5,
                            height: size.height * 0.45,
                            decoration: BoxDecoration(
                                color: Color(0xFF16BA75),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    bottomLeft: Radius.circular(60))),
                          ),
                          Container(
                            child: Image.asset("assets/image/nodless_big.png"),
                            alignment: Alignment.topCenter,
                          )
                        ],
                      ),
                    ),
                  ),
                  Text('About', style: Theme.of(context).textTheme.headline5.copyWith(fontWeight: FontWeight.w600),),
                  SizedBox(height: 15,),
                  Text('Hexagon gluten-free aesthetic roof party mlkshk bespoke vape wayfarers 8-bit.'
                      ' Fanny pack copper mug blog, humblebrag coloring book seitan next level '
                      'skateboard shaman fashion axe semiotics. Hexagon gluten-free aesthetic roof party mlkshk bespoke vape wayfarers 8-bit.'
                      ' Fanny pack copper mug blog, humblebrag coloring book seitan next level '
                      'skateboard shaman fashion axe semiotics Hexagon gluten-free aesthetic roof party mlkshk bespoke vape wayfarers 8-bit.'
                      ' Fanny pack copper mug blog, humblebrag coloring book seitan next level '
                      'skateboard shaman fashion axe semiotics. Hexagon gluten-free aesthetic roof party mlkshk bespoke vape wayfarers 8-bit.'
                      ' Fanny pack copper mug blog, humblebrag coloring book seitan next level '
                      'skateboard shaman fashion axe semiotics', style: TextStyle(color: Color(0xff8A959E), fontWeight: FontWeight.w300),),

                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Price'),
                  Text('\$55/person', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),)
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(bottom: 15, top: 15),
                      width: size.width * 0.3,
                      child: Text('Add To Cart', style: TextStyle(color: Colors.white),),
                      decoration: BoxDecoration(
                          color: Color(0xffF7B500),
                          borderRadius: BorderRadius.circular(40)
                      ),
                    ),
                    SizedBox(width: 5,),
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(bottom: 15, top: 15),
                      width: size.width * 0.3,
                      child: Text('Add To Cart', style: TextStyle(color: Colors.white),),
                      decoration: BoxDecoration(
                          color: Color(0xffF7B500),
                          borderRadius: BorderRadius.circular(40)
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

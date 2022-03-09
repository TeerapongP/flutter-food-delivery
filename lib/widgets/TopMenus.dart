import 'package:delivery/animetions/ScaleRoute.dart';
import 'package:delivery/page/FoodDetailsPage.dart';
import 'package:flutter/material.dart';

class TopMenus extends StatefulWidget {
  const TopMenus({Key? key}) : super(key: key);

  @override
  _TopMenusState createState() => _TopMenusState();
}

class _TopMenusState extends State<TopMenus> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const <Widget>[
          TopMenuTiles(name: "Sushi", imageUrl: "ic_sushi", slug: ""),
          TopMenuTiles(name: "Pizza", imageUrl: "ic_pizza", slug: ""),
          TopMenuTiles(name: "Cake", imageUrl: "ic_cake", slug: ""),
          TopMenuTiles(name: "Ice Cream", imageUrl: "ic_ice_cream", slug: ""),
          TopMenuTiles(name: "Soft Drink", imageUrl: "ic_soft_drink", slug: ""),
          TopMenuTiles(name: "Burger", imageUrl: "ic_burger", slug: ""),
          TopMenuTiles(name: "Sushi", imageUrl: "ic_sushi", slug: ""),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class TopMenuTiles extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String slug;

  // ignore: use_key_in_widget_constructors
  const TopMenuTiles({
    required this.name,
    required this.imageUrl,
    required this.slug,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {
        Navigator.push(
          context,
          ScaleRoute(
            page: const FoodDetailsPage(),
          ),
        )
      },
      child: Column(
        children: <Widget>[
          Container(
            padding:
                const EdgeInsets.only(left: 10, right: 5, top: 20, bottom: 5),
            decoration: const BoxDecoration(boxShadow: [
              BoxShadow(
                color: Color(0xFFE2F9FA),
                blurRadius: 25.0,
                offset: Offset(0.0, 0.75),
              ),
            ]),
            child: Card(
                color: Colors.white,
                elevation: 0,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(3.0),
                  ),
                ),
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: Center(
                      child: Image.asset(
                    'assets/images/topmenu/' + imageUrl + ".png",
                    width: 24,
                    height: 24,
                  )),
                )),
          ),
          Text(name,
              style: const TextStyle(
                  color: Color(0xFF6e6e71),
                  fontSize: 14,
                  fontWeight: FontWeight.w400)),
        ],
      ),
    );
  }
}

// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../animetions/ScaleRoute.dart';
import '../page/FoodDetailsPage.dart';

class PopularFoodsWidget extends StatefulWidget {
  const PopularFoodsWidget({Key? key}) : super(key: key);

  @override
  _PopularFoodsWidgetState createState() => _PopularFoodsWidgetState();
}

class _PopularFoodsWidgetState extends State<PopularFoodsWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 265,
      width: double.infinity,
      child: Column(
        children: <Widget>[
          const PopularFoodTitle(),
          const Expanded(
            child: PopularFoodItems(),
          )
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class PopularFoodTiles extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String rating;
  final String numberOfRating;
  final String price;

  // ignore: use_key_in_widget_constructors
  const PopularFoodTiles(
      {required this.name,
      required this.imageUrl,
      required this.rating,
      required this.numberOfRating,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // onTap: () {
      //   Navigator.push(context, ScaleRoute(page: FoodDetailsPage()));
      // },
      child: Column(
        children: <Widget>[
          Container(
            padding:
                const EdgeInsets.only(left: 10, right: 5, top: 5, bottom: 5),
            decoration: const BoxDecoration(boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 238, 238, 238),
                blurRadius: 15.0,
              ),
            ]),
            child: Card(
                color: Colors.white,
                elevation: 0,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                ),
                child: SizedBox(
                  width: 170,
                  height: 210,
                  child: Column(
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              alignment: Alignment.topRight,
                              width: double.infinity,
                              padding: const EdgeInsets.only(right: 5, top: 5),
                              child: Container(
                                height: 28,
                                width: 28,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white70,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0xFFfae3e2),
                                        blurRadius: 25.0,
                                        offset: Offset(0.0, 0.75),
                                      ),
                                    ]),
                                // ignore: prefer_const_constructors
                                child: Icon(
                                  Icons.favorite,
                                  color: const Color(0xFF4699C3),
                                  size: 16,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Center(
                                child: Image.asset(
                              'assets/images/popular_foods/' +
                                  imageUrl +
                                  ".png",
                              width: 130,
                              height: 140,
                            )),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            alignment: Alignment.bottomLeft,
                            padding: const EdgeInsets.only(left: 5, top: 5),
                            child: Text(name,
                                style: const TextStyle(
                                    color: Color(0xFF6e6e71),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500)),
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            padding: const EdgeInsets.only(right: 5),
                            child: Container(
                              height: 28,
                              width: 28,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white70,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xFFfae3e2),
                                      blurRadius: 25.0,
                                      offset: Offset(0.0, 0.75),
                                    ),
                                  ]),
                              // ignore: prefer_const_constructors
                              child: Icon(
                                Icons.near_me,
                                color: const Color(0xFF4699C3),
                                size: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Container(
                                alignment: Alignment.topLeft,
                                padding: const EdgeInsets.only(left: 5, top: 5),
                                child: Text(rating,
                                    style: const TextStyle(
                                        color: Color(0xFF6e6e71),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400)),
                              ),
                              Container(
                                padding: const EdgeInsets.only(top: 3, left: 5),
                                child: Row(
                                  children: const <Widget>[
                                    Icon(
                                      Icons.star,
                                      size: 10,
                                      color: Color(0xFF4699C3),
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 10,
                                      color: Color(0xFF4699C3),
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 10,
                                      color: Color(0xFF4699C3),
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 10,
                                      color: Color(0xFF4699C3),
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 10,
                                      color: Color(0xFF9b9b9c),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                padding: const EdgeInsets.only(left: 3, top: 3),
                                child: Text("($numberOfRating)",
                                    style: const TextStyle(
                                        color: Color(0xFF6e6e71),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400)),
                              ),
                            ],
                          ),
                          Container(
                            alignment: Alignment.bottomLeft,
                            padding: const EdgeInsets.only(
                                left: 3, top: 5, right: 1),
                            child: Text(price + ' Bath',
                                style: const TextStyle(
                                    color: Color(0xFF6e6e71),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600)),
                          )
                        ],
                      )
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }
}

class PopularFoodTitle extends StatelessWidget {
  const PopularFoodTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 9, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const Text(
            "Popluar Foods",
            style: TextStyle(
                fontSize: 20,
                color: Color(0xFF3a3a3b),
                fontWeight: FontWeight.w300),
          ),
          const Text(
            "See all",
            style: TextStyle(
                fontSize: 16, color: Colors.blue, fontWeight: FontWeight.w300),
          )
        ],
      ),
    );
  }
}

class PopularFoodItems extends StatelessWidget {
  const PopularFoodItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        // ignore: prefer_const_constructors
        PopularFoodTiles(
          name: " Bread Fried Egg",
          imageUrl: "ic_popular_food_1",
          rating: '4.9',
          numberOfRating: '200',
          price: '45',
        ),
        const PopularFoodTiles(
          name: "Takoyaki",
          imageUrl: "ic_popular_food_3",
          rating: "4.9",
          numberOfRating: "100",
          price: "69",
        ),
        const PopularFoodTiles(
          name: "French Fries",
          imageUrl: "ic_popular_food_4",
          rating: "4.0",
          numberOfRating: "50",
          price: "79",
        ),
        const PopularFoodTiles(
          name: "Bacon Bread",
          imageUrl: "ic_popular_food_5",
          rating: "4.00",
          numberOfRating: "100",
          price: "50",
        ),
        const PopularFoodTiles(
          name: "Tonkatsu Curry",
          imageUrl: "ic_popular_food_2",
          rating: "4.6",
          numberOfRating: "150",
          price: "69",
        ),
        const PopularFoodTiles(
          name: "Shrimp Fried Rice",
          imageUrl: "ic_popular_food_6",
          rating: "4.2",
          numberOfRating: "70",
          price: "79",
        ),
      ],
    );
  }
}

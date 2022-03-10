import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FoodDetailsSlider extends StatelessWidget {
  final String slideImage1;
  final String slideImage2;
  final String slideImage3;
  final String slideImage4;

  // ignore: use_key_in_widget_constructors
  const FoodDetailsSlider(
      {required this.slideImage1,
      required this.slideImage2,
      required this.slideImage3,
      required this.slideImage4});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Carousel(
        images: [
          Image.asset(
            slideImage1,
          ),
          Image.asset(
            slideImage2,
            height: double.infinity,
            width: double.infinity,
          ),
          Image.asset(
            slideImage3,
            height: double.infinity,
            width: double.infinity,
          ),
          Image.asset(
            slideImage4,
            height: double.infinity,
            width: double.infinity,
          ),
        ],
        dotSize: 4.0,
        dotSpacing: 15.0,
        dotColor: Colors.purple,
        indicatorBgPadding: 5.0,
        dotBgColor: Colors.black54.withOpacity(0),
        borderRadius: true,
        radius: const Radius.circular(20),
        moveIndicatorFromBottom: 180.0,
        noRadiusForIndicator: true,
      ),
    );
  }
}

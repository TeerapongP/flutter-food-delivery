import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20,top: 15,bottom: 5),
      child: TextField(

        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            borderSide: BorderSide(
              width: 0,
              color: Color(0xFFD8D6D7),
              style: BorderStyle.none,
            ),
          ),
          filled: true,
          prefixIcon: const Icon(
            Icons.search,
            color: Color(0xFF55C5D1),
          ),
          fillColor: const Color(0xFFFAFAFA),
          suffixIcon: const Icon(Icons.sort,color: Color(0xFF55C5D1),),
          hintStyle: new TextStyle(color: Color(0xFFD8D5D6), fontSize: 18),
          hintText: "What would your like to buy?",
        ),
      ),
    );
  }
}
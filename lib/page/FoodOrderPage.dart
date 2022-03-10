import 'package:delivery/page/FoodDetailsPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../animetions/ScaleRoute.dart';

class FoodOrderPage extends StatefulWidget {
  const FoodOrderPage({Key? key}) : super(key: key);

  @override
  _FoodOrderPageState createState() => _FoodOrderPageState();
}

class _FoodOrderPageState extends State<FoodOrderPage> {
  int counter = 3;
  int productPrice = 120;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFFAFAFA),
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Color(0xFF3a3737),
            ),
            onPressed: () => Navigator.push(
              context,
              ScaleRoute(
                page: const FoodDetailsPage(),
              ),
            ),
          ),
          title: const Center(
            child: Text(
              "Item Carts",
              style: TextStyle(
                  color: Color(0xFF3a3737),
                  fontWeight: FontWeight.w600,
                  fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ),
          actions: <Widget>[
            CartIconWithBadge(),
          ],
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(left: 5),
                  child: const Text(
                    "Your Food Cart",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF3a3a3b),
                        fontWeight: FontWeight.w600),
                    textAlign: TextAlign.left,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                CartItem(
                    productName: "Grilled Salmon",
                    productPrice: productPrice,
                    productImage: "ic_popular_food_1",
                    productCartQuantity: "2"),
                const SizedBox(
                  height: 10,
                ),
                CartItem(
                    productName: "Meat vegetable",
                    productPrice: productPrice,
                    productImage: "ic_popular_food_4",
                    productCartQuantity: "5"),
                const SizedBox(
                  height: 10,
                ),
                const PromoCodeWidget(),
                const SizedBox(
                  height: 10,
                ),
                TotalCalculationWidget(productPrice),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 5),
                  child: const Text(
                    "Payment Method",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF3a3a3b),
                        fontWeight: FontWeight.w600),
                    textAlign: TextAlign.left,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const PaymentMethodWidget(),
              ],
            ),
          ),
        ));
  }
}

class PaymentMethodWidget extends StatelessWidget {
  const PaymentMethodWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: const Color(0xFFfae3e2).withOpacity(0.1),
          spreadRadius: 1,
          blurRadius: 1,
          offset: const Offset(0, 1),
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
        child: Container(
          alignment: Alignment.center,
          padding:
              const EdgeInsets.only(left: 10, right: 30, top: 10, bottom: 10),
          child: Row(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                child: Image.asset(
                  "assets/images/menus/ic_credit_card.png",
                  width: 50,
                  height: 50,
                ),
              ),
              const Text(
                "Credit/Debit Card",
                style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF3a3a3b),
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.left,
              )
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class TotalCalculationWidget extends StatelessWidget {
  int productPrice;
  TotalCalculationWidget(this.productPrice, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: const Color(0xFFfae3e2).withOpacity(0.1),
          spreadRadius: 1,
          blurRadius: 1,
          offset: const Offset(0, 1),
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
        child: Container(
          alignment: Alignment.center,
          padding:
              const EdgeInsets.only(left: 25, right: 30, top: 10, bottom: 10),
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text(
                    "Grilled Salmon",
                    style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF3a3a3b),
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "$productPrice" " Bath",
                    style: const TextStyle(
                        fontSize: 18,
                        color: Color(0xFF3a3a3b),
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.left,
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text(
                    "Meat vegetable",
                    style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF3a3a3b),
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "$productPrice" " Bath",
                    style: const TextStyle(
                        fontSize: 18,
                        color: Color(0xFF3a3a3b),
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.left,
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text(
                    "Total",
                    style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF3a3a3b),
                        fontWeight: FontWeight.w600),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "${productPrice + productPrice}" " Bath",
                    style: const TextStyle(
                        fontSize: 18,
                        color: Color(0xFF3a3a3b),
                        fontWeight: FontWeight.w600),
                    textAlign: TextAlign.left,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PromoCodeWidget extends StatelessWidget {
  const PromoCodeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.only(left: 3, right: 3),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: const Color(0xFFfae3e2).withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 1,
            offset: const Offset(0, 1),
          ),
        ]),
        child: TextFormField(
          decoration: InputDecoration(
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFe6e1e1), width: 1.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Color(0xFFe6e1e1), width: 1.0),
                borderRadius: BorderRadius.circular(7),
              ),
              fillColor: Colors.white,
              hintText: 'Add Your Promo Code',
              filled: true,
              suffixIcon: IconButton(
                  icon: const Icon(
                    Icons.local_offer,
                    color: Color(0xFFfd2c2c),
                  ),
                  onPressed: () {
                    debugPrint('222');
                  })),
        ),
      ),
    );
  }
}

class CartItem extends StatelessWidget {
  final String productName;
  // final String productPrice;
  final int productPrice;
  final String productImage;
  final String productCartQuantity;

  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  const CartItem({
    required this.productName,
    // required this.productPrice,
    required this.productPrice,
    required this.productImage,
    required this.productCartQuantity,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 130,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: const Color(0xFFfae3e2).withOpacity(0.3),
          spreadRadius: 1,
          blurRadius: 1,
          offset: const Offset(0, 1),
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
        child: Container(
          alignment: Alignment.center,
          padding:
              const EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: Center(
                    child: Image.asset(
                  "assets/images/popular_foods/$productImage.png",
                  width: 110,
                  height: 100,
                )),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            productName,
                            style: const TextStyle(
                                fontSize: 18,
                                color: Color(0xFF3a3a3b),
                                fontWeight: FontWeight.w400),
                            textAlign: TextAlign.left,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            productPrice.toString(),
                            style: const TextStyle(
                                fontSize: 18,
                                color: Color(0xFF3a3a3b),
                                fontWeight: FontWeight.w400),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        child: Image.asset(
                          "assets/images/menus/ic_delete.png",
                          width: 25,
                          height: 25,
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 20),
                    alignment: Alignment.centerRight,
                    child: AddToCartMenu(),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class CartIconWithBadge extends StatelessWidget {
  int counter = 2;

  CartIconWithBadge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        IconButton(
            icon: const Icon(
              Icons.business_center,
              color: Color(0xFF3a3737),
            ),
            onPressed: () {}),
        counter != 0
            ? Positioned(
                right: 11,
                top: 11,
                child: Container(
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  constraints: const BoxConstraints(
                    minWidth: 14,
                    minHeight: 14,
                  ),
                  child: Text(
                    '$counter',
                    style: const TextStyle(
                      color: Colors.red,
                      fontSize: 8,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            : Container()
      ],
    );
  }
}

// ignore: must_be_immutable
class AddToCartMenu extends StatelessWidget {
  AddToCartMenu({Key? key}) : super(key: key);
  int productCounter = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.remove),
          color: Colors.black,
          iconSize: 18,
        ),
        InkWell(
          // ignore: avoid_print
          onTap: () => print('hello'),
          child: Container(
            width: 100.0,
            height: 35.0,
            decoration: BoxDecoration(
              color: const Color(0xFFfd2c2c),
              border: Border.all(color: Colors.white, width: 2.0),
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Center(
              child: Text(
                'Add To $productCounter',
                style: const TextStyle(
                    fontSize: 12.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w300),
              ),
            ),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.add),
          color: const Color(0xFFfd2c2c),
          iconSize: 18,
        ),
      ],
    );
  }
}

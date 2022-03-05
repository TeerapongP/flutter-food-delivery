// ignore_for_file: prefer_const_constructors

import 'package:delivery/page/signUpPage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../animetions/ScaleRoute.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    String defaultFontFamily = 'Roboto-Regular.ttf';
    double defaultIconSize = 24;

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(left: 20, right: 20),
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Flexible(
              flex: 8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 274,
                    height: 60,
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/images/logo.png',
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextField(
                    showCursor: true,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      contentPadding: const EdgeInsets.all(16),
                      filled: true,
                      prefixIcon: Icon(
                        Icons.mail_outline,
                        color: const Color(0xFF666666),
                        size: defaultIconSize,
                      ),
                      fillColor: const Color(0xFFF2F3F5),
                      hintStyle: TextStyle(
                          color: const Color(0xFF666666),
                          fontFamily: defaultFontFamily,
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                      hintText: "Email",
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextField(
                    obscureText: true,
                    showCursor: true,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      filled: true,
                      contentPadding: const EdgeInsets.all(16),
                      prefixIcon: Icon(
                        Icons.lock_outline,
                        color: const Color(0xFF666666),
                        size: defaultIconSize,
                      ),
                      fillColor: const Color(0xFFF2F3F5),
                      hintStyle: TextStyle(
                          color: const Color(0xFF666666),
                          fontFamily: defaultFontFamily,
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                      hintText: "Password",
                    ),
                  ),

                  SizedBox(
                    height: 16,
                  ),
                  // ignore: sized_box_for_whitespace
                  Container(
                    width: double.infinity,
                    child: Text(
                      "Forgot your password?",
                      style: TextStyle(
                        color: const Color(0xFF666666),
                        fontFamily: defaultFontFamily,
                        fontSize: 16,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.end,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  SignInButtonWidget(),
                  SizedBox(
                    height: 2,
                  ),
                  FacebookGoogleLogin(),
                  SizedBox(
                    height: 35,
                  ),
                  // ignore: sized_box_for_whitespace
                  Container(
                    width: double.infinity,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Don't have an account? ",
                            style: TextStyle(
                              color: Color(0xFF666666),
                              fontFamily: defaultFontFamily,
                              fontSize: 18,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          InkWell(
                            onTap: () => {
                              Navigator.push(
                                context,
                                ScaleRoute(
                                  page: SignUpPage(),
                                ),
                              )
                            },
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                color: Color(0xFF4699C3),
                                fontFamily: defaultFontFamily,
                                fontSize: 16,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SignInButtonWidget extends StatelessWidget {
  const SignInButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // ignore: unnecessary_new
      decoration: new BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        boxShadow: const <BoxShadow>[
          BoxShadow(
            color: Color(0xFF4699C3),
          ),
        ],
      ),
      child: MaterialButton(
          highlightColor: Colors.transparent,
          //shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 42.0),
            child: Text(
              "LOGIN",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                  fontFamily: "Roboto-Regular"),
            ),
          ),
          onPressed: () => {}),
    );
  }
}

class FacebookGoogleLogin extends StatelessWidget {
  const FacebookGoogleLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      // ignore: prefer_const_literals_to_create_immutables
                      colors: [
                        Colors.black12,
                        Colors.black54,
                      ],
                      begin: const FractionalOffset(0.0, 0.0),
                      end: const FractionalOffset(1.0, 1.0),
                      stops: const [0.0, 1.0],
                      tileMode: TileMode.clamp),
                ),
                width: 100.0,
                height: 1.0,
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0, right: 15.0),
                child: Text(
                  "Or",
                  style: TextStyle(
                      color: Color(0xFF2c2b2b),
                      fontSize: 16.0,
                      fontFamily: "WorkSansMedium"),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      // ignore: prefer_const_literals_to_create_immutables
                      colors: [
                        Colors.black54,
                        Colors.black12,
                      ],
                      begin: const FractionalOffset(0.0, 0.0),
                      end: const FractionalOffset(1.0, 1.0),
                      stops: const [0.0, 1.0],
                      tileMode: TileMode.clamp),
                ),
                width: 100.0,
                height: 1.0,
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 10.0, right: 40.0),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF55C5D1),
                  ),
                  child: Icon(
                    FontAwesomeIcons.facebookF,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: GestureDetector(
                onTap: () => {},
                child: Container(
                  padding: const EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF55C5D1),
                  ),
                  // ignore: unnecessary_new
                  child: new Icon(
                    FontAwesomeIcons.google,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

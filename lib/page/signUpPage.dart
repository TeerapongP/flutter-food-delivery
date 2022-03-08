// ignore: file_names
import './Home.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../animetions/ScaleRoute.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

// ignore: camel_case_types
class SignUpPage_Firebase extends StatefulWidget {
  const SignUpPage_Firebase({Key? key}) : super(key: key);
  @override
  _SignUpPage_Firebase createState() => _SignUpPage_Firebase();
}

// ignore: camel_case_types
class _SignUpPage_Firebase extends State<SignUpPage_Firebase> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  String defaultFontFamily = 'Roboto-Regular.ttf';
  double defaultIconSize = 24;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:
            const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 30),
        width: double.infinity,
        height: double.infinity,
        color: Colors.white70,
        child: Column(
          children: <Widget>[
            Flexible(
              flex: 15,
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

                  const SizedBox(
                    height: 15,
                  ),
                  TextField(
                    controller: _emailController,
                    showCursor: true,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      filled: true,
                      prefixIcon: Icon(
                        Icons.mail,
                        color: Color(0xFF666666),
                        size: 24,
                      ),
                      fillColor: Color(
                        0xFFF2F3F5,
                      ),
                      hintStyle: TextStyle(
                        color: Color(0xFF666666),
                        fontFamily: 'Roboto-Regular.ttf',
                        fontSize: 16,
                      ),
                      hintText: 'Email.',
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextField(
                    controller: _passwordController,
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
                        Icons.password,
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
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  // ignore: prefer_const_constructors
                  Container(
                    width: double.infinity,
                    // ignore: unnecessary_new
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Color(0xFF4699C3),
                        ),
                      ],
                    ),
                    child: MaterialButton(
                        highlightColor: Colors.transparent,
                        //shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 42.0),
                          child: Text(
                            "SIGN UP",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25.0,
                              fontFamily: 'Roboto-Regular.ttf',
                            ),
                          ),
                        ),
                        onPressed: () async {
                          await FirebaseAuth.instance
                              .createUserWithEmailAndPassword(
                                  email: _emailController.text,
                                  password: _passwordController.text);
                          setState(() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HomePage(),
                              ),
                            );
                          });
                        }),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const FacebookGoogleLogin(),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // ignore: avoid_unnecessary_containers
                    Container(
                      child: const Text(
                        "Already have an account ?",
                        style: TextStyle(
                          color: Color(0xFF666666),
                          fontFamily: 'Roboto-Regular.ttf',
                          fontSize: 16,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () => {
                        Navigator.push(
                          context,
                          ScaleRoute(
                            page: SignUpPage_Firebase(),
                          ),
                        )
                      },
                      child: const Text(
                        "Sign In",
                        style: TextStyle(
                          color: Color(0xFF4699C3),
                          fontFamily: 'Roboto-Regular.ttf',
                          fontSize: 16,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class FacebookGoogleLogin extends StatefulWidget {
  const FacebookGoogleLogin({Key? key}) : super(key: key);
  @override
  _FacebookGoogleLogin createState() => _FacebookGoogleLogin();
}

// ignore: camel_case_types
class _FacebookGoogleLogin extends State<FacebookGoogleLogin> {
  bool _isLoggedIn = false;
  Map _userObj = {};
  final googel = GoogleSignIn();
  GoogleSignInAccount? user;
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
                      fontFamily: "Roboto-Regular.ttf"),
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
                onTap: () async {
                  FacebookAuth.instance.login(
                      permissions: ["public_profile", "email"]).then((value) {
                    FacebookAuth.instance.getUserData().then((userData) {
                      setState(() {
                        _isLoggedIn = true;
                        _userObj = userData;
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ),
                        );
                      });
                    });
                  });
                },
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
                  onTap: () async {
                    try {
                      final googleMethod = await googel.signIn();
                      user = googleMethod;
                      final auth = await googleMethod?.authentication;
                      final cred = GoogleAuthProvider.credential(
                          accessToken: auth!.idToken, idToken: auth.idToken);
                      await FirebaseAuth.instance
                          .signInWithCredential(cred)
                          .whenComplete(() {
                        print(user!.email.toString());
                        print(user!.displayName.toString());
                        print(user!.photoUrl.toString());
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ),
                        );
                      });
                    } catch (e) {
                      print(e);
                    }
                  },
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
                  )),
            ),
          ],
        ),
      ],
    );
  }
}

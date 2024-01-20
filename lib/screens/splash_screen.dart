import "dart:async";

import "package:flutter/material.dart";
import "package:shoppie/screens/home_screen.dart";
import "package:shoppie/screens/onboarding_screen.dart";

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),
    ()=> Navigator.push(
      context, 
      MaterialPageRoute(
        builder: (context)=> OnboardingScreen(),))
    );
  } 

  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage("images/splashinage.jpg"),
            fit: BoxFit.cover,
            opacity: 0.4,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.shopping_cart,
              size: 160,
              color: Colors.orange,
            ),
            Text("SHOPPIE",
            style: TextStyle(color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic),)
          ],
        ),
      ),
    );
  }
}

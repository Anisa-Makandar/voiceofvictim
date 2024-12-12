import 'package:flutter/material.dart';

class SplashScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: 300,
              height: 300,
              child: FittedBox(
                child: Image.asset(
                  'assets/images/splashscreenpage_img.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          // Text("Voice of Victims, Strenght of Justice... ")
        ],
      ),
    );
  }
}

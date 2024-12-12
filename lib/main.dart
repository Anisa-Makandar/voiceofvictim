import 'package:flutter/material.dart';
import 'package:voiceofvictim_branx/screens/registrationscreen_page.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RegistrationscreenPage(),
    );
  }
}

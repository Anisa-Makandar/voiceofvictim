import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:voiceofvictim_branx/domain/custom_buttons.dart';
import 'package:voiceofvictim_branx/domain/custom_textfields.dart';

class LoginscreenPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color(0xFF030100),
          body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12),
            child: Column(
              children: [
                const Text(
                  "Sign In",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                Container(
                  width: 300,
                  height: 300,
                  child: FittedBox(
                    child: Image.asset(
                      'assets/images/loginscreen_img.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                CustomeTextfield(
                  controller: emailController,
                  label: 'Email',
                  hintText: 'Enter email here...',
                ),
                const SizedBox(height: 25),
                CustomeTextfield(
                  controller: passController,
                  label: 'Password',
                  hintText: 'Enter password here...',
                ),
                SizedBox(
                  height: 30,
                ),
                CustomButton(
                  text: 'Sign In',
                  onPressed: () {},
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text.rich(
                    TextSpan(
                        text: 'Don\'t have an account? ',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Sign Up',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Color(0xFFCC0000),
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginscreenPage()),
                                );
                              },
                          ),
                        ]),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:voiceofvictim_branx/domain/custom_buttons.dart';
import 'package:voiceofvictim_branx/domain/custom_textfields.dart';
import 'package:voiceofvictim_branx/screens/loginscreen_page.dart';

class RegistrationscreenPage extends StatelessWidget {
  final TextEditingController firstnameController = TextEditingController();

  final TextEditingController lastnameController = TextEditingController();

  final TextEditingController phoneController = TextEditingController();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passController = TextEditingController();

  final TextEditingController confirmpassController = TextEditingController();
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
                  "Create Account",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                CustomeTextfield(
                  controller: firstnameController,
                  label: 'First Name',
                  hintText: 'Enter first name here...',
                ),
                const SizedBox(height: 25),
                CustomeTextfield(
                  controller: lastnameController,
                  label: 'Last Name',
                  hintText: 'Enter last name here...',
                ),
                const SizedBox(height: 25),
                CustomeTextfield(
                  controller: phoneController,
                  label: 'Phone Number',
                  hintText: 'Enter phone number here...',
                ),
                const SizedBox(height: 25),
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
                const SizedBox(height: 25),
                CustomeTextfield(
                  controller: confirmpassController,
                  label: 'Confirm Password',
                  hintText: 'Enter confirm pssword here...',
                ),
                const SizedBox(height: 25),
                SizedBox(
                  height: 30,
                ),
                CustomButton(
                  text: 'Create My Account',
                  onPressed: () {},
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text.rich(
                    TextSpan(
                        text: 'Already have an account? ',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Sign In',
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

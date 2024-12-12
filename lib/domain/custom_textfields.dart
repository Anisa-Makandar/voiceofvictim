import 'package:flutter/material.dart';

class CustomeTextfield extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final String hintText;

  CustomeTextfield(
      {required this.controller, required this.label, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: const Color(0xFFEEEBEB),
          fontSize: 14,
          fontWeight: FontWeight.w100,
        ),
        label: Text(label),
        labelStyle: TextStyle(color: Colors.white),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Color(0xFFDCDCDC),
            width: 2,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Color(0xFFDCDCDC),
            width: 2,
          ),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
      ),
    );
  }
}

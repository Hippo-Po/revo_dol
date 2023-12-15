import 'package:flutter/material.dart';

class ReusableTextField extends StatelessWidget {
  const ReusableTextField(
      {super.key,
      required this.labelForTextField,
      this.textEditingController,
      required this.errorText,
      required this.textInputType,
      this.suffixIcon,
      required this.textInputAction,
      required this.obscureText,
      this.prefixIcon});

  final String labelForTextField;
  final TextInputType textInputType;
  final IconData? suffixIcon;
  final TextInputAction textInputAction;
  final String errorText;
  final TextEditingController? textEditingController;
  final bool validateText = false;
  final bool obscureText;
  final IconData? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 10, left: 10, bottom: 20),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide.none,
        ),
      ),
      child: TextField(
        cursorColor: Colors.deepOrange,
        obscureText: obscureText,
        keyboardType: textInputType,
        textInputAction: textInputAction,
        controller: textEditingController,
        decoration: InputDecoration(
          prefixIcon: Icon(prefixIcon),
          // suffixIcon: Padding(
          //   padding: const EdgeInsets.only(right: 10),
          //   child: Icon(suffixIcon),
          // ),
          hintText: labelForTextField,
          errorText: validateText ? "$errorText Can/'t Be Empty" : null,
          hintStyle: const TextStyle(color: Colors.grey),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.grey,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.grey,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.grey,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:dio_interceptor_crud/colors.dart';

class LoginRegisterButton extends StatelessWidget {
  const LoginRegisterButton({Key? key, required this.buttonColor, required this.textButton, required this.textColorButton}) : super(key: key);

  final Color buttonColor;
  final String textButton;
  final Color textColorButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(7.0),
        border: Border.all(color: CustomColor.white)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Text(
          textButton,
          style: TextStyle(
              color: textColorButton),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

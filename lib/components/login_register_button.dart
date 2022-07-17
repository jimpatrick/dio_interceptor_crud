import 'package:flutter/material.dart';
import 'package:dio_interceptor_crud/colors.dart';

class LoginRegisterButton extends StatelessWidget {
  const LoginRegisterButton({Key? key, required this.buttonColor, required this.textButton, required this.textColorButton, required this.function, this.borderColor}) : super(key: key);

  final Color buttonColor;
  final String textButton;
  final Color textColorButton;
  final VoidCallback function;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(color: borderColor ?? CustomColor.white)
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
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:dio_interceptor_crud/colors.dart';
import 'package:dio_interceptor_crud/components/login_register_button.dart';
import 'package:dio_interceptor_crud/components/custom_clipper.dart';

class RegisterModal extends StatelessWidget {
  const RegisterModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomBackgroundClipper(),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 110.0,
                ),
                TextField(
                  autofocus: true,
                  style:
                      const TextStyle(fontFamily: 'IranSans', fontSize: 20.0),
                  textAlign: TextAlign.left,
                  cursorHeight: 35.0,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    hintText: 'نام کامل',
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: CustomColor.textField),
                    ),
                    hintTextDirection: TextDirection.rtl,
                    hintStyle: TextStyle(
                      fontSize: 15.0,
                    ),
                    prefixIcon: Icon(Icons.person),
                    suffixIcon: Icon(Icons.check, color: Colors.grey),
                  ),
                  onChanged: (newText) {},
                ), //نام کامل
                const SizedBox(
                  height: 20.0,
                ),
                TextField(
                  autofocus: true,
                  style:
                      const TextStyle(fontFamily: 'IranSans', fontSize: 20.0),
                  textAlign: TextAlign.left,
                  cursorHeight: 35.0,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    hintText: 'ایمیل',
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: CustomColor.textField),
                    ),
                    hintTextDirection: TextDirection.rtl,
                    hintStyle: TextStyle(
                      fontSize: 15.0,
                    ),
                    prefixIcon: Icon(Icons.email),
                    suffixIcon: Icon(Icons.check, color: Colors.grey),
                  ),
                  onChanged: (newText) {},
                ), //ایمیل
                const SizedBox(
                  height: 20.0,
                ),
                TextField(
                  autofocus: true,
                  style:
                      const TextStyle(fontFamily: 'IranSans', fontSize: 20.0),
                  textAlign: TextAlign.left,
                  cursorHeight: 35.0,
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: 'رمز عبور',
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: CustomColor.textField),
                    ),
                    hintTextDirection: TextDirection.rtl,
                    hintStyle: TextStyle(
                      fontSize: 15.0,
                    ),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.visibility_off, color: Colors.grey),
                  ),
                  onChanged: (newText) {},
                ), //رمز عبور
                const SizedBox(
                  height: 10.0,
                ),
                TextField(
                  autofocus: true,
                  style:
                      const TextStyle(fontFamily: 'IranSans', fontSize: 20.0),
                  textAlign: TextAlign.left,
                  cursorHeight: 35.0,
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: 'تکرار رمز عبور',
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: CustomColor.textField),
                    ),
                    hintTextDirection: TextDirection.rtl,
                    hintStyle: TextStyle(
                      fontSize: 15.0,
                    ),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.visibility_off, color: Colors.grey),
                  ),
                  onChanged: (newText) {},
                ), //تکرار رمز عبور
                const SizedBox(
                  height: 10.0,
                ),
                const SizedBox(
                  width: double.infinity,
                  child: Text(
                    'فراموشی رمز عبور',
                    style: TextStyle(color: CustomColor.textField),
                    textAlign: TextAlign.right,
                  ),
                ), //فراموشی رمز عبور
                const SizedBox(
                  height: 20.0,
                ),
                LoginRegisterButton(
                  buttonColor: CustomColor.scaffoldLoginRegisterButton,
                  textButton: 'ثبت نام',
                  textColorButton: CustomColor.white,
                  function: () {},
                  borderColor: CustomColor.scaffoldLoginRegisterButton,
                ), //دکمه ثبت نام
                const SizedBox(
                  height: 15.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Divider(
                      thickness: 5.0,
                      height: 10.0,
                      color: Color(0xFFd4d4d4),
                    ),
                    Text(
                      'یا',
                      style: TextStyle(
                        color: Color(0xFFd4d4d4),
                      ),
                    ),
                    Divider(
                      color: Color(0xFFd4d4d4),
                    ),
                  ],
                ), //خط جدا کننده
                const SizedBox(
                  height: 15.0,
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: LoginRegisterButton(
                    buttonColor: Colors.transparent,
                    textButton: 'ورود',
                    textColorButton: Colors.grey,
                    function: () {},
                    borderColor: Colors.grey,
                  ),
                ), //دکمه ورود
              ],
            ),
          ),
        ),
      ),
    );
  }
}
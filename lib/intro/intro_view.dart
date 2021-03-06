import 'package:dio_interceptor_crud/colors.dart';
import 'package:dio_interceptor_crud/login/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dio_interceptor_crud/components/login_register_button.dart';
import 'package:dio_interceptor_crud/register/register_view.dart';

class Intro extends StatefulWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {

  void _loginShowModalFunction() {
    setState(() {
      showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        context: context,
        builder: (context) => const LoginModal(),
      );
    });
  }

  void _registerShowModalFunction() {
    setState(() {
      showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        context: context,
        builder: (context) => const RegisterModal(),
      );
    });
  }

  @override
  Widget build(BuildContext context) {

    double appBarHeight = MediaQuery.of(context).padding.top;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          SvgPicture.asset('assets/images/background.svg', fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: appBarHeight + 20.0),
                  child: const Text(
                    'Dio Interceptor',
                    style: TextStyle(
                        color: CustomColor.white,
                        fontSize: 25,
                        fontFamily: 'IranYekan',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Column(
                  children: [
                    const Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        'Interceptor',
                        textDirection: TextDirection.rtl,
                        style:
                            TextStyle(color: Color(0xFFc7deff), fontSize: 25.0),
                      ),
                    ),
                    const Text(
                      'Dio ???????????? ?????? ???????? ?????? ???? ?????????? ?????????????? ???? ???????? ???? ????????. ?????? ???????????? ???? Interceptors ?????????????? ?????? ??????.',
                      textDirection: TextDirection.rtl,
                      style:
                          TextStyle(color: Color(0xFFc7deff), fontSize: 14.0),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    LoginRegisterButton(
                      buttonColor: CustomColor.white,
                      textButton: '????????',
                      textColorButton: CustomColor.scaffoldLoginRegisterButton,
                      function: _loginShowModalFunction,
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    LoginRegisterButton(
                      buttonColor: Colors.transparent,
                      textButton: '?????? ??????',
                      textColorButton: CustomColor.white,
                      function: _registerShowModalFunction,
                    ),
                    const SizedBox(
                      height: 35.0,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

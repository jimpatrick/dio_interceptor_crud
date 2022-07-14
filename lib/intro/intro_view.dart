import 'package:dio_interceptor_crud/colors.dart';
import 'package:dio_interceptor_crud/login/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dio_interceptor_crud/componants/login_register_button.dart';

class Intro extends StatelessWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double appBarHeight = MediaQuery.of(context).padding.top;
    return Scaffold(
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
                      'Dio قابلیت صحت سنجی قبل از ارسال اطلاعات به سرور را دارد. این قابلیت در Interceptors گنجانده شده است.',
                      textDirection: TextDirection.rtl,
                      style:
                          TextStyle(color: Color(0xFFc7deff), fontSize: 14.0),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    LoginRegisterButton(
                      buttonColor: CustomColor.white,
                      textButton: 'ورود',
                      textColorButton: CustomColor.scaffoldLoginRegisterButton,
                      function: () {
                        showModalBottomSheet(
                          isScrollControlled: true,
                            context: context,
                            builder: (BuildContext context) =>
                                loginModal(context),
                            backgroundColor: Colors.transparent);
                      },
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    LoginRegisterButton(
                      buttonColor: Colors.transparent,
                      textButton: 'ثبت نام',
                      textColorButton: CustomColor.white,
                      function: () {},
                    ),
                    const SizedBox(
                      height: 35.0,
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

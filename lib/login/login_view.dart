import 'package:dio_interceptor_crud/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dio_interceptor_crud/componants/login_register_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
                  children: const [
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        'Interceptor',
                        textDirection: TextDirection.rtl,
                        style:
                        TextStyle(color: Color(0xFFc7deff), fontSize: 25.0),
                      ),
                    ),
                    Text(
                      'Dio قابلیت صحت سنجی قبل از ارسال اطلاعات به سرور را دارد. این قابلیت در Interceptors گنجانده شده است.',
                      textDirection: TextDirection.rtl,
                      style:
                      TextStyle(color: Color(0xFFc7deff), fontSize: 14.0),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    LoginRegisterButton(
                      buttonColor: CustomColor.white,
                      textButton: 'ورود',
                      textColorButton: CustomColor.scaffoldLoginRegisterButton,
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    LoginRegisterButton(
                      buttonColor: Colors.transparent,
                      textButton: 'ثبت نام',
                      textColorButton: CustomColor.white,
                    ),
                    SizedBox(
                      height: 35.0,
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: ClipPath(
              clipper: CustomBackgroundClipper(),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.55,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xFFffffff), Color(0xFFffffff)]),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomBackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    const minSize = 250.0;

    final p1Diff = ((size.height - minSize) * 0.5).truncate();
    path.lineTo(0.0, p1Diff.toDouble());

    final controlPoint1 = Offset(size.width * 0.4, 0.0);
    final controlPoint2 = Offset(size.width * 0.6, size.height * 0.4);
    final endPoint = Offset(size.width, size.height * 0.2);
    /*
    path.quadraticBezierTo(
        controlPoint1.dx, controlPoint1.dy, endPoint1.dx, endPoint1.dy);
    */
    path.cubicTo(controlPoint1.dx, controlPoint1.dy, controlPoint2.dx, controlPoint2.dy, endPoint.dx, endPoint.dy);

    path.lineTo(size.width, size.height);
    path.lineTo(0.0, size.height);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}



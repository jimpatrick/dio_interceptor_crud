import 'package:flutter/material.dart';
import 'package:dio_interceptor_crud/colors.dart';
import 'package:dio_interceptor_crud/componants/login_register_button.dart';

Widget loginModal(BuildContext context) {
  return ClipPath(
    clipper: CustomBackgroundClipper(),
    child: Container(
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 110.0,
            ),
            TextField(
              autofocus: true,
              style: const TextStyle(fontFamily: 'IranSans', fontSize: 20.0),
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
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextField(
              autofocus: true,
              style: const TextStyle(fontFamily: 'IranSans', fontSize: 20.0),
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
            ),
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
            ),
            const SizedBox(
              height: 20.0,
            ),
            LoginRegisterButton(
              buttonColor: CustomColor.scaffoldLoginRegisterButton,
              textButton: 'ورود',
              textColorButton: CustomColor.white,
              function: () {},
              borderColor: CustomColor.scaffoldLoginRegisterButton,
            ),
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
            ),
            const SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
              child: LoginRegisterButton(
                buttonColor: Colors.transparent,
                textButton: 'ثبت نام',
                textColorButton: Colors.grey,
                function: () {},
                borderColor: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

// MediaQuery.of(context).viewInsets.bottom + 30)

class CustomBackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    const minSize = 300.0;

    final p1Diff = ((size.height - minSize) * 0.5).truncate();
    path.lineTo(0.0, p1Diff.toDouble());

    final controlPoint1 = Offset(size.width * 0.4, 0.0);
    final controlPoint2 = Offset(size.width * 0.6, size.height * 0.4);
    final endPoint = Offset(size.width, size.height * 0.2);
    /*
    path.quadraticBezierTo(
        controlPoint1.dx, controlPoint1.dy, endPoint1.dx, endPoint1.dy);
    */
    path.cubicTo(controlPoint1.dx, controlPoint1.dy, controlPoint2.dx,
        controlPoint2.dy, endPoint.dx, endPoint.dy);

    path.lineTo(size.width, size.height);
    path.lineTo(0.0, size.height);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}

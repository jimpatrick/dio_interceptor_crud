import 'package:dio_interceptor_crud/register/register_view.dart';
import 'package:flutter/material.dart';
import 'package:dio_interceptor_crud/login/login_view.dart';
import 'package:flutter_svg/svg.dart';

import 'colors.dart';
import 'components/login_register_button.dart';

class Temp extends StatefulWidget {
  const Temp({Key? key}) : super(key: key);

  @override
  State<Temp> createState() => _TempState();
}

class _TempState extends State<Temp> {
  void loginShowModalFunction() {
    setState(() {
      showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        context: context,
        builder: (context) => const LoginModal(),
      );
    });
  }

  void registerShowModalFunction() {
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
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: SvgPicture.asset('assets/images/background.svg',
                  fit: BoxFit.cover)),
          const SizedBox(
            height: 15.0,
          ),
          LoginRegisterButton(
            buttonColor: CustomColor.white,
            textButton: 'ورود',
            textColorButton: CustomColor.scaffoldLoginRegisterButton,
            function: loginShowModalFunction,
          ),
          const SizedBox(
            height: 15.0,
          ),
          LoginRegisterButton(
            buttonColor: Colors.transparent,
            textButton: 'ثبت نام',
            textColorButton: CustomColor.white,
            function: registerShowModalFunction,
          ),
          const SizedBox(
            height: 35.0,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context, builder: (context) => const LoginModal());
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

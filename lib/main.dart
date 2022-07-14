import 'package:flutter/material.dart';
import 'package:dio_interceptor_crud/intro/intro_view.dart';
import 'package:dio_interceptor_crud/colors.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Register CRUD',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: CustomColor.scaffoldLoginRegisterButton,
        fontFamily: 'IranSans'
      ),
      home: const Intro(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:dio_interceptor_crud/models/user/data_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.data}) : super(key: key);

  final DataModel data;

  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(data.firstName),
        Text(data.lastName),
      ],
    );
  }
}

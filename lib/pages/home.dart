import 'package:flutter/material.dart';
import 'package:plant_app/components/home/body.dart';
import 'package:plant_app/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: kPrimaryColor,
      centerTitle: true,
      title: const Text('PLANT APP'),
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.menu),
      ),
    );
  }
}

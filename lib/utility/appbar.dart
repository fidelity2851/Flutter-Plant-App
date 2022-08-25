import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: kPrimaryColor,
      leading: IconButton(
        padding: const EdgeInsets.only(
          left: 15,
          top: 5,
        ),
        onPressed: () {},
        icon: const Icon(
          Icons.menu_rounded,
          size: 40.0,
        ),
      ),
    );
  }
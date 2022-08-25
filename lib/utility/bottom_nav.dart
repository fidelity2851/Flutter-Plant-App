import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: kPrimaryColor.withOpacity(0.2),
            offset: const Offset(0, 10),
            blurRadius: 50,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
            icon: const Icon(Icons.home_filled),
            color: kPrimaryColor,
            iconSize: 30.0,
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/details');
            },
            icon: const Icon(Icons.favorite),
            color: Colors.grey,
            iconSize: 30.0,
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/profile');
            },
            icon: const Icon(Icons.person_rounded),
            color: Colors.grey,
            iconSize: 30.0,
          ),
        ],
      ),
    );
  }
}

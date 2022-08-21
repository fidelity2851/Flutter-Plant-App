import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

// Title With More Button Widget
class TitleWithMoreButton extends StatelessWidget {
  const TitleWithMoreButton({
    Key? key,
    required this.title,
    required this.pressed,
  }) : super(key: key);

  final String title;
  final VoidCallback pressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: kDefaultPadding,
        horizontal: kDefaultPadding,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          ElevatedButton(
            onPressed: pressed,
            style: TextButton.styleFrom(
              elevation: 0,
              padding: const EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 25,
              ),
              backgroundColor: kPrimaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: const Text('More'),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: size.height * 0.7,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      left: kDefaultPadding,
                      right: kDefaultPadding,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          child: Container(
                            decoration: BoxDecoration(
                              color: kPrimaryColor.withOpacity(0.1),
                              shape: BoxShape.circle,
                            ),
                            child: IconButton(
                              color: Colors.black,
                              icon: const Icon(
                                Icons.arrow_back_ios_new_rounded,
                                size: 30,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                        ),
                        Column(
                          children: const [
                            IconCard(iconData: Icons.brightness_low_rounded),
                            IconCard(iconData: Icons.brightness_low_rounded),
                            IconCard(iconData: Icons.brightness_low_rounded),
                            IconCard(iconData: Icons.brightness_low_rounded),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: size.height * 0.7,
                      width: size.width * 0.75,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(70),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: kPrimaryColor.withOpacity(0.2),
                            offset: const Offset(-10, -10),
                            blurRadius: 50,
                          ),
                        ],
                        image: const DecorationImage(
                          alignment: Alignment.centerRight,
                          image: AssetImage('assets/images/plant4.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class IconCard extends StatelessWidget {
  const IconCard({
    Key? key,
    required this.iconData,
  }) : super(key: key);

  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      margin: const EdgeInsets.symmetric(vertical: 25),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            offset: const Offset(-10, -10),
            blurRadius: 30,
          ),
        ],
      ),
      child: IconButton(
        color: kPrimaryColor,
        onPressed: () {},
        icon: Icon(
          iconData,
          size: 40,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class RecommendedPlants extends StatelessWidget {
  const RecommendedPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.only(
        left: kDefaultPadding,
        right: kDefaultPadding,
        bottom: kDefaultPadding,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          RecommendedItem(
            imagePath: 'assets/images/plant1.png',
            name: 'Ross Flower',
            country: 'Nigeria',
            price: 400,
          ),
          RecommendedItem(
            imagePath: 'assets/images/plant1.png',
            name: 'Ross Flower',
            country: 'Ghana',
            price: 1400,
          ),
          RecommendedItem(
            imagePath: 'assets/images/plant1.png',
            name: 'Ross Flower',
            country: 'Nigeria',
            price: 400,
          ),
          RecommendedItem(
            imagePath: 'assets/images/plant1.png',
            name: 'Ross Flower',
            country: 'Ghana',
            price: 1400,
          ),
          RecommendedItem(
            imagePath: 'assets/images/plant1.png',
            name: 'Ross Flower',
            country: 'Nigeria',
            price: 400,
          ),
          RecommendedItem(
            imagePath: 'assets/images/plant1.png',
            name: 'Ross Flower',
            country: 'Ghana',
            price: 1400,
          ),
        ],
      ),
    );
  }
}

class RecommendedItem extends StatelessWidget {
  const RecommendedItem({
    Key? key,
    required this.imagePath,
    required this.name,
    required this.country,
    required this.price,
  }) : super(key: key);

  final String imagePath;
  final String name;
  final String country;
  final num price;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.4,
      margin: const EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 5),
            blurRadius: 10,
            color: Colors.grey,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            child: Image(
              image: AssetImage(
                imagePath,
              ),
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(kDefaultPadding / 2),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Text(
                      country.toUpperCase(),
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Text(
                  '₦$price',
                  style: const TextStyle(
                    color: kPrimaryColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

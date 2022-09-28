import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/components/home/plant_name_with_price.dart';

class FeaturedPlant extends StatelessWidget {
  const FeaturedPlant({Key? key}) : super(key: key);

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
          FeaturedItem(
            imagePath: 'assets/images/plant5.png',
            name: 'Ross Flower',
            country: 'Ghana',
            price: 1400,
          ),
          FeaturedItem(
            imagePath: 'assets/images/plant4.png',
            name: 'Ross Flower',
            country: 'Nigeria',
            price: 4000,
          ),
          FeaturedItem(
            imagePath: 'assets/images/plant3.png',
            name: 'Ross Flower',
            country: 'Nigeria',
            price: 4000,
          ),
          FeaturedItem(
            imagePath: 'assets/images/plant2.png',
            name: 'Ross Flower',
            country: 'Nigeria',
            price: 4000,
          ),
          FeaturedItem(
            imagePath: 'assets/images/plant1.png',
            name: 'Ross Flower',
            country: 'Nigeria',
            price: 4000,
          ),
        ],
      ),
    );
  }
}

class FeaturedItem extends StatelessWidget {
  const FeaturedItem({
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
      width: size.width * 0.7,
      margin: const EdgeInsets.only(
        right: 20,
      ),
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
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          PlantNameWithPrice(name: name, country: country, price: price),
        ],
      ),
    );
  }
}

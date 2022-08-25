import 'package:flutter/material.dart';
// import 'package:plant_app/utility/appbar.dart';
import 'package:plant_app/utility/bottom_nav.dart';
import 'package:plant_app/components/home/banner_with_search_form.dart';
import 'package:plant_app/components/home/title_with_more_button.dart';
import 'package:plant_app/components/home/recommended_plants.dart';
import 'package:plant_app/components/home/featured_plant.dart';
import 'package:plant_app/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const BannerWithSearchForm(),
            TitleWithMoreButton(
              title: 'Recommended',
              pressed: () {},
            ),
            const RecommendedPlants(),
            TitleWithMoreButton(
              title: 'Featured',
              pressed: () {},
            ),
            const FeaturedPlant(),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNav(),
    );
  }

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
}

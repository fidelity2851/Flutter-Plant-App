import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/pages/home.dart';
import 'package:plant_app/pages/details.dart';

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
      title: 'Flutter Plant App',
      // home: const HomeScreen(),
      theme: themeSetting(context),
      initialRoute: '/details',
      routes: {
        '/': (context) => const HomeScreen(),
        '/details': (context) => const DetailScreen(),
      },
    );
  }

  ThemeData themeSetting(BuildContext context) {
    return ThemeData(
      scaffoldBackgroundColor: kBackgroundColor,
      primaryColor: Colors.amber,
      textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
  }
}

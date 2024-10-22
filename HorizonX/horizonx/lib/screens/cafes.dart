import 'package:flutter/material.dart';
import '../data.dart';
import '../models/cafe.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/place_card.dart';

class Cafes extends StatelessWidget {
  List<Cafe> cafeList = Data.cafeList;

  Cafes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: custom_app_bar(context, "Cafes"),
      body: ListView.builder(
          itemCount: cafeList.length,
          itemBuilder: (context, _) =>
              (cafesOrRestaurants(context, cafeList[_]))),
    );
  }
}

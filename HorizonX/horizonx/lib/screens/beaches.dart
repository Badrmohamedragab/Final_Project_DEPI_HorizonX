import 'package:flutter/material.dart';
import 'package:horizonx/widgets/custom_app_bar.dart';

import '../data.dart';
import '../models/place.dart';
import '../widgets/place_card.dart';

class Beaches extends StatelessWidget {
   Beaches({super.key});
 List<Place> beachesList = Data.beachesList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: custom_app_bar(context, "Beaches"),
      body: ListView.builder(
          itemCount: beachesList.length,
          itemBuilder: (context, _) =>
          (cafesOrRestaurants(context, beachesList[_]))),
    );
  }
}

import 'package:flutter/material.dart';

import '../data.dart';
import '../models/place.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/place_card.dart';

class Parks extends StatelessWidget {
  Parks({super.key});
  List<Place> parksList = Data.parksList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: custom_app_bar(context, "Parks"),
    body: ListView.builder(
    itemCount: parksList.length,
    itemBuilder: (context, _) =>
    (cafesOrRestaurants(context, parksList[_]))),
    );
  }
}

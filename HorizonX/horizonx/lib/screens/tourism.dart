import 'package:flutter/material.dart';
import 'package:horizonx/widgets/custom_app_bar.dart';

import '../data.dart';
import '../models/place.dart';
import '../widgets/place_card.dart';

class Tourism extends StatelessWidget {
   Tourism({super.key});
  List<Place> tourismList = Data.tourismList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: custom_app_bar(context, "Tourism"),
      body: ListView.builder(
          itemCount: tourismList.length,
          itemBuilder: (context, _) =>
          (cafesOrRestaurants(context, tourismList[_]))),
    );
  }
}

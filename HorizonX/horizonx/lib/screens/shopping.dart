import 'package:flutter/material.dart';
import 'package:horizonx/widgets/custom_app_bar.dart';

import '../data.dart';
import '../models/place.dart';
import '../widgets/place_card.dart';

class Shopping extends StatelessWidget {
  Shopping({super.key});
  List<Place> shoppingList = Data.shoppingList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: custom_app_bar(context, "Shopping"),
      body: ListView.builder(
          itemCount: shoppingList.length,
          itemBuilder: (context, _) =>
          (cafesOrRestaurants(context, shoppingList[_]))),
    );
  }
}

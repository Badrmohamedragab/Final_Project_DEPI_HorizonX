import 'package:flutter/material.dart';
import 'package:horizonx/widgets/custom_app_bar.dart';
import 'package:horizonx/widgets/place_view.dart';

import '../data.dart';
import '../models/place.dart';
import '../widgets/place_card.dart';

class Shopping extends StatelessWidget {
  Shopping({super.key});
  List<Place> shoppingList = Data.shoppingList;
  @override
  Widget build(BuildContext context) {
    return placeView(context, "Shopping", shoppingList);
  }
}

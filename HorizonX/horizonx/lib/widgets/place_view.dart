import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:horizonx/widgets/place_card.dart';

import '../models/place.dart';
import 'custom_app_bar.dart';

Scaffold placeView(BuildContext context, String titleName, List<Place> list) {
  return Scaffold(
    appBar: custom_app_bar(context, titleName),
    body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, _) =>
        (cafesOrRestaurants(context, list[_]))),
  );
}
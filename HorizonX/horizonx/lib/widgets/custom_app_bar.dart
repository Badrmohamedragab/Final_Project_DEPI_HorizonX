
import 'package:flutter/material.dart';

import '../constants.dart';

AppBar custom_app_bar(BuildContext context, String titleName) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
      icon: Icon(Icons.arrow_back, color: Colors.orange),
      onPressed: () {
        Navigator.pop(context); // Return to previous screen
      },
    ),
    title: Text(
      titleName,
      style: const TextStyle(
          color: ConstColors.primaryBlueColor,
          fontSize: 22,
          fontWeight: FontWeight.bold),
    ),
    centerTitle: true,
  );
}
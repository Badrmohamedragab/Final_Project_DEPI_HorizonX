import 'package:flutter/material.dart';
import '../models/restaurant.dart';
import 'card_cafes_restaurants.dart';

class Restaurants extends StatelessWidget {
  List<Restaurant> restaurantList;

  Restaurants(this.restaurantList, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Restaurants")),
        backgroundColor: const Color.fromARGB(150, 0, 90, 158),
        shadowColor: const Color.fromARGB(255, 20, 50, 80),
      ),
      body: ListView.builder(
          itemCount: restaurantList.length,
          itemBuilder: (context, _) => (cafesOrRestaurants(restaurantList[_]))),
    );
  }
}

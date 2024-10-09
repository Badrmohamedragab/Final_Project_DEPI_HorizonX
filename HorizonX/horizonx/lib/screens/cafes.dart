import 'package:flutter/material.dart';
import '../models/cafe.dart';
import 'card_cafes_restaurants.dart';

class Cafes extends StatelessWidget {
  List<Cafe> cafeList;

  Cafes(this.cafeList, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Cafes")),
        backgroundColor: const Color.fromARGB(150, 0, 90, 158),
        shadowColor: const Color.fromARGB(255, 20, 50, 80),
      ),
      body: ListView.builder(
          itemCount: cafeList.length,
          itemBuilder: (context, _) => (cafesOrRestaurants(cafeList[_]))),
    );
  }
}

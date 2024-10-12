import 'package:flutter/material.dart';
import '../models/cafe.dart';
import 'card_cafes_restaurants.dart';

class Cafes extends StatelessWidget {
  List<Cafe> cafeList = [];

  Cafes({super.key});

  @override
  Widget build(BuildContext context) {
    cafeList = [
      Cafe(
          cityId: "Cairo",
          name: "Cafe Corniche",
          description: "Cafe",
          location: "https://maps.app.goo.gl/ERDFf8mbpULPQAqL7",
          address:
              "Corniche El Nil, Semiramis InterContinental Cairo Cairo القاهرة، 11511",
          longitude: "31.231813",
          latitude: "30.042687",
          picture:
              "https://lh5.googleusercontent.com/p/AF1QipMcvhNcuA7UGar4E-x_VI7HvH7e15nar9SgjQfQ",
          rate: 4.3,
          numberOfRatings: 264),
      Cafe(
          cityId: "Giza",
          name: "The Place",
          description: "Coffee shop",
          location: "https://maps.app.goo.gl/N8pWnTjajqLQYDRdA",
          address: "62 El-Hussein, Ad Doqi, Dokki, Giza Governorate 3751062",
          longitude: "31.199063",
          latitude: "30.043937",
          picture:
              "https://lh5.googleusercontent.com/p/AF1QipNAL81HWPOdDKwASvyt8WTrXMRd7KSXv1Qk_FHC",
          rate: 4.7,
          numberOfRatings: 43),
      Cafe(
          cityId: "Ismailia",
          name: "FRÍO Café",
          description: "Cafe",
          location: "https://maps.app.goo.gl/qBHV6HhVv1NG7UNa7",
          address: "Shbeen st El Sheikh Zayed Ismalia Third, 41511",
          longitude: "32.273812",
          latitude: "30.604687",
          picture:
              "https://lh5.googleusercontent.com/p/AF1QipPZe02KAWzzu4FeA_XdNKOYwzOLn_wt_D4mWZaE",
          rate: 4.4,
          numberOfRatings: 437),
      Cafe(
          cityId: "Alexandria",
          name: "Cafe de la Paix",
          description: "Coffee shop",
          location: "https://maps.app.goo.gl/sp2xSiNQfsttFwY77",
          address: "6W32+5VV, El-Gaish Rd, Al Mesallah Sharq, Al Attarin, Alexandria Governorate 5373002",
          longitude: "31.482563",
          latitude: "30.221187",
          picture: "https://lh5.googleusercontent.com/p/AF1QipMMakVYq0WiPAeP1u8RITTpT8BfBTG29wouDwF0",
          rate: 4.1,
          numberOfRatings: 1474)
    ];
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

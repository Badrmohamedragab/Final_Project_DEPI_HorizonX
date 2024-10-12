import 'package:flutter/material.dart';
import '../models/restaurant.dart';
import 'card_cafes_restaurants.dart';

class Restaurants extends StatelessWidget {
  List<Restaurant> restaurantList = [];

  Restaurants({super.key});

  @override
  Widget build(BuildContext context) {
    restaurantList = [
      Restaurant(
          cityId: "Alexandria",
          name: "Adrenaline Restaurant",
          description: "American restaurant",
          location: "https://maps.app.goo.gl/Uvgnr4Y6E8iBgx6F6",
          address:
              "Beside Olympic Club Gate and Hambaka cafe، 11 Ahmed Zewail Square, Bab Sharqi WA Wabour Al Meyah, Bab Sharqi, Alexandria Governorate 21500",
          longitude: "29.918188",
          latitude: "31.200063",
          picture:
              "https://lh5.googleusercontent.com/p/AF1QipOaJXKbd7IQ6uiC5VUQvf9PUHcm5V6_4o8sNjcq",
          rate: 5.0,
          numberOfRatings: 3),
      Restaurant(
          cityId: "Alexandria",
          name: "Ruby's cafe and Restaurant",
          description: "American restaurant",
          location: "https://maps.app.goo.gl/egZevZzbaoZZC7xL7",
          address:
              "3 Kafr Abdou, Abu an Nawatir, Sidi Gaber, Alexandria Governorate 21523",
          longitude: "29.957437",
          latitude: "31.223312",
          picture:
              "https://lh5.googleusercontent.com/p/AF1QipP0DmKWcu9iGZ40yiU7iTMePyI4N0gyBjz04s8h",
          rate: 4.6,
          numberOfRatings: 152),
      Restaurant(
          cityId: "Cairo",
          name: "Egyptian Nights",
          description: "Egyptian restaurant",
          location: "https://maps.app.goo.gl/vWmWAEMsL6w6Sg5Y8",
          address:
              "Cairo Marriott Hotel - 16 Saray El, Gezira St, Zamalek, Cairo Governorate 11211",
          longitude: "31.224312",
          latitude: "30.056812",
          picture:
              "https://lh5.googleusercontent.com/p/AF1QipNr-YuDf_RbXdpOtC1QkqpTu375PHtceX-82sGC",
          rate: 4.4,
          numberOfRatings: 322)
    ];
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

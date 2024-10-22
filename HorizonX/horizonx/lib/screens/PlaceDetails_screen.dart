import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:horizonx/constants.dart';
import 'package:horizonx/models/place.dart';
class PlaceDetailsScreen extends StatelessWidget {
  final Place place;
  const PlaceDetailsScreen({super.key , required this.place});
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Restaurant"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration:  BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 15,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Stack(
                children: [
                  // Image at the top
                  Image.network(
                    place.picture ?? "assets/place/default",
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 200,
                  ),
                  const Positioned(
                    top: 16,
                    right: 16,
                    child: Icon(
                      Icons.favorite_border,
                      color: ConstColors.primaryGoldColor,
                      size: 30,
                    ),
                  ),
                  Positioned(
                    left: 16,
                    top: 70,
                    child: Text(
                      place.name,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(
                            blurRadius: 8.0,
                            color: Colors.black,
                            offset: Offset(1.0, 1.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 16,
                    left: 16,
                    right: 16,
                    child: Row(
                      children: [
                        Flexible(
                          child: Row(
                            children: [
                              const Icon(Icons.location_on, color: ConstColors.primaryGoldColor),
                              const SizedBox(width: 5),
                              Flexible(
                                child: Text(
                                  place.address,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    shadows: [
                                      Shadow(
                                        blurRadius: 6.0,
                                        color: Colors.black,
                                        offset: Offset(1.0, 1.0),
                                      ),
                                    ],
                                  ),
                                  maxLines: 2,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        const Row(
                          children: [
                            Icon(Icons.star, color: ConstColors.primaryGoldColor),
                            Icon(Icons.star, color: ConstColors.primaryGoldColor),
                            Icon(Icons.star, color: ConstColors.primaryGoldColor),
                            Icon(Icons.star, color: ConstColors.primaryGoldColor),
                            Icon(Icons.star_border, color: ConstColors.primaryGoldColor),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Description",
                      style:  TextStyle(
                        color: ConstColors.primaryBlueColor,
                        fontSize: 24,
                        fontWeight: FontWeight.bold
                      ),


                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      place.description,
                      style:  const TextStyle(
                          color: ConstColors.primaryBlueColor,
                          fontSize: 16,
                      ),
                    ),
                    const Divider(
                      color: ConstColors.primaryBlueColor,
                      height: 25,
                      thickness: 0.7,

                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: ConstColors.primaryBlueColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                          ),
                          child: const Text(
                            "How to go !",
                            style: TextStyle(
                              color: Colors.white, // Text color
                              fontSize: 14,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: ConstColors.primaryBlueColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                          ),
                          child: const Text(
                            "Reviews",
                            style: TextStyle(
                              color: Colors.white, // Text color
                              fontSize: 14,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: ConstColors.primaryBlueColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                          ),
                          child: const Text(
                            "Booking",
                            style: TextStyle(
                              color: Colors.white, // Text color
                              fontSize: 14,
                            ),
                          ),
                        ),

                      ],
                    ),
                    const Divider(
                      color: ConstColors.primaryBlueColor,
                      height: 25,
                      thickness: 0.7,

                    ),


                  ],
                )

            )
          ],
        ),
      ),
    );
  }
}

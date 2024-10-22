import 'package:horizonx/models/restaurant.dart';

import 'models/cafe.dart';
import 'models/place.dart';

class Data{
  static List<Cafe> cafeList =  [
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
        address:
        "6W32+5VV, El-Gaish Rd, Al Mesallah Sharq, Al Attarin, Alexandria Governorate 5373002",
        longitude: "31.482563",
        latitude: "30.221187",
        picture:
        "https://lh5.googleusercontent.com/p/AF1QipMMakVYq0WiPAeP1u8RITTpT8BfBTG29wouDwF0",
        rate: 4.1,
        numberOfRatings: 1474)
  ];
  static List<Restaurant> restaurantList =  [
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
  static List<Place> beachesList = [
    Place(
      cityId: "Sharm El Sheikh",
      name: "Naama Bay",
      description: "Famous beach with crystal-clear waters and vibrant marine life.",
      location: "https://maps.app.goo.gl/H9PkjR7RmXpHZx8w6",
      address: "Naama Bay, Sharm El Sheikh",
      longitude: "34.3071",
      latitude: "27.9147",
      picture: "https://lh5.googleusercontent.com/p/AF1QipOzEcJjdOlftnYoGvXg9MDg1OW5TfsypCKlyPIv",
      rate: 4.7,
      numberOfRatings: 17000
  ),
      Place(
  cityId: "Hurghada",
  name: "Sahl Hasheesh Beach",
  description: "Exclusive beach area with beautiful white sand and blue waters.",
  location: "https://maps.app.goo.gl/c8BFGtwpVi85TgGG6",
  address: "Sahl Hasheesh, Hurghada",
  longitude: "33.8912",
  latitude: "27.0531",
  picture: "https://lh5.googleusercontent.com/p/AF1QipPi7y0e_F8YbtalKiFspHcwP7hPEFPkVbiM5szH",
  rate: 4.8,
  numberOfRatings: 22000
  ),
  Place(
  cityId: "Alexandria",
  name: "Mamoura Beach",
  description: "A popular public beach in Alexandria.",
  location: "https://maps.app.goo.gl/cQzmVsRpHJNhVHXH9",
  address: "Mamoura, Alexandria",
  longitude: "29.8598",
  latitude: "31.2743",
  picture: "https://lh5.googleusercontent.com/p/AF1QipOKxyyKJlyHTnFTLX6QElz6Nv7Z3eAOmb3L5n1H",
  rate: 4.5,
  numberOfRatings: 18000
  ),
  ];
  static List<Place> tourismList = [
    Place(
        cityId: "Cairo",
        name: "The Egyptian Museum",
        description: "Famous museum housing a vast collection of ancient Egyptian artifacts.",
        location: "https://maps.app.goo.gl/1D2fk34mLf1rZoVh8",
        address: "Tahrir Square, Cairo",
        longitude: "31.2357",
        latitude: "30.0444",
        picture: "https://lh5.googleusercontent.com/p/AF1QipPqgF9ddLs7xtFcvhZr8e9Zz2IMKsVu5_gjYRc",
        rate: 4.6,
        numberOfRatings: 50000
    ),
    Place(
        cityId: "Alexandria",
        name: "Bibliotheca Alexandrina",
        description: "Modern library and cultural center.",
        location: "https://maps.app.goo.gl/8Qt72JKNXyN9f6FC9",
        address: "El Shatby, Alexandria",
        longitude: "29.9091",
        latitude: "31.2156",
        picture: "https://lh5.googleusercontent.com/p/AF1QipPzX_8DlHz_r-7uFzDrNUDJ_XutZwVrRxdHGHo",
        rate: 4.7,
        numberOfRatings: 35000
    ),
    Place(
        cityId: "Luxor",
        name: "Valley of the Kings",
        description: "A series of tombs for the Pharaohs of ancient Egypt.",
        location: "https://maps.app.goo.gl/6GkK9TyMd4y7MNzk8",
        address: "West Bank, Luxor",
        longitude: "32.6044",
        latitude: "25.7402",
        picture: "https://lh5.googleusercontent.com/p/AF1QipNWctc6Wss7RaW8L5KtYP7sErbiQa12HrfEwWVp",
        rate: 4.8,
        numberOfRatings: 15000
    ),
    Place(
        cityId: "Aswan",
        name: "Philae Temple",
        description: "Ancient temple complex dedicated to the goddess Isis.",
        location: "https://maps.app.goo.gl/dR3pFsnKJGcCrScs9",
        address: "Philae Island, Aswan",
        longitude: "32.8998",
        latitude: "24.0223",
        picture: "https://lh5.googleusercontent.com/p/AF1QipP5-MkV3WbkPiRt1MIeqT82U7ULJrG_3iVxZb-V",
        rate: 4.7,
        numberOfRatings: 25000
    ),
    Place(
        cityId: "Giza",
        name: "Giza Pyramids",
        description: "Iconic ancient pyramids and the Sphinx.",
        location: "https://maps.app.goo.gl/5X1v9H7ZKnBzXKbb7",
        address: "Al Haram, Giza",
        longitude: "31.1342",
        latitude: "29.9765",
        picture: "https://lh5.googleusercontent.com/p/AF1QipNfRi5cR4xDYNrYPSft8HVEavz2obYHjKt_c_HG",
        rate: 4.9,
        numberOfRatings: 100000
    )
  ];
  static List<Place> shoppingList = [
    Place(
        cityId: "Cairo",
        name: "Mall of Egypt",
        description: "A massive shopping mall with international brands and entertainment options.",
        location: "https://maps.app.goo.gl/L6JzYxxQjhgUZwFY9",
        address: "Al Wahat Road, 6th of October, Giza",
        longitude: "31.0184",
        latitude: "29.9647",
        picture: "https://lh5.googleusercontent.com/p/AF1QipOxR70R13GlzoZFs7oeO9HZAC1KytjG9WvG9uDj",
        rate: 4.5,
        numberOfRatings: 42000
    ),
    Place(
        cityId: "Alexandria",
        name: "City Centre Alexandria",
        description: "Large shopping mall with a variety of international and local brands.",
        location: "https://maps.app.goo.gl/P3MV2W7HBZLZGzks7",
        address: "Alex Desert Rd, Alexandria",
        longitude: "29.9466",
        latitude: "31.2076",
        picture: "https://lh5.googleusercontent.com/p/AF1QipOxf8_tSyDlYgM8YcXgRjFnLeFnZ0kXHK07fNZK",
        rate: 4.4,
        numberOfRatings: 30000
    ),
    Place(
        cityId: "Hurghada",
        name: "Senzo Mall",
        description: "Popular shopping mall in Hurghada.",
        location: "https://maps.app.goo.gl/z6G8bcPu7q6G69sY7",
        address: "Village Road, Hurghada",
        longitude: "33.8117",
        latitude: "27.1444",
        picture: "https://lh5.googleusercontent.com/p/AF1QipPi7NUzqOZBLpHjTXxNTWq9CUp8kGoRHe_fOTXD",
        rate: 4.3,
        numberOfRatings: 15000
    ),
    Place(
        cityId: "Sharm El Sheikh",
        name: "Soho Square",
        description: "Vibrant shopping and entertainment complex.",
        location: "https://maps.app.goo.gl/zA3PtLFrWdpZwLmb7",
        address: "White Knight Beach, Sharm El Sheikh",
        longitude: "34.3838",
        latitude: "27.9621",
        picture: "https://lh5.googleusercontent.com/p/AF1QipNFnPlbNfi6PFSYfi84OiXyqSz0aFs5-QM4s8Al",
        rate: 4.6,
        numberOfRatings: 12000
    ),
    Place(
        cityId: "Cairo",
        name: "Cairo Festival City Mall",
        description: "Huge shopping complex with a variety of dining, shopping, and entertainment options.",
        location: "https://maps.app.goo.gl/6X6xSsdLnCQHfDQn9",
        address: "New Cairo, Cairo",
        longitude: "31.4341",
        latitude: "30.0154",
        picture: "https://lh5.googleusercontent.com/p/AF1QipNu4qlnKT_u5jyzTx7jdW0-QeOKGvLGInbNKlYV",
        rate: 4.7,
        numberOfRatings: 50000
    )
  ];
  static List<Place> parksList  = [
    Place(
        cityId: "Cairo",
        name: "Al-Azhar Park",
        description: "A large public park offering stunning views of Cairo's skyline and Islamic architecture.",
        location: "https://maps.app.goo.gl/WmnhF32UzAnFp2BG9",
        address: "Salah Salem St, El-Darb El-Ahmar, Cairo",
        longitude: "31.2636",
        latitude: "30.0385",
        picture: "https://lh5.googleusercontent.com/p/AF1QipP4XMsvh64RszWiUuex7YahP_6RCk5kElzDhYxd",
        rate: 4.7,
        numberOfRatings: 41000
    ),
    Place(
        cityId: "Alexandria",
        name: "Montaza Palace Gardens",
        description: "Beautiful gardens surrounding the historic Montaza Palace, overlooking the Mediterranean Sea.",
        location: "https://maps.app.goo.gl/kz3T8HtZsbTvZPf57",
        address: "El-Montaza, Alexandria",
        longitude: "29.9532",
        latitude: "31.2775",
        picture: "https://lh5.googleusercontent.com/p/AF1QipPuC1vO0FXN6-jE9rMdZtUb99CwZXEX59sqUzCa",
        rate: 4.6,
        numberOfRatings: 37000
    ),
    Place(
        cityId: "Giza",
        name: "Orman Garden",
        description: "A botanical garden offering a peaceful escape with a variety of plant species.",
        location: "https://maps.app.goo.gl/Sbhm4MDyEmFb6syh8",
        address: "University St, Giza",
        longitude: "31.2154",
        latitude: "30.0289",
        picture: "https://lh5.googleusercontent.com/p/AF1QipNw_TNT8Btv5B5Kc4bKx_H2KOjcfzoxtO7l1hJJ",
        rate: 4.3,
        numberOfRatings: 12000
    ),
    Place(
        cityId: "Aswan",
        name: "Feryal Garden",
        description: "A tranquil garden located by the Nile River with picturesque views.",
        location: "https://maps.app.goo.gl/qYXVtJnBcWVho2ja6",
        address: "Corniche El Nile, Aswan",
        longitude: "32.8984",
        latitude: "24.0864",
        picture: "https://lh5.googleusercontent.com/p/AF1QipOxevlRlnSx0yyAL8FqZSCBLfgfSEYOA4Z8tKWh",
        rate: 4.5,
        numberOfRatings: 7000
    ),
    Place(
        cityId: "Hurghada",
        name: "Hurghada Botanical Garden",
        description: "A peaceful green space with a variety of native and exotic plants.",
        location: "https://maps.app.goo.gl/47F72X8SYpP2f9rN7",
        address: "Hurghada Marina Blvd, Hurghada",
        longitude: "33.8372",
        latitude: "27.1922",
        picture: "https://lh5.googleusercontent.com/p/AF1QipMVRfxytsHYW-0Kh_-g3jO6KtGml0lTIyWAP7QR",
        rate: 4.4,
        numberOfRatings: 5000
    )
  ];
}
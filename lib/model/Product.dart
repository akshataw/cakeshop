import 'package:flutter/material.dart';

class Product {
  final String name, img, description;
  final int id;
  final double price;
  final bool isAdded, isFav;

  Product(
      {this.id,
      this.img,
      this.name,
      this.price,
      this.description,
      this.isAdded,
      this.isFav});
}

List<Product> cookies = [
  Product(
    id: 1,
    name: "Cherry Chocochip Cookie",
    price: 4.50,
    img: "assets/images/cherryChocoChipCookie.jpg",
    description: cookieDescription,
    isAdded: false,
    isFav: true,
  ),
  Product(
    id: 2,
    name: "Chocolate Chip Cookie",
    price: 5.50,
    img: "assets/images/chocolateChipCookies.jpg",
    description: cookieDescription,
    isAdded: false,
    isFav: false,
  ),
  Product(
    id: 3,
    name: "Chocolate Cookie",
    price: 5.50,
    img: "assets/images/chocolateCookies.jpg",
    description: cookieDescription,
    isAdded: false,
    isFav: false,
  ),
  Product(
    id: 4,
    name: "Grinch Cookie",
    price: 7.50,
    img: "assets/images/grinchCookie.jpg",
    description: cookieDescription,
    isAdded: false,
    isFav: false,
  ),
  Product(
    id: 5,
    name: "Chocolate Marble Cookie",
    price: 5.50,
    img: "assets/images/chocolateMarbleCookies.jpg",
    description: cookieDescription,
    isAdded: false,
    isFav: false,
  ),
  Product(
    id: 6,
    name: "Red Velvet Chocochip Cookie",
    price: 6.50,
    img: "assets/images/redVelvetChocoChoipCookie.jpg",
    description: cookieDescription,
    isAdded: false,
    isFav: false,
  ),
  Product(
    id: 7,
    name: "Sombrero Cookie",
    price: 5.50,
    img: "assets/images/sombreroCookies.jpg",
    description: cookieDescription,
    isAdded: false,
    isFav: false,
  ),
];

const cookieDescription =
    "Today me will live in the moment, unless it's unpleasant, in which case me will eat a cookie";

List<Product> products = [
  Product(
    id: 1,
    name: "Berry Vanilla Layer Cake",
    price: 5.50,
    img: "assets/images/berryVanillaLayerCake.jpg",
    description:
        "Cakes are taken as the best way of celebration as it hangs around the people until the cake cutting ceremony completes. It allows people to eat, sing and play which makes the environment more enjoyable and fun excitement.",
    isAdded: false,
    isFav: false,
  ),
  Product(
    id: 2,
    name: "Black Forest Cake",
    price: 7.99,
    img: "assets/images/blackForestCake.jpg",
    description:
        "Cakes are taken as the best way of celebration as it hangs around the people until the cake cutting ceremony completes. It allows people to eat, sing and play which makes the environment more enjoyable and fun excitement.",
    isAdded: false,
    isFav: true,
  ),
  Product(
    id: 3,
    name: "Buttor Scotch Cake",
    price: 5.55,
    img: "assets/images/butter-scotch-cake.jpeg",
    description:
        "Cakes are taken as the best way of celebration as it hangs around the people until the cake cutting ceremony completes. It allows people to eat, sing and play which makes the environment more enjoyable and fun excitement.",
    isAdded: false,
    isFav: false,
  ),
  Product(
    id: 4,
    name: "Chocolate Candy Cake",
    price: 8.50,
    img: "assets/images/chocolateCandyCake.jpg",
    description:
        "Cakes are taken as the best way of celebration as it hangs around the people until the cake cutting ceremony completes. It allows people to eat, sing and play which makes the environment more enjoyable and fun excitement.",
    isAdded: true,
    isFav: true,
  ),
  Product(
    id: 5,
    name: "Fruit Sangria Cake",
    price: 6.99,
    img: "assets/images/fruitSangria.jpg",
    description:
        "Cakes are taken as the best way of celebration as it hangs around the people until the cake cutting ceremony completes. It allows people to eat, sing and play which makes the environment more enjoyable and fun excitement.",
    isAdded: false,
    isFav: false,
  ),
  Product(
    id: 6,
    name: "Black Forest Cake",
    price: 5.55,
    img: "assets/images/cherryRippleBlackForest.jpeg",
    description:
        "Cakes are taken as the best way of celebration as it hangs around the people until the cake cutting ceremony completes. It allows people to eat, sing and play which makes the environment more enjoyable and fun excitement.",
    isAdded: false,
    isFav: false,
  ),
  Product(
    id: 7,
    name: "Rainbow Cake",
    price: 6.20,
    img: "assets/images/rainbowCake.jpg",
    description:
        "Cakes are taken as the best way of celebration as it hangs around the people until the cake cutting ceremony completes. It allows people to eat, sing and play which makes the environment more enjoyable and fun excitement.",
    isAdded: false,
    isFav: false,
  ),
  Product(
    id: 8,
    name: "Strawberry Tuxedo Cake",
    price: 5.99,
    img: "assets/images/strawberryTuxedoCake.jpg",
    description:
        "Cakes are taken as the best way of celebration as it hangs around the people until the cake cutting ceremony completes. It allows people to eat, sing and play which makes the environment more enjoyable and fun excitement.",
    isAdded: false,
    isFav: true,
  ),
];

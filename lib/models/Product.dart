import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;

  Product(
      {required this.image,
      required this.title,
      required this.description,
      required this.price,
      required this.size,
      required this.id,
      required this.color});
}

List<Product> cosmeticProduct = [
  Product(
      id: 1,
      title: "Face powder",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/csmtc_ic_facepowder.png",
      color: const Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "Lipistics",
      price: 234,
      size: 8,
      description: dummyText,
      image: "assets/images/csmtc_ic_lipistic.png",
      color: const Color(0xFFD3A984)),
  Product(
      id: 3,
      title: "Hang Top",
      price: 234,
      size: 10,
      description: dummyText,
      image: "assets/images/csmtc_ic_makeup.png",
      color: const Color(0xFF989493)),
  Product(
      id: 4,
      title: "Perfume",
      price: 234,
      size: 11,
      description: dummyText,
      image: "assets/images/csmtc_ic_perfume.png",
      color: const Color(0xFFE6B398)),
  Product(
      id: 5,
      title: "Body soup",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/csmtc_ic_soup.png",
      color: const Color(0xFFFB7883)),
];
List<Product> electricProduct = [
  Product(
      id: 1,
      title: "Head phone",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/eltc_ic_headphone.png",
      color: const Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "Laptop",
      price: 234,
      size: 8,
      description: dummyText,
      image: "assets/images/eltc_ic_laptop.png",
      color: const Color(0xFFD3A984)),
  Product(
      id: 3,
      title: "Mobile phone",
      price: 234,
      size: 10,
      description: dummyText,
      image: "assets/images/eltc_ic_phone.png",
      color: const Color(0xFF989493)),
  Product(
      id: 4,
      title: "Tablet phone",
      price: 234,
      size: 11,
      description: dummyText,
      image: "assets/images/eltc_ic_tablet.png",
      color: const Color(0xFFE6B398)),
  Product(
      id: 5,
      title: "Smart watch",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/eltc_ic_watch.png",
      color: const Color(0xFFFB7883)),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";

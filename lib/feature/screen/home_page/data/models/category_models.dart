import 'package:flutter/material.dart';

class CategoryModels {
  final String id;
  final String name;
  final String count;
  final Color color;

  CategoryModels({
    required this.id,
    required this.name,
    required this.count,
    required this.color,
  });
}

List<CategoryModels> listcategory = [
  CategoryModels(
    id: "1",
    name: "New Arrivels",
    count: '208 Product',
    color: Colors.grey,
  ),

  CategoryModels(
    id: "1",
    name: "Clothes",
    count: '208 Product',
    color: Colors.greenAccent,
  ),
  CategoryModels(
    id: "1",
    name: "Bags",
    count: '208 Product',
    color: Colors.grey,
  ),
  CategoryModels(
    id: "1",
    name: "Shoes",
    count: '208 Product',
    color: Colors.lightBlue,
  ),
  CategoryModels(
    id: "1",
    name: "Electrinics",
    count: '208 Product',
    color: Colors.blue,
  ),
];

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:ecommerce/core/app_color.dart';

class CategoryModels {
  final String id;
  final String name;
  final int productsCount;
  final Color bgColor;
  final Color textColor;

  CategoryModels({
    required this.id,
    required this.name,
    required this.productsCount,
    required this.bgColor,
    required this.textColor,
  });

  CategoryModels copyWith({
    String? id,
    String? name,
    int? productsCount,
    Color? bgColor,
    Color? textColor,
  }) {
    return CategoryModels(
      id: id ?? this.id,
      name: name ?? this.name,
      productsCount: productsCount ?? this.productsCount,
      bgColor: bgColor ?? this.bgColor,
      textColor: textColor ?? this.textColor,
    );
  }
}

List<CategoryModels> listcategory = [
  CategoryModels(
    id: '1',
    name: 'New Arrivals',
    productsCount: 208,
    bgColor: AppColors.grey,
    textColor: AppColors.black,
  ),
  CategoryModels(
    id: '2',
    name: 'Clothes',
    productsCount: 358,
    bgColor: AppColors.green,
    textColor: AppColors.white,
  ),
  CategoryModels(
    id: '3',
    name: 'Bags',
    productsCount: 160,
    bgColor: AppColors.black,
    textColor: AppColors.white,
  ),
  CategoryModels(
    id: '4',
    name: 'Shoes',
    productsCount: 230,
    bgColor: AppColors.grey,
    textColor: AppColors.black,
  ),
  CategoryModels(
    id: '5',
    name: 'Electronics',
    productsCount: 101,
    bgColor: AppColors.blue,
    textColor: AppColors.white,
  ),
];

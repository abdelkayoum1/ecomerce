import 'package:ecommerce/core/app_color.dart';
import 'package:flutter/material.dart';

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

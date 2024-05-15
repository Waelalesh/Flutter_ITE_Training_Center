import 'package:flutter/material.dart';
//? Actullay this Models Make on context json api 

class ProductVarietiesModel {
  ProductVarietiesModel(
      {required this.backgroundColor,
      required this.borderSideColor,
      required this.image,
      required this.title});
  final String image;
  final Color borderSideColor;
  final Color backgroundColor;
  final String title;
}

import 'package:flutter/material.dart';
import 'package:flutter_ite_project/Features/Explore/Models/product_varieties.dart';

import 'package:sizer/sizer.dart';

class ProductVarietiesCard extends StatelessWidget {
  const ProductVarietiesCard({super.key, required this.productVarietiesModel});
  final ProductVarietiesModel productVarietiesModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25.h,
      padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.5.h),
      margin: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.w),
          color: productVarietiesModel.backgroundColor,
          border: Border.all(
              color: productVarietiesModel.borderSideColor, width: 0.5.w)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            productVarietiesModel.image,
            height: 9.h,
          ),
          SizedBox(
            height: 3.h,
          ),
          Expanded(
              child: Text(
            productVarietiesModel.title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium,
          ))
        ],
      ),
    );
  }
}

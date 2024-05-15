import 'package:flutter/material.dart';
import 'package:flutter_ite_project/Features/Explore/Widgets/Products_Screen_Widgets/appbar_widget.dart';

import 'package:sizer/sizer.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({
    super.key,
    required this.productVarietiesName,
  });

  final String productVarietiesName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
      preferredSize: Size(double.infinity, 6.h),
      child: AppBarWidget(
        productVarietiesName: productVarietiesName,
      ),
    ));
  }
}

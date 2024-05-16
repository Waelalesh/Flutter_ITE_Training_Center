import 'package:flutter/material.dart';
import 'package:flutter_ite_project/Features/Explore/Widgets/Products_Screen_Widgets/appbar_widget.dart';
import 'package:flutter_ite_project/Features/Explore/Widgets/Products_Screen_Widgets/product_card_widget.dart';
import 'package:flutter_ite_project/Utils/Constant/lists.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

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
      ),
      body: AlignedGridView.count(
        crossAxisCount: 2,
        itemCount: productsModelList.length,
        itemBuilder: (BuildContext context, int index) {
          return ProductCardWidget(productsModel: productsModelList[index]) ;
        },
      ),
    );
  }
}

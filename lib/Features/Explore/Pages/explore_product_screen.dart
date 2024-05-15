import 'package:flutter/material.dart';
import 'package:flutter_ite_project/Features/Explore/Widgets/Explore_Product_Screen_Widgets/product_varieties_card.dart';
import 'package:flutter_ite_project/Utils/Constant/lists.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ExploreProductScreen extends StatelessWidget {
  const ExploreProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Find Products",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
      body: AlignedGridView.count(
        crossAxisCount: 2,
        itemCount: productVarietiesModelList.length,
        itemBuilder: (BuildContext context, int index) {
          return ProductVarietiesCard(
            productVarietiesModel: productVarietiesModelList[index], 
          );
        },
      ),
    );
  }
}

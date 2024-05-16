import 'package:flutter/material.dart';
import 'package:flutter_ite_project/Features/Explore/Models/products_model.dart';
import 'package:flutter_ite_project/Features/Explore/Widgets/Products_Screen_Widgets/plus_button_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget({super.key, required this.productsModel});
  final ProductsModel productsModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.h),
      padding: EdgeInsets.only(top: 2.h, bottom: 1.h, left: 2.w, right: 1.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3.w),
          border: Border.all(color: Colors.black, width: 0.3)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
              alignment: FractionalOffset.center,
              child: Image.asset(productsModel.image)),
          SizedBox(
            height: 1.h,
          ),
          Text(
            productsModel.title,
            style: TextStyle(fontFamily: GoogleFonts.poppins().fontFamily),
          ),
          SizedBox(
            height: 1.h,
          ),
          Text(
            "${productsModel.subTitle}\nPrice",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                productsModel.price,
                style: const TextStyle(
                  color: Colors.black,
                ),
              ),
               PlusButtonWidget(
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );
  }
}

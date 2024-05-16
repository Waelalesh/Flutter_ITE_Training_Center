import 'package:flutter/material.dart';
import 'package:flutter_ite_project/Utils/Constant/colors.dart';
import 'package:flutter_ite_project/Utils/Constant/images.dart';
import 'package:flutter_ite_project/Utils/function.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, required this.productVarietiesName});
  final String productVarietiesName;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      forceMaterialTransparency: true,
      title: Text(
        productVarietiesName,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      centerTitle: true,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios_new),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions: const [PlusButtonWidget()],
    );
  }
}

class PlusButtonWidget extends StatelessWidget {
  const PlusButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 2.w),
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3.w)),
        color: AppColor.splashScreenColor,
        onPressed: () {
          showButtomSheet(context);
        },
        minWidth: 0.01.w,
        height: 4.5.h,
        child: SvgPicture.asset(
          AppImageAssets.plusIconSvg,
          height: 1.5.h,
          width: 2.w,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_ite_project/Features/Explore/Widgets/Products_Screen_Widgets/text_form_field_widget.dart';
import 'package:flutter_ite_project/Utils/Constant/colors.dart';
import 'package:flutter_ite_project/Utils/Constant/images.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, required this.productVarietiesName});
  final String productVarietiesName;

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
      actions: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 2.w),
          child: MaterialButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(3.w)),
            color: AppColor.splashScreenColor,
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (builder) => Container(
                        height: 45.h,
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 4.w, vertical: 2.h),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Add",
                                    style:
                                        Theme.of(context).textTheme.bodyMedium,
                                  ),
                                  IconButton(
                                      iconSize: 20.sp,
                                      onPressed: () => Navigator.pop(context),
                                      icon: const Icon(Icons.close_rounded)),
                                ],
                              ),
                            ),
                            const Divider(
                              color: Colors.black,
                              thickness: 0.2,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 4.w),
                              child: Column(
                                children: [
                                  const TextformFieldWidget(hintText: "Name"),
                                  const TextformFieldWidget(
                                      hintText: "Description"),
                                  const TextformFieldWidget(hintText: "Price"),
                                  // TextformFieldWidget(hintText: "Image"),
                                  SizedBox(
                                    height: 1.h,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    // onPressed: () {},
                                    children: [
                                      Text("Image",
                                          style: Theme.of(context)
                                              .textTheme
                                              .headlineMedium),
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                            Icons.arrow_forward_ios_outlined),
                                      )
                                    ],
                                  ),
                                  const Divider(
                                    color: Colors.black,
                                    thickness: 0.2,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ));
            },
            minWidth: 0.01.w,
            height: 4.5.h,
            child: SvgPicture.asset(
              AppImageAssets.plusIconSvg,
              height: 1.5.h,
              width: 2.w,
            ),
          ),
        )
      ],
    );
  }
}

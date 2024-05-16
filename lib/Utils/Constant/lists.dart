// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_ite_project/Features/Explore/Models/product_varieties.dart';
import 'package:flutter_ite_project/Features/Explore/Models/products_model.dart';
import 'package:flutter_ite_project/Utils/Constant/colors.dart';
import 'package:flutter_ite_project/Utils/Constant/images.dart';
import 'package:flutter_svg/svg.dart';

List<ProductsModel> productsModelList = [
  ProductsModel(
      image: AppImageAssets.cokePng,
      title: "Diet Coke",
      subTitle: "355ml",
      price: "\$1.99"),
  ProductsModel(
      image: AppImageAssets.spritePng,
      title: "Sprite Can",
      subTitle: "325ml",
      price: "\$1.50"),
  ProductsModel(
      image: AppImageAssets.strubaryPng,
      title: '''Apple & Grape 
Juice''',
      subTitle: "2L,",
      price: "\$5.99"),
  ProductsModel(
      image: AppImageAssets.strubaryPng,
      title: '''Apple & Grape 
Juice''',
      subTitle: "2L,",
      price: "\$5.99"),
  ProductsModel(
      image: AppImageAssets.cocaColaPng,
      title: "Coca Cola Can",
      subTitle: "325ml",
      price: "\$4.99"),
  ProductsModel(
      image: AppImageAssets.pepsiPng,
      title: "Pepsi Can",
      subTitle: "330ml",
      price: "\$4.99"),
];
List<BottomNavigationBarItem> buttomNavigationBarItems = [
  BottomNavigationBarItem(
      activeIcon: SvgPicture.asset(
        color: AppColor.splashScreenColor,
        AppImageAssets.blackStoreIconSvg,
      ),
      icon: SvgPicture.asset(
        AppImageAssets.blackStoreIconSvg,
      ),
      label: "Shop"),
  BottomNavigationBarItem(
    activeIcon: SvgPicture.asset(
      color: AppColor.splashScreenColor,
      AppImageAssets.blackExploreIconSvg,
    ),
    icon: SvgPicture.asset(
      AppImageAssets.blackExploreIconSvg,
    ),
    label: "Explore",
  ),
  BottomNavigationBarItem(
    activeIcon: SvgPicture.asset(
      color: AppColor.splashScreenColor,
      AppImageAssets.blackCartIconSvg,
    ),
    icon: SvgPicture.asset(
      AppImageAssets.blackCartIconSvg,
    ),
    label: "Cart",
  ),
  BottomNavigationBarItem(
    activeIcon: SvgPicture.asset(
      color: AppColor.splashScreenColor,
      AppImageAssets.blackFavoriteIconSvg,
    ),
    icon: SvgPicture.asset(
      AppImageAssets.blackFavoriteIconSvg,
    ),
    label: "Favorite",
  ),
  BottomNavigationBarItem(
    activeIcon: SvgPicture.asset(
      color: AppColor.splashScreenColor,
      AppImageAssets.blackProfileIconSvg,
    ),
    icon: SvgPicture.asset(
      AppImageAssets.blackProfileIconSvg,
    ),
    label: "Profile",
  ),
];
List<ProductVarietiesModel> productVarietiesModelList = [
  ProductVarietiesModel(
      backgroundColor: AppColor.cardGreenColor,
      borderSideColor: AppColor.cardGreenBorderColor,
      image: AppImageAssets.fruitesImagePng,
      title: "Frash Fruits &Vegetable"),
  ProductVarietiesModel(
      backgroundColor: AppColor.cardOrangeColor,
      borderSideColor: AppColor.cardOrangeBorderColor,
      image: AppImageAssets.oilsImagePng,
      title: "Cooking Oil &Ghee"),
  ProductVarietiesModel(
      backgroundColor: AppColor.cardRedColor,
      borderSideColor: AppColor.cardRedBorderColor,
      image: AppImageAssets.meatImagePng,
      title: "Meat & Fish"),
  ProductVarietiesModel(
      backgroundColor: AppColor.cardPurpleColor,
      borderSideColor: AppColor.cardPurpleBorderColor,
      image: AppImageAssets.bakeryImagePng,
      title: "Bakery & Snacks"),
  ProductVarietiesModel(
      backgroundColor: AppColor.cardYellowColor,
      borderSideColor: AppColor.cardYellowBorderColor,
      image: AppImageAssets.eggsImagePng,
      title: "Dairy & Eggs"),
  ProductVarietiesModel(
      backgroundColor: AppColor.cardBlueColor,
      borderSideColor: AppColor.cardBlueBorderColor,
      image: AppImageAssets.beveragesImagePng,
      title: "Beverages"),
  ProductVarietiesModel(
      backgroundColor: AppColor.cardGreenColor,
      borderSideColor: AppColor.cardGreenBorderColor,
      image: AppImageAssets.fruitesImagePng,
      title: "Frash Fruits &Vegetable"),
  ProductVarietiesModel(
      backgroundColor: AppColor.cardOrangeColor,
      borderSideColor: AppColor.cardOrangeBorderColor,
      image: AppImageAssets.oilsImagePng,
      title: "Cooking Oil &Ghee"),
  ProductVarietiesModel(
      backgroundColor: AppColor.cardRedColor,
      borderSideColor: AppColor.cardRedBorderColor,
      image: AppImageAssets.meatImagePng,
      title: "Meat & Fish"),
  ProductVarietiesModel(
      backgroundColor: AppColor.cardPurpleColor,
      borderSideColor: AppColor.cardPurpleBorderColor,
      image: AppImageAssets.bakeryImagePng,
      title: "Bakery & Snacks"),
  ProductVarietiesModel(
      backgroundColor: AppColor.cardYellowColor,
      borderSideColor: AppColor.cardYellowBorderColor,
      image: AppImageAssets.eggsImagePng,
      title: "Dairy & Eggs"),
  ProductVarietiesModel(
      backgroundColor: AppColor.cardBlueColor,
      borderSideColor: AppColor.cardBlueBorderColor,
      image: AppImageAssets.beveragesImagePng,
      title: "Beverages"),
];

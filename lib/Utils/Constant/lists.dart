// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_ite_project/Features/Explore/Models/product_varieties.dart';
import 'package:flutter_ite_project/Utils/Constant/colors.dart';
import 'package:flutter_ite_project/Utils/Constant/images.dart';
import 'package:flutter_svg/svg.dart';

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

// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:bloc/bloc.dart';

import 'package:flutter/material.dart';
import 'package:flutter_ite_project/Features/Cart/Pages/my_cart.dart';
import 'package:flutter_ite_project/Features/Explore/Pages/explore_product_screen.dart';
import 'package:flutter_ite_project/Features/Favorite/Pages/favorite_screen.dart';
import 'package:flutter_ite_project/Features/Profile/Pages/profile_screen.dart';
import 'package:flutter_ite_project/Features/Shop/Pages/shop_screen.dart';
import 'package:flutter_ite_project/main.dart';

part 'pages_state.dart';

class PagesScreenCubit extends Cubit<PageScreenState> {
  PagesScreenCubit()
      : super(PageScreenInitialState(
            page: const ExploreProductScreen(), pageType: AppScreen.explore));
  Widget currentScreen = const ExploreProductScreen();
  AppScreen type = AppScreen.explore;
  void changedScreen(AppScreen page, BuildContext context) {
    emit(PageScreenInitialState(page: currentScreen, pageType: type));
    switch (page) {
      case AppScreen.shop:
        currentScreen = const ShopScreen();
        type = AppScreen.shop;

        break;
      case AppScreen.explore:
        currentScreen = const ExploreProductScreen();
        type = AppScreen.explore;

        break;
      case AppScreen.cart:
        currentScreen = const MyCartScreen();
        type = AppScreen.cart;

        break;
      case AppScreen.favorite:
        currentScreen = const FavoriteScreen();
        type = AppScreen.favorite;
        break;
      case AppScreen.profile:
        currentScreen = const ProfileScreen();
        type = AppScreen.profile;

        break;

      default:
      // currentScreen = const Text("error in page cubit");
      // return currentScreen;
    }

    emit(PagesScreenChange(page: currentScreen, pageType: type));
  }
}

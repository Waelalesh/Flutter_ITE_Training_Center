// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ite_project/Features/Main/cubit/page_cubit/pages_cubit/pages_cubit.dart';
import 'package:flutter_ite_project/Utils/Constant/colors.dart';
import 'package:flutter_ite_project/Utils/Constant/lists.dart';
import 'package:flutter_ite_project/main.dart';
import 'package:sizer/sizer.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PagesScreenCubit, PageScreenState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.white,
          resizeToAvoidBottomInset: false,
          extendBody: true,
          body: SafeArea(
            child: state is PagesScreenChange
                ? Center(child: state.page)
                : state is PageScreenInitialState
                    ? Center(child: state.page)
                    : const Text("data"),
          ),
          bottomNavigationBar: Container(
            height: 9.h,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(4.w))),
            child: BottomNavigationBar(
              onTap: (value) {
                context
                    .read<PagesScreenCubit>()
                    .changedScreen(AppScreen.values[value], context);
              },
              selectedItemColor: AppColor.splashScreenColor,
              unselectedItemColor: Colors.black,
              currentIndex: state is PageScreenInitialState
                  ? state.pageType.index
                  : state is PagesScreenChange
                      ? state.pageType.index
                      : 2,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              items: buttomNavigationBarItems,
              backgroundColor: Colors.white,
            ),
          ),
        );
      },
    );
  }
}

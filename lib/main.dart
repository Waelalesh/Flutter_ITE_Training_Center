import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ite_project/Features/Main/cubit/page_cubit/pages_cubit/pages_cubit.dart';
import 'package:flutter_ite_project/Features/Splash/Pages/splash_screen.dart';
import 'package:flutter_ite_project/Utils/Themes/themes.dart';
import 'package:sizer/sizer.dart';

enum AppScreen { shop, explore, cart, favorite, profile }

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (_) =>
                PagesScreenCubit()..changedScreen(AppScreen.explore, context))
      ],
      child: Sizer(
        builder: (context, orientation, deviceType) => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            textTheme: myTextTheme,
            // useMaterial3: true,
          ),
          home: const SplashScreen(
              ),
        ),
      ),
    );
  }
}

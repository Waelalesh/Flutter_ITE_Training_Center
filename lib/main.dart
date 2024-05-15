import 'package:flutter/material.dart';
import 'package:flutter_ite_project/Features/Explore/Pages/products_screen.dart';
import 'package:flutter_ite_project/Utils/Constant/themes.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          textTheme: myTextTheme,
          // useMaterial3: true,
        ),
        home: const ProductsScreen(
          productVarietiesName: "Beverages",
        ),
      ),
    );
  }
}

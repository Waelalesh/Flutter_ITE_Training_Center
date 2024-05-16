import 'package:flutter/material.dart';
import 'package:flutter_ite_project/Features/Explore/Widgets/Products_Screen_Widgets/plus_button_widget.dart';

import 'package:flutter_ite_project/Utils/function.dart';


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
      actions:  [
        PlusButtonWidget(
          onPressed: () {
            showButtomSheet(context);
          },
        )
      ],
    );
  }
}



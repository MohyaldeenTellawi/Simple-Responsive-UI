import 'package:flutter/material.dart';
import 'package:responsive_ui_app/widgets/custom_item.dart';

import 'custom_item_2.dart';

class CustomDesktopWidget extends StatelessWidget {
  const CustomDesktopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(flex: 2, child: CustomItem()),
        SizedBox(height: 16),
        Expanded(child: CustomItem2()),
      ],
    );
  }
}

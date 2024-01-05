import 'package:flutter/material.dart';
import 'package:responsive_ui_app/widgets/custom_item_2.dart';

class CustomSliverListView extends StatelessWidget {
  const CustomSliverListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
              padding: EdgeInsetsDirectional.only(top: 16),
              child: CustomItem2());
        });
  }
}

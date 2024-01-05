import 'package:flutter/material.dart';

import '../modules/drawer_item_module.dart';
import 'custom_drwar_item.dart';

class CustomDrwarItemsListView extends StatelessWidget {
  const CustomDrwarItemsListView({
    super.key,
    required this.items,
  });

  final List<DrawerItemModule> items;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return CustomDrawerItem(drawerItemModule: items[index]);
        });
  }
}

import 'package:flutter/material.dart';
import 'package:responsive_ui_app/modules/drawer_item_module.dart';

import 'custom_drwaer_item_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  static const List<DrawerItemModule> items = [
    DrawerItemModule(title: 'D A S H B O A R D', icon: Icons.home),
    DrawerItemModule(title: 'S E T T I N G S', icon: Icons.settings),
    DrawerItemModule(title: 'A B O U T', icon: Icons.info),
    DrawerItemModule(title: 'L O G O U T', icon: Icons.logout),
  ];
  @override
  Widget build(BuildContext context) {
    return const Drawer(
      elevation: 0,
      backgroundColor: Color(0xffDBDBDB),
      child: Column(
        children: [
          DrawerHeader(
            child: Icon(Icons.favorite, size: 56),
          ),
          SizedBox(height: 16),
          CustomDrwarItemsListView(items: items)
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:responsive_ui_app/core/utils/responsive_font_size.dart';
import 'package:responsive_ui_app/modules/drawer_item_module.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({super.key, required this.drawerItemModule});

  final DrawerItemModule drawerItemModule;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(drawerItemModule.icon),
      title: Padding(
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 16),
          child: Text(
            drawerItemModule.title,
            style: TextStyle(
                fontSize: getResponsiveFontSize(context, fontSize: 20)),
          )),
    );
  }
}

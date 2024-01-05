import 'package:flutter/material.dart';
import 'package:responsive_ui_app/widgets/custom_desktop_widget.dart';
import 'package:responsive_ui_app/widgets/custom_drawer.dart';
import 'package:responsive_ui_app/widgets/tablet_layout.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        Expanded(
            flex: 3,
            child: Padding(
                padding: EdgeInsetsDirectional.symmetric(horizontal: 16),
                child: TabletLayout())),
        Expanded(
            child: Padding(
                padding: EdgeInsetsDirectional.only(top: 16),
                child: CustomDesktopWidget()))
      ],
    );
  }
}

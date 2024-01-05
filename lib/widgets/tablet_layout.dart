import 'package:flutter/material.dart';
import 'package:responsive_ui_app/widgets/custom_list_tablet.dart';

import 'custom_list_view.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: SizedBox(height: 16)),
        CustomListTablet(),
        CustomSliverListView()
      ],
    );
  }
}

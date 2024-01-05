import 'package:flutter/material.dart';
import 'package:responsive_ui_app/widgets/custom_adaptive_app_bar.dart';
import 'package:responsive_ui_app/widgets/custom_drawer.dart';
import 'package:responsive_ui_app/widgets/home_view_body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: const Color(0xffDBDBDB),
      appBar: CustomAdaptiveAppBar(onPressed: () {
        scaffoldKey.currentState!.openDrawer();
      }),
      body: const HomeViewBody(),
      drawer: const CustomDrawer(),
    );
  }
}

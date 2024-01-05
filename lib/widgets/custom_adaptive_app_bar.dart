import 'package:flutter/material.dart';

class CustomAdaptiveAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomAdaptiveAppBar({super.key, required this.onPressed});
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      if (constrains.maxWidth - 32 < 900) {
        return AppBar(
            backgroundColor: Colors.black,
            leading: IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              ),
              onPressed: onPressed,
            ));
      } else {
        return const SizedBox();
      }
    });
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}

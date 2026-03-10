
import 'package:flutter/material.dart';
import 'package:my_portfolio/core/constants/app_images.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: const Color.fromARGB(255, 233, 230, 246),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Image.asset(
                Assets.imagesAvatar,
                fit: BoxFit.contain,
              ),
            ),
            ListTile(
              onTap: () {},
              title: Text('About'),
            ),
            ListTile(
              onTap: () {},
              title: Text('Skills'),
            ),
            ListTile(
              onTap: () {},
              title: Text('Projects'),
            ),
            ListTile(
              onTap: () {},
              title: Text('Contact'),
            ),
          ],
        ),
      );
  }
}

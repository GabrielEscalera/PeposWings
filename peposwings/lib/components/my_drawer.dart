import 'package:flutter/material.dart';
import 'package:peposwings/components/my_drawer_tile.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../pages/settings_page.dart';
import '../services/auth/auth_service.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  void logout() {
    final authService = AuthService();
    authService.signOut();
  }

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          //app logo
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Icon(
              Icons.lock_open_rounded,
              size: 80,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),

          //icon
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),

          //home list title
          MyDrawerTile(
            text: "I N I C I O",
            icon: Icons.home,
            onTap: () => Navigator.pop(context),),

          //settings list title
          MyDrawerTile(
            text: "C O N F I G U R A C I Ó N",
            icon: Icons.settings,
            onTap: (){
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SettingsPage(),
                  )
                );
            },),

            const Spacer(),

          //logout list title
          MyDrawerTile(
            text: "S A L I R",
            icon: Icons.logout,
            onTap: (){},),

            const SizedBox(height: 25,),

        ],
      ),
    );
  }
}
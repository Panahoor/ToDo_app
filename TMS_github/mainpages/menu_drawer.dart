import 'package:flutter/material.dart';
import 'package:TMSproject/utils/drawer_item.dart';
import 'package:TMSproject/utils/subdrawer_widget.dart';

class TodoAppDrawer extends StatelessWidget {
  final String username;

  const TodoAppDrawer({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.amber.shade300),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/images/boy.png'),
            ),
            accountName: Text(
              "Hello, $username",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            accountEmail: const Text(
              "Organize your tasks",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerItem(
                  icon: Icons.list_alt,
                  title: "All Tasks",
                  onTap: () => Navigator.pop(context),
                ),
                DrawerItem(
                  icon: Icons.check_circle_outline,
                  title: "Completed Tasks",
                  onTap: () => Navigator.pop(context),
                ),
                ExpansionTile(
                  leading: Icon(Icons.calendar_today_outlined),
                  title: Text("Categories"),
                  children: [
                    SubDrawerItem(
                      icon: Icons.circle,
                      title: "Work",
                      iconColor: Colors.blue,
                      onTap: () => Navigator.pop(context),
                    ),
                    SubDrawerItem(
                      icon: Icons.circle,
                      title: "Personal",
                      iconColor: Colors.green,
                      onTap: () => Navigator.pop(context),
                    ),
                    SubDrawerItem(
                      icon: Icons.circle,
                      title: "Academics",
                      iconColor: Colors.red,
                      onTap: () => Navigator.pop(context),
                    ),
                  ],
                ),

                Divider(height: 32, thickness: 1.5),
                DrawerItem(
                  icon: Icons.settings,
                  title: "Settings",
                  onTap: () => Navigator.pop(context),
                ),
                DrawerItem(
                  icon: Icons.help_outline,
                  title: "Help & Support",
                  onTap: () => Navigator.pop(context),
                ),
                DrawerItem(
                  icon: Icons.info_outline,
                  title: "About",
                  onTap: () => Navigator.pop(context),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Text("Version 1.0.0", style: TextStyle(color: Colors.black)),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inventory_management_system/utils/routes.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountEmail: Text("example@gmail.com"),
                  accountName: Text(
                    "Md Raziur Rahaman Ronju",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  currentAccountPicture: CircleAvatar(
                      backgroundImage:
                          AssetImage("assets/images/avatar.jpg")))),
          ListTile(
            leading: Icon(CupertinoIcons.home),
            title: const Text(
              "Dashboard",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            selected: MyRoutes.selectedIndex == 0,
            onTap: () {
              MyRoutes.selectedIndex = 0;
              Navigator.pushReplacementNamed(context, MyRoutes.homeRoute);
            },
          ),
          ListTile(
            leading: Icon(CupertinoIcons.checkmark_shield),
            title: const Text(
              "Inventory",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            selected: MyRoutes.selectedIndex == 1,
            onTap: () {
              MyRoutes.selectedIndex = 1;
              Navigator.pushReplacementNamed(context, MyRoutes.inventoryRoute);
            },
          ),
          ListTile(
            leading: Icon(CupertinoIcons.gear),
            title: const Text(
              "Vendor Management",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            selected: MyRoutes.selectedIndex == 2,
            onTap: () {
              MyRoutes.selectedIndex = 2;
              Navigator.pushReplacementNamed(
                  context, MyRoutes.vendorManagementRoute);
            },
          ),
          ListTile(
            leading: Icon(CupertinoIcons.cart),
            title: const Text(
              "Orders",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            selected: MyRoutes.selectedIndex == 3,
            onTap: () {
              MyRoutes.selectedIndex = 3;
              Navigator.pushReplacementNamed(context, MyRoutes.ordersRoute);
            },
          ),
          ListTile(
            leading: Icon(CupertinoIcons.person_2),
            title: const Text(
              "User Management",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            selected: MyRoutes.selectedIndex == 4,
            onTap: () {
              MyRoutes.selectedIndex = 4;
              Navigator.pushReplacementNamed(
                  context, MyRoutes.userManagementRoute);
            },
          ),
          ListTile(
            leading: const Icon(CupertinoIcons.lock_open),
            title: const Text(
              "Log out",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.pushReplacementNamed(context, MyRoutes.loginRoute);
              MyRoutes.selectedIndex = 0;
            },
          )
        ],
      ),
    );
  }
}

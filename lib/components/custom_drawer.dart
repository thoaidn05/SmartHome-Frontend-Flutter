import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              DrawerHeader(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.person_pin,
                      color: Theme.of(context).colorScheme.inversePrimary,
                      size: 70,
                    ),
                    Text("Do Ngoc Thoai")
                  ],
                ),
              ),
              const SizedBox(height: 25),
              Padding(
                padding: EdgeInsets.only(left: 25),
                child: ListTile(
                  leading: Icon(Icons.person,
                      color: Theme.of(context).colorScheme.inversePrimary),
                  title: Text("P R O F I L E"),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25),
                child: ListTile(
                  leading: Icon(Icons.device_hub,
                      color: Theme.of(context).colorScheme.inversePrimary),
                  title: Text("D E V I C E S"),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 25, bottom: 25),
            child: ListTile(
              leading: Icon(Icons.exit_to_app,
                  color: Theme.of(context).colorScheme.inversePrimary),
              title: Text("L O G O U T"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          )
        ],
      ),
    );
  }
}

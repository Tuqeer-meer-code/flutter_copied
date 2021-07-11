import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:uscb/Routes/MyRoutes.dart';
import 'package:uscb/screens/pallete.dart';

class myDrawer extends StatelessWidget {
  final box = GetStorage();

  @override
  Widget build(BuildContext context) {
    final String name = box.read("name");
    final email = box.read("email");
    return Drawer(
      child: Container(
        color: plte.drawerColor,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: plte.backgroundColor),
                  margin: EdgeInsets.zero,
                  accountName: Text("$name"),
                  accountEmail: Text("$email"),
                )),
            ListTile(
              leading: Icon(
                Icons.info,
                color: Colors.white,
              ),
              title: Text(
                "About",
                textDirection: TextDirection.ltr,
                style: TextStyle(color: Colors.white, letterSpacing: 2),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.add_to_home_screen,
                color: Colors.white,
              ),
              tileColor: Colors.blueAccent,
              title: Text(
                "Logout",
                style: TextStyle(color: Colors.white, letterSpacing: 2),
              ),
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.signUpLoginButton);
              },
            )
          ],
        ),
      ),
    );
  }
}

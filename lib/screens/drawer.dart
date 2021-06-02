import 'package:flutter/material.dart';
import 'package:uscb/screens/pallete.dart';

class myDrawer extends StatelessWidget {
  @override
  final imgurl="https://scontent.fisb3-2.fna.fbcdn.net/v/t1.6435-9/149376638_1594696210728235_1016887031486428596_n.jpg?_nc_cat=101&ccb=1-3&_nc_sid=730e14&_nc_eui2=AeHijhuCiop_mvkw4NpBSdKzXwpNrXXyAJ5fCk2tdfIAnpN-n2Ea2sw8cMvrB9nXvh4wufjf-Xcjy6MjqNLUUahD&_nc_ohc=zaQshaQW8-4AX-1S0Bl&_nc_ht=scontent.fisb3-2.fna&oh=5ad170931acc4ecafb27c2e4ac4f7b15&oe=60DA28E2";
  Widget build(BuildContext context) {
    return Drawer(

      child: Container(
        color: plte.drawerColor,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    color: plte.backgroundColor
                  ),
                  margin: EdgeInsets.zero,
                  accountName: Text("Tuqeer Meer"),
                     accountEmail: Text("Tuqeer.khanzada@gmail.com"),
                      currentAccountPicture: CircleAvatar(
                        backgroundImage: NetworkImage(imgurl),
                      ),

                )),
            ListTile(
              leading: Icon(Icons.info,color: Colors.white,),
              title: Text("About",textScaleFactor: 1.2,textDirection: TextDirection.ltr,style: TextStyle(color: Colors.white),),
            )
          ],
        ),
      ),
    );
  }
}

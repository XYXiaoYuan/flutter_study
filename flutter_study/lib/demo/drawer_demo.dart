import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        UserAccountsDrawerHeader(
          accountName:
              Text('Bruceyuan', style: TextStyle(fontWeight: FontWeight.bold)),
          accountEmail: Text('664995775@qq.com'),
          currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://resources.ninghao.org/images/wanghao.jpg')),
          decoration: BoxDecoration(
              color: Colors.yellow[400],
              image: DecorationImage(
                  image: NetworkImage(
                      'https://resources.ninghao.org/images/childhood-in-a-picture.jpg'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.yellow[400]!.withOpacity(0.6),
                      BlendMode.srcOver))),
        ),
        ListTile(
          title: Text('Message', textAlign: TextAlign.right),
          trailing: Icon(Icons.message, color: Colors.black12, size: 22.0),
          onTap: () => Navigator.pop(context),
        ),
        ListTile(
          title: Text('Favorite', textAlign: TextAlign.right),
          trailing: Icon(Icons.favorite, color: Colors.black12, size: 22.0),
          onTap: () => Navigator.pop(context),
        ),
        ListTile(
          title: Text('Settings', textAlign: TextAlign.right),
          trailing: Icon(Icons.settings, color: Colors.black12, size: 22.0),
          onTap: () => Navigator.pop(context),
        )
      ],
    ));
  }
}

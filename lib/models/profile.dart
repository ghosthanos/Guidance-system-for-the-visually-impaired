import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      padding: EdgeInsets.all(0),
      children: [
        ListTile(
          leading: Icon(Icons.favorite),
          title: Text('favorites'),
          onTap: () {},
        )
      ],
    ));
  }
}

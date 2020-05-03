import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: <Widget>[
        Container(
          height: 120,
          width: double.infinity,
          padding: EdgeInsets.all(20),
          alignment: Alignment.centerLeft,
          color: Theme.of(context).accentColor,
          child: Text('Cooking up',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                  color: Theme.of(context).primaryColor)),
        ),
        SizedBox(
          height: 20,
        ),
        ListTile(
          leading: Icon(
            Icons.restaurant,
            size: 26,
          ),
          title: Text(
            "meals",
            style: TextStyle(
              fontFamily: "RobotoCondensed",
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          onTap: () {
            Navigator.of(context).pushReplacementNamed('/');
          },
        ),
        SizedBox(
          height: 20,
        ),
        ListTile(
          leading: Icon(
            Icons.settings,
            size: 26,
          ),
          title: Text(
            "Filtters",
            style: TextStyle(
              fontFamily: "RobotoCondensed",
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          onTap: () {
            Navigator.of(context).pushReplacementNamed('/filter_screen');
          },
        )
      ],
    ));
  }
}

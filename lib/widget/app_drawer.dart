import 'package:flutter/material.dart';
import '../screens/user_products_screen.dart';

import '../screens/orders_screen.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [

          DrawerHeader(
            padding: EdgeInsets.only(top: 70),
            decoration: BoxDecoration(color: Theme.of(context).primaryColor,),
            child: Text('Hello Friend!',textAlign: TextAlign.center,),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.shop),
            title: Text('Shop'),
            onTap: () {
              Navigator.of(context).pushNamed('/');
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.payment),
            title: Text('Orders'),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).pushNamed(OrdersScreen.routeName);
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.edit),
            title: Text('Manage Product'),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).pushNamed(UserProductsScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}

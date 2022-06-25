import 'package:flutter/material.dart';
import '../auth/auth_service.dart';
import '../screens/login_screen.dart';
import '../screens/user_order_list_screen.dart';


class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            color: Colors.green,
            height: 200,
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.person),
            title: Text('My Profile'),
          ),
          ListTile(
            onTap: () => Navigator.pushNamed(context, UserOrderListScreen.routeName),
            leading: Icon(Icons.reorder),
            title: Text('My Orders'),
          ),
          ListTile(
            onTap: () {
              AuthService
                  .logout()
                  .then((_) => Navigator.pushReplacementNamed(context, LoginScreen.routeName));
            },
            leading: Icon(Icons.logout),
            title: Text('Logout'),
          ),
        ],
      ),
    );
  }
}
import 'package:delivery_fastfood_app/constants/color.dart';
import 'package:delivery_fastfood_app/screens/favorite/favorite_screen.dart';
import 'package:flutter/material.dart';
// import 'package:myshop/ui/auth/auth_manager.dart';
// import 'package:provider/provider.dart';

import '../screens/order/order_screen.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              _buildHeader(context),
              _buildMenuItems(context),
            ]),
      ),
      // child: Column(
      //   children: <Widget>[
      //     AppBar(
      //       title: const Text('Viet Nhut'),
      //       automaticallyImplyLeading: false,
      //     ),
      //     const Divider(),
      //     ListTile(
      //       leading: const Icon(Icons.shop),
      //       title: const Text('Home Page'),
      //       onTap: () {
      //         Navigator.of(context)..pushReplacementNamed('/');
      //         // context.read<AuthManager>().logout();
      //       },
      //     ),
      //     const Divider(),
      //     ListTile(
      //       leading: const Icon(Icons.payment),
      //       title: const Text('Your\'s Orders'),
      //       onTap: () {
      //         Navigator.of(context)
      //             .pushReplacementNamed(OrdersScreen.routeName);
      //       },
      //     ),
      //     // const Divider(),
      //     // ListTile(
      //     //   leading: const Icon(Icons.edit),
      //     //   title: const Text('Manage Products'),
      //     //   onTap: () {
      //     //     Navigator.of(context)
      //     //         .pushReplacementNamed(UserProductsScreen.routeName);
      //     //   },
      //     // ),
      //   ],
      // ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Material(
        color: Color.fromARGB(214, 233, 92, 50),
        child: InkWell(
          onTap: () {},
          child: Container(
            // color: Color.fromARGB(214, 233, 92, 50),
            padding: EdgeInsets.only(
              top: 10 + MediaQuery.of(context).padding.top,
              bottom: 15,
            ),
            child: Column(
              children: const [
                CircleAvatar(
                  radius: 52,
                  backgroundImage: AssetImage(
                      'assets/images/219082056_610310673281196_4761496436027856955_n.jpg'),
                  // backgroundImage: AssetImage('assets/images/Rose.jpg'),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  ' Kim Jisoo',
                  style: TextStyle(fontSize: 28, color: Colors.white),
                ),
                Text(
                  'Jisoo@gmail.com.vn',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ],
            ),
          ),
        ));
  }

  Widget _buildMenuItems(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          ListTile(
            leading: const Icon(
              Icons.home_outlined,
              color: Color.fromARGB(255, 255, 123, 0),
              size: 30,
            ),
            title: const Text(
              'Home Page',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
            ),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          const Divider(
            color: Colors.black,
          ),
          ListTile(
            leading: const Icon(
              Icons.favorite_outline,
              color: Color.fromARGB(255, 255, 123, 0),
              size: 30,
            ),
            title: const Text(
              'My food favorite',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
            ),
            onTap: () {
              Navigator.of(context).pushNamed(FavoriteScreen.routeName);
            },
          ),
          const Divider(
            color: Colors.black,
          ),
          ListTile(
            leading: const Icon(
              Icons.payment_outlined,
              color: Color.fromARGB(255, 255, 123, 0),
              size: 30,
            ),
            title: const Text(
              'My order',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
            ),
            onTap: () {
              Navigator.of(context).pushNamed(OrdersScreen.routeName);
            },
          ),
          const Divider(
            color: Colors.black,
          ),
          ListTile(
            leading: const Icon(
              Icons.notifications_outlined,
              color: Color.fromARGB(255, 255, 123, 0),
              size: 30,
            ),
            title: const Text(
              'Notifications',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
            ),
            onTap: () {},
          ),
          const Divider(
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}

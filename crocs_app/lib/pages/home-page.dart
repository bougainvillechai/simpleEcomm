import 'package:crocs_app/components/bottom-nav-bar.dart';
import 'package:crocs_app/pages/cart-page.dart';
import 'package:crocs_app/pages/shop-page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //this selected index is to control the bottom nav bar
  int _selectedIndex = 0;

  //to navigate among the button
  navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //change pages according to selected index
  final List<Widget> pages = [const ShopPage(), const CartPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Builder(builder: (context) {
          return Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
          );
        }),
        elevation: 0,
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            
            //logo
           Column(
            children: [
               Container(
              color: Colors.grey[900],
              child: DrawerHeader(
                  padding: EdgeInsets.zero,
                  child: Image.asset(
                    'lib/images/crocslogo.png',
                    color: Colors.white,
                    height: 80,
                  )),
            ),
            //otherpages
            const Padding(
              padding: const EdgeInsets.all(25.0),
              child: ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                title: Text(
                  "Home",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
             const Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25,),
              child: ListTile(
                leading: Icon(
                  Icons.info,
                  color: Colors.white,
                ),
                title: Text(
                  "About",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            ],
           ),
            const Padding(
              padding: const EdgeInsets.all(25.0),
              child: ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                title: Text(
                  "Logout",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey[300],
      body: pages[_selectedIndex],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
    );
  }
}

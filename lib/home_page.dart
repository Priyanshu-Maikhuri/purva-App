import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:purva/pages/cart.dart';
import 'package:purva/pages/home.dart';
import 'package:purva/pages/orders.dart';
import 'package:purva/pages/profile.dart';
import 'package:purva/pages/wishList.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedPageIndex = 0;
  final List<Widget> _pages = [
    const Home(),
    const WishList(),
    const Cart(),
    const Orders(),
    const Profile()
  ];

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('purva',
            style: GoogleFonts.museoModerno(
              fontWeight: FontWeight.w600,
              fontSize: 22,
              // fontStyle: FontStyle.italic
            ).copyWith(color: const Color.fromARGB(255, 246, 57, 57))
            // TextStyle(
            //     color: Color.fromARGB(255, 244, 81, 41), fontWeight: FontWeight.w900, fontSize: 25, fontStyle: FontStyle.italic),
            ),
        elevation: 0.35,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Color.fromARGB(255, 246, 57, 57),
              size: 30,
            ),
            onPressed: () {},
          )
        ],
      ),
      extendBody: true,
      body: _pages.elementAt(_selectedPageIndex),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.grey,
        selectedItemColor: const Color.fromARGB(255, 246, 57, 57),
        iconSize: 35,
        currentIndex: _selectedPageIndex,
        items: [
          const BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
              backgroundColor: Colors.white),
          const BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined),
              label: 'Wishlist',
              backgroundColor: Colors.white),
          const BottomNavigationBarItem(
              activeIcon: null,
              icon: Icon(null),
              label: '',
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/Orders.png',
                height: 35,
                color: _selectedPageIndex == 3
                    ? const Color.fromARGB(255, 246, 57, 57)
                    : Colors.grey,
              ),
              label: 'Orders',
              backgroundColor: Colors.white),
          const BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined),
              label: 'Profile',
              backgroundColor: Colors.white),
        ],
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(10),
        child: Stack(alignment: Alignment.center, children: [
          FloatingActionButton(
            hoverElevation: 10,
            backgroundColor: const Color.fromARGB(255, 246, 57, 57),
            tooltip: 'Cart',
            elevation: 4,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            onPressed: () => setState(() {
              _selectedPageIndex = 2;
            }),
            child: const Icon(
              Icons.shopping_cart_outlined,
              color: Colors.white,
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Container(
              padding: const EdgeInsets.all(5.0),
              decoration: const BoxDecoration(
                // borderRadius: BorderRadius.circular(50),
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: const Text(
                '0',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 10,
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}

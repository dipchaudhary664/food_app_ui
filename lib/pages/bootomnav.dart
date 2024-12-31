import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:food_app/pages/booking.dart';
import 'package:food_app/pages/cart.dart';
import 'package:food_app/pages/home.dart';
import 'package:food_app/pages/profile.dart';

class Bootomnav extends StatefulWidget {
  const Bootomnav({super.key});

  @override
  State<Bootomnav> createState() => _BootomnavState();
}

class _BootomnavState extends State<Bootomnav> {
  int currentTabIndex = 0;
  late List<Widget> pages;

  late Widget currentPage;
  late Home home;
  late Cart cart;
  late Booking booking;
  late Profile profile;

  @override
  void initState() {
    home = Home();
    booking = Booking();
    cart = Cart();
    profile = Profile();
    pages = [home, booking, cart, profile];
    currentPage = Home();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 65,
        backgroundColor: Colors.white,
        color: Colors.black,
        animationDuration: Duration(milliseconds: 500),
        onTap: (int index){
          setState(() {
            currentTabIndex=index;
          });
        },
        items: [
        Icon(
          Icons.home_outlined,size: 30,
          color: Colors.white,
        ),
        Icon(
          Icons.shopping_cart_checkout_outlined,size: 30,
          color: Colors.white,
        ),
        Icon(
          Icons.shopping_bag_outlined,size: 30,
          color: Colors.white,
        ),
        Icon(
          Icons.person_outline,size: 30,
          color: Colors.white,
        ),

      ]),
      body: pages[currentTabIndex],
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:vroomvroom_app/screens/bikeRental_screen.dart';
import 'package:vroomvroom_app/screens/booking_screen.dart';
import 'package:vroomvroom_app/screens/home_screen.dart';
import 'package:vroomvroom_app/screens/more_screen.dart';
import 'package:vroomvroom_app/screens/rent_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 2;

  final List<Widget> _screens = [
    const BikeRentalScreen(),
    const BookingScreen(),
    HomeScreen(),
    const RentScreen(),
    const MoreScreen()
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.black,
          backgroundColor: Colors.black,
          onTap: _onTabTapped,
          currentIndex: _currentIndex,
          selectedItemColor: Colors.redAccent,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.bike_scooter,
                ),
                label: "Bike Rental"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag), label: "Bookings"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.car_rental), label: "Rent"),
            BottomNavigationBarItem(icon: Icon(Icons.more), label: "More"),
          ]),
    );
  }
}

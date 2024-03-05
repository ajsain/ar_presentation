import 'package:ardemo/screens/profile.dart';
import 'package:ardemo/screens/search.dart';
import 'package:ardemo/utills/color_resources.dart';
import 'package:ardemo/utills/size_boxs.dart';
import 'package:flutter/material.dart';

import '../utills/ui.dart';
import 'home_Screen.dart';
import 'menu.dart';
import 'order.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int pageIndex = 0;
  getPage(int page) {
    switch (page) {
      case 0:
        {
          return const HomeScreen();
        }
      case 1:
        {
          return const SearchScreen();
        }
      case 2:
        {
          return const OrderScreen();
        }
      case 3:
        {
          return const ProfileScreen();
        }
      case 4:
        {
          return const MenusScreen();
        }
      default:
        {
          return const HomeScreen();
        }
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:Ui.mainBar(context:context),
      body:getPage(pageIndex),
      resizeToAvoidBottomInset: true,
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: colorWhite,
          selectedItemColor: colorGray1,
          unselectedItemColor: colorGray1,
          selectedLabelStyle: const TextStyle(
              fontWeight:FontWeight.w600),
          unselectedLabelStyle: const TextStyle(
              fontWeight:  FontWeight.w400),
          currentIndex:pageIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (int index) {
            setState(() {
              pageIndex = index;
            });
          },
          items: [
            const BottomNavigationBarItem(
                label: "Home",
                icon: Icon(
                  Icons.home,
                  size: 20,

                )
            ),
            const BottomNavigationBarItem(
                label: "Orders",
                icon: Icon(
                  Icons.history,
                  size: 20,
                )),
            BottomNavigationBarItem(
                label: "Search",
                icon:Icon(
                  Icons.search,
                  size: 20,
                  color: pageIndex == 0 ? const Color(0xFF2E373D) : const Color(0xFFB6B7B7),
                )
            ),
            const BottomNavigationBarItem(
                label: "Profile",
                icon:Icon(
                  Icons.person,
                  size: 20,
                )),
            const BottomNavigationBarItem(
                label: "Menu",
                icon: Icon(
                  Icons.menu_open_sharp,
                  size: 20,
                ))
          ]),
    );
  }
}

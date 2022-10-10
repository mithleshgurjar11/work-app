import 'package:flutter/material.dart';
import 'package:property_buy_seller/Screen/postproparty1.dart';

import 'add_property.dart';
import 'home.dart';
import 'profile.dart';
import 'color.dart';
import 'my_favourites.dart';

class bottom_avigationar extends StatefulWidget {
  const bottom_avigationar({Key? key}) : super(key: key);

  @override
  State<bottom_avigationar> createState() => _bottom_avigationarState();
}

class _bottom_avigationarState extends State<bottom_avigationar> {
  int _selectedIndex = 0;
  static const List<Widget> _pages = <Widget>[
    Home(),
   // ADS(),
   // PostProparty1(),
    AddProperty(),
    MyFavourites(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages.elementAt(_selectedIndex), //New
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        // backgroundColor: colors.Appbar,
        currentIndex: _selectedIndex, //New
        onTap: _onItemTapped,
        selectedItemColor: colors.secondary,
        unselectedItemColor: colors.text,
        showUnselectedLabels: true,
        selectedLabelStyle: TextStyle(color: colors.secondary),

        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  border: Border.all(
                      width: 1,
                      color: _selectedIndex == 0
                          ? colors.secondary
                          : colors.whitebase)),
              child: CircleAvatar(
                foregroundColor: Colors.white,
                backgroundColor: Colors.black,
                child: ImageIcon(AssetImage("assets/images/homeicon.png")),
              ),
            ),
            label: 'Home',
            // backgroundColor: colors.Appbar,
          ),
          // BottomNavigationBarItem(
          //   icon: Container(
          //     decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(100.0),
          //         border: Border.all(
          //             width: 1,
          //             color: _selectedIndex == 1
          //                 ? colors.secondary
          //                 : colors.whitebase)),
          //     child: CircleAvatar(
          //       foregroundColor: Colors.white,
          //       backgroundColor: Colors.black,
          //       child: ImageIcon(AssetImage("assets/images/a.png")),
          //     ),
          //   ),
          //   label: 'Ads',
          //   // backgroundColor: colors.Appbar,
          // ),
          BottomNavigationBarItem(
            icon: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  border: Border.all(
                      width: 1,
                      color: _selectedIndex == 2
                          ? colors.secondary
                          : colors.whitebase)),
              child: CircleAvatar(
                foregroundColor: Colors.white,
                backgroundColor: Colors.black,
                child: ImageIcon(AssetImage("assets/images/addicon.png")),
              ),
            ),
            label: 'Add',
            // backgroundColor: colors.Appbar,
          ),
          BottomNavigationBarItem(
            icon: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  border: Border.all(
                      width: 1,
                      color: _selectedIndex == 3
                          ? colors.secondary
                          : colors.whitebase)),
              child: CircleAvatar(
                foregroundColor: Colors.white,
                backgroundColor: Colors.black,
                child: ImageIcon(AssetImage("assets/images/heart.png")),
              ),
            ),
            label: 'Favourite',
            // backgroundColor: colors.Appbar,
          ),
          BottomNavigationBarItem(
            icon: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  border: Border.all(
                      width: 1,
                      color: _selectedIndex == 4
                          ? colors.secondary
                          : colors.whitebase)),
              child: CircleAvatar(
                foregroundColor: Colors.white,
                backgroundColor: Colors.black,
                child: ImageIcon(AssetImage("assets/images/abouts2.png")),
              ),
            ),
            label: 'Profile',
            // backgroundColor: colors.Appbar,
          ),
        ],
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

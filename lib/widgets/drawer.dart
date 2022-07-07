import 'package:flutter/material.dart';
import 'package:play_store/constants/enum.dart';
import 'package:play_store/constants/globals.dart';

/// Description: This file is created to manage drawer.
///
/// @author Parth Darji
/// @since 7 July 2022

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

/// enum Initialization Globally
DrawerSelection? drawerSelection;

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        width: screenWidth * 0.75,
        child: Column(
          children: [
            _drawerHeader(),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: _drawerBody()),
                  _drawerFooter(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Method to build drawer header.
  Widget _drawerHeader() {
    return GestureDetector(
      onTap: () {},
      child: Container(),
    );
  }

  /// Method to build drawer body.
  Widget _drawerBody() {
    return Container();
  }

  /// Method to build drawer footer.
  Widget _drawerFooter() {
    return Container();
  }
}

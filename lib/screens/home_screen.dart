import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:play_store/constants/colors.dart';
import 'package:play_store/constants/enum.dart';
import 'package:play_store/controllers/home_controller.dart';
import 'package:play_store/widgets/drawer.dart';

/// Description: This file is created to build drawer and home screen.
///
/// @author Parth Darji
/// @since 7 July 2022

class HomeScreen extends GetView<HomeController> {
  HomeScreen({Key? key}) : super(key: key);

  final HomeController _getController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    drawerSelection = DrawerSelection.home;
    return Scaffold(
      appBar: _buildAppBar(),
      drawer: const CustomDrawer(),
      body: _buildBody(),
    );
  }

  /// Method to build app bar.
  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      title: const Text(
        'Home Screen',
      ),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.notifications),
        )
      ],
    );
  }

  /// Method to build screen body.
  Widget _buildBody() {
    return Container();
  }
}

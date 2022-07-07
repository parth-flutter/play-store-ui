import 'package:get/get.dart';
import 'package:play_store/controllers/home_controller.dart';

/// Description: This file is created to manage binding of the different screens.
///
/// @author Parth Darji
/// @since 7 July 2022

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}

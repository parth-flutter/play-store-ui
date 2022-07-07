import 'package:get/get.dart';
import 'package:play_store/screens/home_screen.dart';
import 'package:play_store/services/bindings.dart';

/// Description: This file is created to manage routes of the project.
///
/// @author Parth Darji
/// @since 7 July 2022

class Routes {
  static const String homeScreen = '/homeScreen';
}

final getPages = [
  GetPage(
    name: Routes.homeScreen,
    page: () => HomeScreen(),
    binding: HomeBinding(),
  ),
];

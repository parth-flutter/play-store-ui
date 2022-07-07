import 'package:get/get.dart';
import 'package:play_store/screens/home_screen.dart';
import 'package:play_store/services/bindings.dart';

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

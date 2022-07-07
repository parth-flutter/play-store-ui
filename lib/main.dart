import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:play_store/constants/globals.dart';
import 'package:play_store/constants/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        dismissKeyboard();
      },
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        getPages: getPages,
        initialRoute: Routes.homeScreen,
      ),
    );
  }
}

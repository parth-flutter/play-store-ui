import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:play_store/constants/colors.dart';

/// MediaQuery Height
double screenHeight = Get.height;

/// MediaQuery Width
double screenWidth = Get.width;

/// Email Regex
final emailRegex = RegExp(r'\S+@\S+\.\S+');

/// Border Radius
BorderRadius kBorderRadius = BorderRadius.circular(10);

/// Null Space Variable
const nullSpace = SizedBox.shrink();

/// Function to Dismiss Keyboard
void dismissKeyboard() {
  FocusManager.instance.primaryFocus?.unfocus();
  FocusScopeNode currentFocus = FocusScope.of(Get.context!);

  if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
    FocusManager.instance.primaryFocus!.unfocus();
  }
}

/// Method to give space between widgets vertically.
Widget spaceV([double? height = 20]) {
  return SizedBox(height: height);
}

/// Method to give space between widgets horizantally.
Widget spaceH([double? width = 20]) {
  return SizedBox(width: width);
}

/// Variable to store today's date.
String presentDate = DateFormat.yMMMMd().format(DateTime.now());

/// Variable to store today's date with day.
String presentDateWithDay =
    DateFormat.yMMMMd().add_EEEE().format(DateTime.now());

/// Function to print debug message during development.
void consolePrint(Object message) {
  debugPrint('${DateFormat.jms().format(DateTime.now())} => $message');
}

/// Function to avoid conflict between snackbar overlays.
void showGetSnackBar(bool status, {@required String? message}) {
  if (Get.isSnackbarOpen) {
    Get.closeCurrentSnackbar();
    getXSnackBar(status, message: message);
  } else {
    getXSnackBar(status, message: message);
  }
}

/// Function to show snackbar
void getXSnackBar(bool status, {@required String? message}) {
  Get.snackbar(
    status ? 'Success' : 'Fail',
    message!,
    backgroundColor: status ? kSuccessColor : kErrorColor,
    colorText: kWhiteColor,
    margin: const EdgeInsets.only(bottom: 10),
    maxWidth: screenWidth * 0.95,
    snackPosition: SnackPosition.BOTTOM,
    animationDuration: const Duration(milliseconds: 500),
    duration: const Duration(seconds: 2),
  );
}

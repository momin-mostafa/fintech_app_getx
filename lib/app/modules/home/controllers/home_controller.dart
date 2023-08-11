import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  
  double bottomSheetValue = 10000;

  TextEditingController dialogTextEditingController = TextEditingController();

  String formatNumber() {
    if (bottomSheetValue >= 100000) {
      double lakhValue = bottomSheetValue / 100000;
      return '${lakhValue.toStringAsFixed(1)} lakh';
    } else if (bottomSheetValue >= 1000) {
      double kValue = bottomSheetValue / 1000;
      return '${kValue.toStringAsFixed(1)} k';
    } else {
      return bottomSheetValue.toString();
    }
  }
  

  // final count = 0.obs;
  // @override
  // void onInit() {
  //   super.onInit();
  // }
  //
  // @override
  // void onReady() {
  //   super.onReady();
  // }
  //
  // @override
  // void onClose() {
  //   super.onClose();
  // }

  // void increment() => count.value++;
}

import 'package:fintech_app_getx/app/modules/home/views/home_view.dart';
import 'package:fintech_app_getx/app/theme_data.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: Themes.lightTheme,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
    //  MaterialApp(theme: lightTheme,home: HomeView(),)
  );
}

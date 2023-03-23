import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:projectapi/app/data/api_service/api_service.dart';
import 'package:projectapi/app/modules/home/bindings/home_binding.dart';
import 'package:projectapi/app/modules/home/views/home_view.dart';

import 'app/routes/app_pages.dart';

void main() {
  // 8ApiService.login("", 1);

  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      home: HomeView(),
    ),
  );
}

import 'package:final_exam/bhagvat%20gita/view/details_screen.dart';
import 'package:final_exam/bhagvat%20gita/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(
          name: '/',
          page: () => HomeScreen(),
        ),
        GetPage(
          name: '/details',
          page: () => Details_Screen(),
        ),
      ],
    ),
  );
}

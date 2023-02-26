import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/Myhome_controller.dart';
import 'my_home_page.dart';

void main() {
  Get.put(MyHomeController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Api Level 1',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const MyHomePage(),
    );
  }
}

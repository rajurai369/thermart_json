import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:themart/bindings/controller_binding.dart';
import 'package:themart/view/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      initialBinding: ControllerBindings(),
      home: const HomeView() ,
    );
  }
}


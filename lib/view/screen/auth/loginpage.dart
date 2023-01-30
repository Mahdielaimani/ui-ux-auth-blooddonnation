import 'package:blooddonation/controller/onboarding_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    OnbordingControllerIm pageController = Get.put(OnbordingControllerIm());
    return Scaffold(
        drawer: Drawer(),
        appBar: AppBar(),
        body: Container(
          child: Text("Welcom",
              style: const TextStyle(
                  height: 2,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.blue)),
        ));
  }
}

import 'package:blooddonation/controller/onboarding_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../core/constant/color.dart';

class CustomBottonOnboarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    OnbordingControllerIm pageController = Get.find();
    return Container(
      margin: EdgeInsets.all(50),
      height: 40,
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 0),
        color: AppColor.buttonColor,
        onPressed: () {
          pageController.next();
        },
        child: const Text("Contiue"),
      ),
    );
  }
}

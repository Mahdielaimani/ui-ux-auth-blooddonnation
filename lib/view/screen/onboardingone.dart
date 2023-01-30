import 'package:blooddonation/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constant/color.dart';
import '../../data/static/static.dart';
import '../widget/custombutton.dart';
import '../widget/customslider.dart';
import '../widget/dotcontroller.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnbordingControllerIm());
    return Scaffold(
      body: Column(children: [
        CustomSliderOnboarding(),
        Expanded(
          child: ListView(
            children: [
              DotControllerOnboarding(),
              SizedBox(
                height: 10,
              ),
              CustomBottonOnboarding(),
            ],
          ),
        ),
      ]),
    );
  }
}

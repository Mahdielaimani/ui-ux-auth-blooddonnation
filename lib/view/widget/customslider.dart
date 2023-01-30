import 'package:blooddonation/controller/onboarding_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

import '../../core/constant/color.dart';
import '../../data/static/static.dart';

class CustomSliderOnboarding extends GetView<OnbordingControllerIm> {
  const CustomSliderOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: PageView.builder(
        controller: controller.pageController,
        onPageChanged: (val) {
          controller.onPageChanges(val);
        },
        itemCount: onBordingLists.length,
        itemBuilder: ((context, i) => Column(
              children: [
                const SizedBox(height: 30),
                Text(onBordingLists[i].titel!,
                    style: const TextStyle(
                      fontSize: 30,
                    )),
                const SizedBox(height: 20),
                Container(
                  width: 250,
                  height: 300,
                  child: Image.asset(
                    onBordingLists[i].image!,
                  ),
                ),
                const SizedBox(height: 70),
                Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text(
                      onBordingLists[i].text!,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyText1,
                    )),
              ],
            )),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onboarding_demo/models/onboarding_info.dart';

class OnboardingController extends GetxController {
  var selectedPageIndex = 0.obs;
  //bool get isLastPage => selectedPageIndex.value == onboardingPages.length - 1;
  var pageController = PageController();

  forwardAction() {
    // if(isLastPage) {
    //   //go to home page
    // } else {
      
    // }
    pageController.nextPage(duration: 300.milliseconds, curve: Curves.ease);
  }

  List<OnboardingInfo> onboardingPages = [
    OnboardingInfo('assets/logo1.png', 'assets/Frame1.png', 'Perfect Equipment',
        'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Consectetur iusto, velit? Voluptates ex molestias excepturi, dolorum magni qui eius non, repellat id consequuntur, eos magnam sit fuga? Delectus error, beatae.'),
    OnboardingInfo(
        'assets/logo1.png',
        'assets/Frame2.png',
        'All Types Of Clothes',
        'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Consectetur iusto, velit? Voluptates ex molestias excepturi, dolorum magni qui eius non, repellat id consequuntur, eos magnam sit fuga? Delectus error, beatae.'),
    OnboardingInfo(
        'assets/logo1.png',
        'assets/Frame3.png',
        'Professional Equipment',
        'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Consectetur iusto, velit? Voluptates ex molestias excepturi, dolorum magni qui eius non, repellat id consequuntur, eos magnam sit fuga? Delectus error, beatae.')
  ];
}

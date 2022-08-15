import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:onboarding_demo/controller/onboarding_controller.dart';

// ignore: use_key_in_widget_constructors
class OnboardingPage extends StatelessWidget {
  final _controller = OnboardingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
              controller: _controller.pageController,
                onPageChanged: _controller.selectedPageIndex,
                itemCount: _controller.onboardingPages.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                            _controller.onboardingPages[index].imageLogo),
                        const SizedBox(height: 30),
                        Image.asset(
                            _controller.onboardingPages[index].imageAsset),
                        const SizedBox(height: 30),
                        Text(
                          _controller.onboardingPages[index].title,
                          style: const TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 30),
                        Text(
                          _controller.onboardingPages[index].description,
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  );
                }),
            Positioned(
              height: 1120,
              left: 180,
              child: Row(
                  children: List.generate(
                      _controller.onboardingPages.length,
                      (index) => Obx(() {
                            return Container(
                              width: 12,
                              height: 12,
                              decoration: BoxDecoration(
                                  // ignore: unrelated_type_equality_checks
                                  color: _controller.selectedPageIndex.value ==
                                          index
                                      ? Colors.red
                                      : Colors.grey,
                                  shape: BoxShape.circle),
                            );
                          }))),
            ),
            Positioned(
              right: 20,
              bottom: 20,
              child: FloatingActionButton(
                backgroundColor: const Color(0xffCE1567),
                elevation: 0.0,
                onPressed: _controller.forwardAction,
              child: const Icon(Icons.arrow_forward,
              ),
              )
              
              )         
          ],
        ),
      ),
    );
  }
}

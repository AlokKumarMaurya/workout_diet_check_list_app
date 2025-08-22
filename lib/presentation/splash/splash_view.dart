import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workout_diet_check_list_app/presentation/splash/splash_controller.dart';
import 'package:workout_diet_check_list_app/utils/constant/images.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      init: SplashController(),
      builder: (context) {
        return Scaffold(
          body: Center(child: Image.asset(AppImages.logo, scale: 2)),
        );
      },
    );
  }
}

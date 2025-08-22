import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:workout_diet_check_list_app/routing/app_routes.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Get.find<FirebaseAuth>().currentUser != null
        ? Future.delayed(
            2.seconds,
          ).then((value) => Get.offAllNamed(AppRoutes.dashboard))
        : Future.delayed(
            2.seconds,
          ).then((value) => Get.offAllNamed(AppRoutes.login));
    super.onInit();
  }


}

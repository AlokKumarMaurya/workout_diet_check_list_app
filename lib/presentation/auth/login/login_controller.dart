import 'package:get/get.dart';
import 'package:workout_diet_check_list_app/data/models/request/profile/update_profile/update_profile_request.dart';
import 'package:workout_diet_check_list_app/domain/use_case/auth/auth_use_case.dart';
import 'package:workout_diet_check_list_app/domain/use_case/profile/profile_use_case.dart';
import 'package:workout_diet_check_list_app/routing/app_routes.dart';
import 'package:workout_diet_check_list_app/utils/helpers/snack_bar.dart';

class LoginController extends GetxController {
  Future<void> login() async {
    var res = await Get.find<AuthUseCase>().login();
    if (res.isSuccess) {

      showSnackBar(message: res.message);
      UpdateProfileRequestModel request = UpdateProfileRequestModel(
        email: res.userCredential!.email,
        phone: res.userCredential!.phone,
        profileImage: res.userCredential!.profileImage,
        userCredentials: res.userCredential!.userCredentials,
        userName: res.userCredential!.userName,
        userId: res.userCredential!.userId,
      );
      var updateResponse = await Get.find<ProfileUseCase>().updateProfile(
        request: request,
      );
      if (updateResponse.isSuccess) {
        Get.offAllNamed(AppRoutes.dashboard);
        showSnackBar(message: updateResponse.message);
      } else {
        showSnackBar(message: updateResponse.message, isError: true);
      }
    } else {
      showSnackBar(message: res.message, isError: true);
    }
  }
}

import 'package:get/get.dart';
import 'package:workout_diet_check_list_app/domain/use_case/auth/auth_use_case.dart';
import 'package:workout_diet_check_list_app/routing/app_routes.dart';
import 'package:workout_diet_check_list_app/utils/helpers/snack_bar.dart';

class DrawerViewController extends GetxController {
  Future<void> logout() async {
    var res = await Get.find<AuthUseCase>().logout();
    if (res.isSuccess) {
      Get.offAllNamed(AppRoutes.login);
      showSnackBar(message: res.message);
    } else {
      showSnackBar(message: res.message, isError: true);
    }
  }
}

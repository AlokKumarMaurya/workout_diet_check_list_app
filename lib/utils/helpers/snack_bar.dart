import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:workout_diet_check_list_app/utils/theme/app_colors.dart';

void showSnackBar({required String message, bool isError = false}) {
  Get.showSnackbar(
    GetSnackBar(
      borderRadius: 20.sp,
      isDismissible: true,
      backgroundColor: isError ? AppColors.red : AppColors.textBlack,
      duration: 3.seconds,
      margin: REdgeInsets.all(20.sp),
      messageText: Text(
        message,
        style: TextStyle(color: AppColors.white),
        textAlign: TextAlign.center,
      ),
      padding: REdgeInsets.symmetric(horizontal: 16.sp, vertical: 6.sp),
    ),
  );
}

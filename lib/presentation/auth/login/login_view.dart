import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:workout_diet_check_list_app/presentation/auth/login/login_controller.dart';
import 'package:workout_diet_check_list_app/presentation/components/custom_text_fileds.dart';
import 'package:workout_diet_check_list_app/utils/constant/images.dart';
import 'package:workout_diet_check_list_app/utils/theme/app_colors.dart';
import 'package:workout_diet_check_list_app/utils/theme/text_style.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      init: LoginController(),
      builder: (controller) {
        return Scaffold(
          // backgroundColor: AppColors.primary,
          body: Padding(
            padding: EdgeInsetsGeometry.symmetric(
              vertical: 55.sp,
              horizontal: 20.sp,
            ),
            child: Column(
              children: [
                Image.asset(AppImages.logo, scale: 2, ),

                Expanded(child: Image.asset(AppImages.login)),
                Text(
                  "Welcome back",
                  textAlign: TextAlign.start,
                  style: textStyle.copyWith(
                    fontSize: 30.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber,
                  ),
                ),
                SizedBox(height: 0.sp),
                Text(
                  "Track - Train - Transform",
                  textAlign: TextAlign.start,
                  style: textStyle.copyWith(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primary,
                  ),
                ),
                SizedBox(height: 40.sp),
                InkWell(
                   onTap: () {
                     controller.login();
                   },
                  child: Container(
                    padding: EdgeInsetsGeometry.symmetric(
                      vertical: 8.sp,
                      horizontal: 4.sp,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusGeometry.circular(16.sp),
                      color: AppColors.primary,
                      border: Border.all(color: AppColors.primary),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: AppColors.white,
                          child: Padding(
                            padding: EdgeInsets.all(4.sp),
                            child: Image.asset(AppImages.google, height: 50.sp),
                          ),
                        ),
                        SizedBox(width: 12.sp),
                        Text(
                          "Continue with google",
                          style: textStyle.copyWith(
                            color: AppColors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.2,
                            // wordSpacing: 3,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 12.sp),
                Text(
                  "Terms and conditions",
                  style: textStyle.copyWith(
                    decoration: TextDecoration.underline,
                    decorationColor: AppColors.white,
                    color: AppColors.white,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

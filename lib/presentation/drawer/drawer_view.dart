import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:workout_diet_check_list_app/presentation/drawer/drawer_controller.dart';
import 'package:workout_diet_check_list_app/utils/constant/images.dart';
import 'package:workout_diet_check_list_app/utils/theme/app_colors.dart';
import 'package:workout_diet_check_list_app/utils/theme/text_style.dart';

class DrawerView extends StatelessWidget {
  const DrawerView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DrawerViewController>(
      init: DrawerViewController(),
      builder: (controller) {
        return Container(
          padding: EdgeInsets.only(top: 40.sp),
          width: Get.width * 0.9,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(16.sp),
              bottomRight: Radius.circular(16.sp),
            ),
            color: AppColors.primary,
          ),
          child: Column(
            children: [
              Image.asset(
                AppImages.logo,
                color: AppColors.white,
                height: 200.sp,
              ),

              SizedBox(height: 20.sp),
              customTile(title: "Profile", icon: Icons.person),
              Expanded(child: SizedBox()),
              InkWell(
                onTap: () {
                  controller.logout();
                },
                child: customTile(
                  title: "Logout",
                  icon: Icons.logout,
                  bgColor: AppColors.red,
                  textColor: AppColors.white,
                ),
              ),
              SizedBox(height: 40.sp),
            ],
          ),
        );
      },
    );
  }

  Widget customTile({
    required String title,
    required IconData icon,
    Color bgColor = AppColors.white,
    Color textColor = AppColors.primary,
  }) {
    return Container(
      margin: EdgeInsetsGeometry.symmetric(horizontal: 20.sp),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusGeometry.circular(16.sp),
        color: bgColor,
      ),
      padding: EdgeInsetsGeometry.symmetric(vertical: 12.sp, horizontal: 20.sp),
      child: Row(
        children: [
          Icon(icon, color: textColor),
          SizedBox(width: 12.sp),
          Text(
            title,
            style: textStyle.copyWith(
              color: textColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: Icon(Icons.arrow_forward_ios, color: textColor),
            ),
          ),
        ],
      ),
    );
  }
}

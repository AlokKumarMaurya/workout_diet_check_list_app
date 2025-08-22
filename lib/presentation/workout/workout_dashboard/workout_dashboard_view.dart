import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:workout_diet_check_list_app/presentation/workout/workout_dashboard/workout_dashboard_controller.dart';
import 'package:workout_diet_check_list_app/routing/app_routes.dart';

import '../../../utils/constant/images.dart';
import '../../../utils/theme/app_colors.dart';
import '../../../utils/theme/text_style.dart';
import '../../drawer/drawer_view.dart';

class WorkOutDashboardView extends StatelessWidget {
  const WorkOutDashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<WorkoutDashboardController>(
      init: WorkoutDashboardController(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            leading: InkWell(
              onTap: () => Get.back(),
              child: Icon(Icons.arrow_back_ios, color: AppColors.primary),
            ),
            backgroundColor: AppColors.white,
            actions: [
              Padding(
                padding: EdgeInsets.only(right: 12.0, top: 6.sp, bottom: 6.sp),
                child: ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(60.sp),
                  child: Image.network(
                    (Get.find<FirebaseAuth>().currentUser!.photoURL ?? ""),
                    errorBuilder: (context, error, stackTrace) => ColoredBox(
                      color: AppColors.grey,
                      child: Padding(
                        padding: EdgeInsets.all(8.sp),
                        child: Icon(Icons.person, color: AppColors.textBlack),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          body: Padding(
            padding: EdgeInsets.all(12.sp),
            child: Column(
              children: [
                SizedBox(height: 20.sp),
                Text(
                  "Workout Mode",
                  textAlign: TextAlign.center,
                  style: textStyle.copyWith(
                    fontWeight: FontWeight.w900,
                    fontSize: 40.sp,
                    color: AppColors.primary,
                  ),
                ),
                SizedBox(height: 30.sp),
                buildContainer(
                  title: "Track Now",
                  imagePath: AppImages.weight,
                  subTitle: "Completed a workout? Update now",
                  imageColor: AppColors.primary,
                ),
                SizedBox(height: 30.sp),
                InkWell(
                  onTap: () => Get.toNamed(AppRoutes.workoutWeeklyListView),
                  child: buildContainer(
                    title: "Add/Update",
                    imageColor: AppColors.textBlack,
                    imagePath: AppImages.plan,
                    subTitle: "Change of routine?\nAdd or update here",
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Container buildContainer({
    required String title,
    required String subTitle,
    required String imagePath,
    Color? imageColor,
  }) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadiusGeometry.circular(16.sp),
        color: AppColors.lightGrey,
        border: Border.all(color: AppColors.primary, width: 2.sp),
      ),
      alignment: Alignment.center,
      padding: EdgeInsetsGeometry.symmetric(vertical: 12.sp, horizontal: 12.sp),
      child: Row(
        children: [
          Image.asset(imagePath, height: 100.sp, color: imageColor),
          SizedBox(width: 16.sp),
          Expanded(
            child: Column(
              children: [
                Text(
                  title,
                  style: textStyle.copyWith(
                    fontSize: 24.sp,
                    color: AppColors.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  subTitle,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: textStyle.copyWith(
                    fontSize: 14.sp,
                    color: AppColors.textBlack,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

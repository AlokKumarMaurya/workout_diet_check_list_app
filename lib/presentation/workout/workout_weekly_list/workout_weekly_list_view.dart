import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:workout_diet_check_list_app/data/models/request/workout/work_out_request_model.dart';
import 'package:workout_diet_check_list_app/data/models/request/workout/work_out_sets/work_out_sets_request_model.dart';
import 'package:workout_diet_check_list_app/presentation/workout/workout_weekly_list/workout_weekly_list_controller.dart';
import 'package:workout_diet_check_list_app/routing/app_routes.dart';
import 'package:workout_diet_check_list_app/utils/constant/images.dart';
import 'package:workout_diet_check_list_app/utils/theme/text_style.dart';

import '../../../utils/theme/app_colors.dart';

class WorkoutWeeklyListView extends StatelessWidget {
  const WorkoutWeeklyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<WorkoutWeeklyListController>(
      init: WorkoutWeeklyListController(),
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
                weekDayBuilder(controller: controller),
                SizedBox(height: 20.sp),
                Expanded(
                  child: ListView.separated(
                    itemCount: controller.currentWorkoutList.length,
                    separatorBuilder: (context, index) =>
                        SizedBox(height: 32.sp),
                    itemBuilder: (context, index) {
                      WorkOutRequestModel data =
                          controller.currentWorkoutList[index];
                      return Container(
                        padding: REdgeInsets.all(12.sp),
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadiusGeometry.circular(16.sp),
                          border: Border.all(
                            color: AppColors.primary,
                            width: 2.sp,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadiusGeometry.circular(
                                    12.sp,
                                  ),
                                  child: Image.network(
                                    (Get.find<FirebaseAuth>()
                                            .currentUser!
                                            .photoURL ??
                                        ""),
                                    height: 60.sp,
                                    errorBuilder:
                                        (context, error, stackTrace) =>
                                            ColoredBox(
                                              color: AppColors.grey,
                                              child: Padding(
                                                padding: EdgeInsets.all(8.sp),
                                                child: Icon(
                                                  Icons.person,
                                                  color: AppColors.textBlack,
                                                ),
                                              ),
                                            ),
                                  ),
                                ),
                                SizedBox(width: 20.sp),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      data.workoutName,
                                      style: textStyle.copyWith(
                                        color: AppColors.primary,
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),

                                    Text(
                                      "Target muscle : ${data.targetMuscle}",
                                      style: textStyle.copyWith(
                                        color: AppColors.textBlack,
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.timer_outlined,
                                          color: AppColors.primary,
                                        ),
                                        SizedBox(width: 4.sp),
                                        Text(
                                          "Rest: ${data.restTime} s",
                                          style: textStyle.copyWith(
                                            color: AppColors.primary,
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 12.sp),
                            Container(
                              padding: REdgeInsets.all(12.sp),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadiusGeometry.circular(
                                  16.sp,
                                ),
                                color: AppColors.lightGrey1,
                              ),
                              child: ListView.builder(
                                itemCount: data.sets.length,
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemBuilder: (context, index) {
                                  WorkoutSetsRequestModel sets =
                                      data.sets[index];
                                  return Row(
                                    children: [
                                      Image.asset(
                                        AppImages.dumble,
                                        height: 30.sp,
                                      ),
                                      SizedBox(width: 12.sp),
                                      Text(
                                        sets.weight.toString(),
                                        style: textStyle.copyWith(
                                          fontWeight: FontWeight.w900,
                                          color: AppColors.primary,
                                          fontSize: 16.sp,
                                        ),
                                      ),
                                      SizedBox(width: 4.sp),
                                      Text(
                                        "kg",
                                        style: textStyle.copyWith(
                                          fontWeight: FontWeight.normal,
                                          color: AppColors.primary,
                                          fontSize: 16.sp,
                                        ),
                                      ),
                                      SizedBox(width: 16.sp),
                                      Text(
                                        "• ${sets.reps}",
                                        style: textStyle.copyWith(
                                          fontWeight: FontWeight.w900,
                                          color: AppColors.primary,
                                          fontSize: 16.sp,
                                        ),
                                      ),
                                      SizedBox(width: 4.sp),
                                      Text(
                                        "Reps",
                                        style: textStyle.copyWith(
                                          fontWeight: FontWeight.normal,
                                          color: AppColors.primary,
                                          fontSize: 16.sp,
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              ),
                            ),
                            SizedBox(height: 12.sp),
                            Text(
                              "Note",
                              style: textStyle.copyWith(
                                fontWeight: FontWeight.w900,
                                color: AppColors.primary,
                                fontSize: 16.sp,
                              ),
                            ),
                            Text(
                              "Bear the support bleat if lifting the heavy. Try to control the body and don't lift the weight with too much force on the back. Wear the band in the hand if going the too heavy weight.",
                              style: textStyle.copyWith(
                                fontWeight: FontWeight.normal,
                                color: AppColors.textBlack,
                                fontSize: 14.sp,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 20.sp),
                InkWell(
                  onTap: () => Get.toNamed(
                    AppRoutes.addEditWorkoutView,
                    arguments: controller.selectedDays,
                  )!.then((value) => controller.getWeeklyWorkoutList(),),
                  child: Container(
                    padding: EdgeInsetsGeometry.symmetric(
                      vertical: 12.sp,
                      horizontal: 12.sp,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.green,
                      border: Border.all(color: AppColors.primary, width: 2.sp),
                      borderRadius: BorderRadiusGeometry.circular(16.sp),
                    ),
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Add New",
                          style: textStyle.copyWith(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            color: AppColors.white,
                          ),
                        ),
                        SizedBox(width: 12.sp),
                        Icon(Icons.add, color: AppColors.white),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget weekDayBuilder({required WorkoutWeeklyListController controller}) {
    return SizedBox(
      height: 60.sp,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: controller.days.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              controller.selectedDays = controller.days[index].day;
              controller.setCurrentWorkoutList();
            },
            child: CircleAvatar(
              backgroundColor:
                  controller.days[index].day != controller.selectedDays
                  ? AppColors.lightGrey
                  : AppColors.primary,
              child: Text(
                controller.days[index].name[0],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColors.white,
                  fontSize: 20.sp,
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => SizedBox(width: 8.sp),
      ),
    );
  }
}

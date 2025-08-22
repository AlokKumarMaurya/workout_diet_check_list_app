import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:workout_diet_check_list_app/presentation/components/custom_text_fileds.dart';
import 'package:workout_diet_check_list_app/utils/constant/images.dart';

import '../../../utils/theme/app_colors.dart';
import '../../../utils/theme/text_style.dart';
import 'add_edit_workout_controller.dart';

class AddEditWorkoutView extends StatelessWidget {
  const AddEditWorkoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddEditWorkoutController>(
      init: AddEditWorkoutController(),
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
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 20.sp),
                  Text(
                    "Add Workout",
                    textAlign: TextAlign.center,
                    style: textStyle.copyWith(
                      fontWeight: FontWeight.w900,
                      fontSize: 32.sp,
                      color: AppColors.primary,
                    ),
                  ),
                  Image.asset(AppImages.dumble, height: 80.sp),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusGeometry.circular(16.sp),
                      border: Border.all(color: AppColors.primary, width: 2.sp),
                    ),
                    padding: EdgeInsets.all(24.sp),
                    child: Column(
                      children: [
                        CustomTextFormField(
                          labelText: "Workout name",
                          controller: controller.workoutNameController,
                          validator: (p0) => (p0 ?? "").isEmpty
                              ? "Workout name is required"
                              : null,
                        ),
                        SizedBox(height: 20.sp),
                        CustomTextFormField(
                          labelText: "Target muscle",
                          controller: controller.targetMuscleController,
                          validator: (p0) => (p0 ?? "").isEmpty
                              ? "Target muscle is required"
                              : null,
                        ),

                        SizedBox(height: 20.sp),
                        CustomTextFormField(
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                            LengthLimitingTextInputFormatter(3),
                          ],
                          keyboardType: TextInputType.number,
                          labelText: "Rest time(in seconds)",
                          controller: controller.restTimeController,
                          validator: (p0) => (p0 ?? "").isEmpty
                              ? "Rest time is required"
                              : null,
                        ),
                        SizedBox(height: 12.sp),
                        Row(
                          children: [
                            Text(
                              "Sets",
                              style: textStyle.copyWith(
                                fontSize: 16.sp,
                                color: AppColors.primary,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          padding: REdgeInsets.all(12.sp),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadiusGeometry.circular(16.sp),
                            color: AppColors.lightGrey1,
                          ),
                          child: Column(
                            children: [
                              ListView.separated(
                                itemCount:
                                    controller.setsTextEditingController.length,
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemBuilder: (context, index) => Row(
                                  children: [
                                    index == 0
                                        ? SizedBox(width: 24.sp)
                                        : InkWell(
                                            onTap: () {
                                              controller
                                                  .setsTextEditingController
                                                  .removeAt(index);
                                              controller.update();
                                            },
                                            child: Container(
                                              padding: EdgeInsets.all(8.sp),
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: AppColors.primary,
                                              ),
                                              child: Text(
                                                "-",
                                                style: textStyle.copyWith(
                                                  fontWeight: FontWeight.bold,
                                                  color: AppColors.white,
                                                  fontSize: 24.sp,
                                                ),
                                              ),
                                            ),
                                          ),
                                    SizedBox(width: 8.sp),
                                    Expanded(
                                      child: CustomTextFormField(
                                        inputFormatters: [
                                          FilteringTextInputFormatter
                                              .digitsOnly,
                                          LengthLimitingTextInputFormatter(3),
                                        ],
                                        keyboardType: TextInputType.number,
                                        labelText: "Weight(in kg)",
                                        controller: controller
                                            .setsTextEditingController[index][0],
                                        validator: (p0) => (p0 ?? "").isEmpty
                                            ? "Weight is required"
                                            : null,
                                      ),
                                    ),
                                    SizedBox(width: 20.sp),
                                    Expanded(
                                      child: CustomTextFormField(
                                        inputFormatters: [
                                          FilteringTextInputFormatter
                                              .digitsOnly,
                                          LengthLimitingTextInputFormatter(3),
                                        ],
                                        keyboardType: TextInputType.number,
                                        labelText: "Reps",
                                        controller: controller
                                            .setsTextEditingController[index][1],
                                        validator: (p0) => (p0 ?? "").isEmpty
                                            ? "Reps is required"
                                            : null,
                                      ),
                                    ),
                                  ],
                                ),
                                separatorBuilder: (context, index) =>
                                    SizedBox(height: 20.sp),
                              ),
                              SizedBox(height: 12.sp),
                              InkWell(
                                onTap: () {
                                  controller.setsTextEditingController.add([
                                    TextEditingController(),
                                    TextEditingController(),
                                  ]);
                                  controller.update();
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColors.primary,
                                  ),
                                  padding: REdgeInsets.all(12.sp),
                                  child: Icon(
                                    Icons.add,
                                    color: AppColors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40.sp),
                  InkWell(
                    onTap: () => controller.addNewWorkOut(),
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      padding: REdgeInsets.all(12.sp),
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadiusGeometry.circular(16.sp),
                      ),
                      child: Text(
                        "Save",
                        style: textStyle.copyWith(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:workout_diet_check_list_app/data/models/request/workout/work_out_sets/work_out_sets_request_model.dart';
import 'package:workout_diet_check_list_app/domain/use_case/weekly_workout/weekly_workout_use_case.dart';
import 'package:workout_diet_check_list_app/utils/helpers/snack_bar.dart';

import '../../../data/models/request/workout/work_out_request_model.dart';

class AddEditWorkoutController extends GetxController {
  final TextEditingController workoutNameController = TextEditingController();
  final TextEditingController targetMuscleController = TextEditingController();
  final TextEditingController restTimeController = TextEditingController();
  List<List<TextEditingController>> setsTextEditingController = [
    [TextEditingController(), TextEditingController()],
  ];

  late Days day;

  @override
  void onInit() {
    day = Get.arguments;
    super.onInit();
  }

  Future<void> addNewWorkOut() async {
    WorkOutRequestModel request = WorkOutRequestModel(
      restTime: int.parse(restTimeController.text),
      sets: setsTextEditingController
          .map(
            (e) => WorkoutSetsRequestModel(
              weight: int.parse(e.first.text),
              reps: int.parse(e[1].text),
            ),
          )
          .toList(),
      targetMuscle: targetMuscleController.text,
      workoutName: workoutNameController.text,
      day: day,
    );
    var res = await Get.find<WeeklyWorkoutUseCase>().addNewWorkOut(
      request: request,
      email: Get.find<FirebaseAuth>().currentUser!.email ?? "",
    );
    if (res.isSuccess) {
      Get.back();
      showSnackBar(message: res.message);
    } else {
      showSnackBar(message: res.message, isError: true);
    }
  }
}

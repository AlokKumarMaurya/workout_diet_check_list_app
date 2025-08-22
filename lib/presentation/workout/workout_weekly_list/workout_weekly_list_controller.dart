import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:workout_diet_check_list_app/data/models/request/workout/work_out_request_model.dart';
import 'package:workout_diet_check_list_app/domain/entity/weekly_workout/weekly_workout_list_entity.dart';
import 'package:workout_diet_check_list_app/domain/use_case/weekly_workout/weekly_workout_use_case.dart';

class WorkoutWeeklyListController extends GetxController {
  Days selectedDays = Days.sunday;
  List<DayBuilderHelper> days = [
    DayBuilderHelper(name: "Sunday", day: Days.sunday),
    DayBuilderHelper(name: "Monday", day: Days.monday),
    DayBuilderHelper(name: "Tuesday", day: Days.tuesday),
    DayBuilderHelper(name: "Wednesday", day: Days.wednesday),
    DayBuilderHelper(name: "Thursday", day: Days.thursday),
    DayBuilderHelper(name: "Friday", day: Days.friday),
    DayBuilderHelper(name: "Saturday", day: Days.saturday),
  ];

  WeeklyWorkoutListEntity? weeklyWorkoutListEntity;
  List<WorkOutRequestModel> currentWorkoutList = [];

  @override
  void onInit() {
    getWeeklyWorkoutList();
    super.onInit();
  }

  Future<void> getWeeklyWorkoutList() async {
    var res = await Get.find<WeeklyWorkoutUseCase>().getWeeklyWorkoutList(
      email: Get.find<FirebaseAuth>().currentUser!.email ?? "",
    );
    if (res.isSuccess) {
      weeklyWorkoutListEntity = res;
      setCurrentWorkoutList();
      update();
    }
  }

  void setCurrentWorkoutList() {
    switch (selectedDays) {
      case Days.sunday:
        currentWorkoutList = weeklyWorkoutListEntity!.sunday;
      case Days.monday:
        currentWorkoutList = weeklyWorkoutListEntity!.monday;
      case Days.tuesday:
        currentWorkoutList = weeklyWorkoutListEntity!.tuesday;
      case Days.wednesday:
        currentWorkoutList = weeklyWorkoutListEntity!.wednesday;
      case Days.thursday:
        currentWorkoutList = weeklyWorkoutListEntity!.thursday;
      case Days.friday:
        currentWorkoutList = weeklyWorkoutListEntity!.friday;
      case Days.saturday:
        currentWorkoutList = weeklyWorkoutListEntity!.saturday;
    }
    update();
  }
}

class DayBuilderHelper {
  final String name;
  final Days day;

  const DayBuilderHelper({required this.name, required this.day});
}

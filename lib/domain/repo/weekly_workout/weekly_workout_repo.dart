import 'package:workout_diet_check_list_app/data/models/request/workout/work_out_request_model.dart';
import 'package:workout_diet_check_list_app/domain/entity/weekly_workout/add_edit_weekly_workout_entity.dart';
import 'package:workout_diet_check_list_app/domain/entity/weekly_workout/weekly_workout_list_entity.dart';

abstract class WeeklyWorkoutRepo {
  Future<AddEditWeeklyWorkoutEntity> addNewWorkOut({
    required WorkOutRequestModel request,
    required String email,
  });

  Future<WeeklyWorkoutListEntity> getWeeklyWorkoutList({required String email});
}

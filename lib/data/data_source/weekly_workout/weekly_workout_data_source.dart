import 'package:workout_diet_check_list_app/data/models/response/workout/add_edit_weekly_workout/add_edit_weekly_workout_response_model.dart';
import 'package:workout_diet_check_list_app/data/models/response/workout/weekly_workout_list/weekly_workout_list_response_model.dart';

import '../../models/request/workout/work_out_request_model.dart';

abstract class WeeklyWorkoutDataSource {
  Future<AddEditWeeklyWorkoutResponseModel> addNewWorkOut({
    required WorkOutRequestModel request,
    required String email
  });

  Future<WeeklyWorkoutListResponseModel> getWeeklyWorkoutList({required String email});

}

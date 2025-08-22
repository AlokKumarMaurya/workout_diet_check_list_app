import 'package:workout_diet_check_list_app/data/data_source/weekly_workout/weekly_workout_data_source.dart';
import 'package:workout_diet_check_list_app/domain/entity/weekly_workout/add_edit_weekly_workout_entity.dart';
import 'package:workout_diet_check_list_app/domain/entity/weekly_workout/weekly_workout_list_entity.dart';
import 'package:workout_diet_check_list_app/domain/repo/weekly_workout/weekly_workout_repo.dart';

import '../../../models/request/workout/work_out_request_model.dart';

class WeeklyWorkoutRepoImpl implements WeeklyWorkoutRepo {
  final WeeklyWorkoutDataSource _dataSource;
  const WeeklyWorkoutRepoImpl(this._dataSource);

  @override
  Future<AddEditWeeklyWorkoutEntity> addNewWorkOut({
    required WorkOutRequestModel request,
    required String email,
  }) async => (await _dataSource.addNewWorkOut(
    request: request,
    email: email,
  )).toEntity();

  @override
  Future<WeeklyWorkoutListEntity> getWeeklyWorkoutList({
    required String email,
  }) async => (await _dataSource.getWeeklyWorkoutList(email: email)).toEntity();
}

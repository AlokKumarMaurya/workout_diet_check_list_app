import 'package:workout_diet_check_list_app/domain/entity/base_entity.dart';

import '../../../data/models/request/workout/work_out_request_model.dart';

class WeeklyWorkoutListEntity extends BaseEntity {
  final List<WorkOutRequestModel> sunday;
  final List<WorkOutRequestModel> monday;
  final List<WorkOutRequestModel> tuesday;
  final List<WorkOutRequestModel> wednesday;
  final List<WorkOutRequestModel> thursday;
  final List<WorkOutRequestModel> friday;
  final List<WorkOutRequestModel> saturday;
  const WeeklyWorkoutListEntity({
    required super.isSuccess,
    required super.message,
    required this.sunday,
    required this.monday,
    required this.wednesday,
    required this.tuesday,
    required this.friday,
    required this.thursday,
    required this.saturday,
  });
}

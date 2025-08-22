import 'package:json_annotation/json_annotation.dart';
import 'package:workout_diet_check_list_app/data/models/request/workout/work_out_sets/work_out_sets_request_model.dart';
part 'work_out_request_model.g.dart';

enum Days { sunday, monday, tuesday, wednesday, thursday, friday, saturday }

@JsonSerializable(explicitToJson: true)
class WorkOutRequestModel {
  final String workoutName;
  final String targetMuscle;
  final int restTime;
  final List<WorkoutSetsRequestModel> sets;
  final Days day;

  const WorkOutRequestModel({
    required this.restTime,
    required this.sets,
    required this.targetMuscle,
    required this.workoutName,
    required this.day,
  });

  factory WorkOutRequestModel.fromJson(Map<String, dynamic> json) =>
      _$WorkOutRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$WorkOutRequestModelToJson(this);
}

import 'package:json_annotation/json_annotation.dart';

part 'work_out_sets_request_model.g.dart';

@JsonSerializable()
class WorkoutSetsRequestModel {
  final int weight;
  final int reps;

  const WorkoutSetsRequestModel({required this.weight, required this.reps});

  factory WorkoutSetsRequestModel.fromJson(Map<String, dynamic> json) =>
      _$WorkoutSetsRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$WorkoutSetsRequestModelToJson(this);
}

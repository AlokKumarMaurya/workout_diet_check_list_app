// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_out_sets_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WorkoutSetsRequestModel _$WorkoutSetsRequestModelFromJson(
  Map<String, dynamic> json,
) => WorkoutSetsRequestModel(
  weight: (json['weight'] as num).toInt(),
  reps: (json['reps'] as num).toInt(),
);

Map<String, dynamic> _$WorkoutSetsRequestModelToJson(
  WorkoutSetsRequestModel instance,
) => <String, dynamic>{'weight': instance.weight, 'reps': instance.reps};

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_edit_weekly_workout_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddEditWeeklyWorkoutResponseModel _$AddEditWeeklyWorkoutResponseModelFromJson(
  Map<String, dynamic> json,
) => AddEditWeeklyWorkoutResponseModel(
  isSuccess: json['isSuccess'] as bool,
  message: json['message'] as String,
);

Map<String, dynamic> _$AddEditWeeklyWorkoutResponseModelToJson(
  AddEditWeeklyWorkoutResponseModel instance,
) => <String, dynamic>{
  'message': instance.message,
  'isSuccess': instance.isSuccess,
};

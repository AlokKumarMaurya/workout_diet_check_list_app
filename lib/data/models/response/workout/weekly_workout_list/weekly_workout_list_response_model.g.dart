// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weekly_workout_list_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeeklyWorkoutListResponseModel _$WeeklyWorkoutListResponseModelFromJson(
  Map<String, dynamic> json,
) => WeeklyWorkoutListResponseModel(
  isSuccess: json['isSuccess'] as bool,
  message: json['message'] as String,
  saturday:
      (json['saturday'] as List<dynamic>?)
          ?.map((e) => WorkOutRequestModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  friday:
      (json['friday'] as List<dynamic>?)
          ?.map((e) => WorkOutRequestModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  thursday:
      (json['thursday'] as List<dynamic>?)
          ?.map((e) => WorkOutRequestModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  tuesday:
      (json['tuesday'] as List<dynamic>?)
          ?.map((e) => WorkOutRequestModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  wednesday:
      (json['wednesday'] as List<dynamic>?)
          ?.map((e) => WorkOutRequestModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  monday:
      (json['monday'] as List<dynamic>?)
          ?.map((e) => WorkOutRequestModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  sunday:
      (json['sunday'] as List<dynamic>?)
          ?.map((e) => WorkOutRequestModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$WeeklyWorkoutListResponseModelToJson(
  WeeklyWorkoutListResponseModel instance,
) => <String, dynamic>{
  'message': instance.message,
  'isSuccess': instance.isSuccess,
  'sunday': instance.sunday.map((e) => e.toJson()).toList(),
  'monday': instance.monday.map((e) => e.toJson()).toList(),
  'tuesday': instance.tuesday.map((e) => e.toJson()).toList(),
  'wednesday': instance.wednesday.map((e) => e.toJson()).toList(),
  'thursday': instance.thursday.map((e) => e.toJson()).toList(),
  'friday': instance.friday.map((e) => e.toJson()).toList(),
  'saturday': instance.saturday.map((e) => e.toJson()).toList(),
};

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_out_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WorkOutRequestModel _$WorkOutRequestModelFromJson(Map<String, dynamic> json) =>
    WorkOutRequestModel(
      restTime: (json['restTime'] as num).toInt(),
      sets: (json['sets'] as List<dynamic>)
          .map(
            (e) => WorkoutSetsRequestModel.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
      targetMuscle: json['targetMuscle'] as String,
      workoutName: json['workoutName'] as String,
      day: $enumDecode(_$DaysEnumMap, json['day']),
    );

Map<String, dynamic> _$WorkOutRequestModelToJson(
  WorkOutRequestModel instance,
) => <String, dynamic>{
  'workoutName': instance.workoutName,
  'targetMuscle': instance.targetMuscle,
  'restTime': instance.restTime,
  'sets': instance.sets.map((e) => e.toJson()).toList(),
  'day': _$DaysEnumMap[instance.day]!,
};

const _$DaysEnumMap = {
  Days.sunday: 'sunday',
  Days.monday: 'monday',
  Days.tuesday: 'tuesday',
  Days.wednesday: 'wednesday',
  Days.thursday: 'thursday',
  Days.friday: 'friday',
  Days.saturday: 'saturday',
};

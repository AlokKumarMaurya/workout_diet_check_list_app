import 'package:json_annotation/json_annotation.dart';
import 'package:workout_diet_check_list_app/data/models/request/workout/work_out_request_model.dart';
import 'package:workout_diet_check_list_app/data/models/response/base_response_model.dart';
import 'package:workout_diet_check_list_app/domain/entity/weekly_workout/weekly_workout_list_entity.dart';

part 'weekly_workout_list_response_model.g.dart';

@JsonSerializable(explicitToJson: true)
class WeeklyWorkoutListResponseModel
    extends BaseResponseModel<WeeklyWorkoutListEntity> {
  @JsonKey(defaultValue: [])
  final List<WorkOutRequestModel> sunday;
  @JsonKey(defaultValue: [])
  final List<WorkOutRequestModel> monday;
  @JsonKey(defaultValue: [])
  final List<WorkOutRequestModel> tuesday;
  @JsonKey(defaultValue: [])
  final List<WorkOutRequestModel> wednesday;
  @JsonKey(defaultValue: [])
  final List<WorkOutRequestModel> thursday;
  @JsonKey(defaultValue: [])
  final List<WorkOutRequestModel> friday;
  @JsonKey(defaultValue: [])
  final List<WorkOutRequestModel> saturday;

  const WeeklyWorkoutListResponseModel({
    required super.isSuccess,
    required super.message,
    required this.saturday,
    required this.friday,
    required this.thursday,
    required this.tuesday,
    required this.wednesday,
    required this.monday,
    required this.sunday,
  });

  @override
  WeeklyWorkoutListEntity toEntity() {
    return WeeklyWorkoutListEntity(
      isSuccess: isSuccess,
      message: message,
      sunday: sunday,
      monday: monday,
      wednesday: wednesday,
      tuesday: tuesday,
      friday: friday,
      thursday: thursday,
      saturday: saturday,
    );
  }

  factory WeeklyWorkoutListResponseModel.fromJson(Map<String, dynamic> json) =>
      _$WeeklyWorkoutListResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$WeeklyWorkoutListResponseModelToJson(this);
}

import 'package:json_annotation/json_annotation.dart';
import 'package:workout_diet_check_list_app/data/models/response/base_response_model.dart';
import 'package:workout_diet_check_list_app/domain/entity/weekly_workout/add_edit_weekly_workout_entity.dart';

part 'add_edit_weekly_workout_response_model.g.dart';

@JsonSerializable()
class AddEditWeeklyWorkoutResponseModel
    extends BaseResponseModel<AddEditWeeklyWorkoutEntity> {
  const AddEditWeeklyWorkoutResponseModel({
    required super.isSuccess,
    required super.message,
  });

  @override
  AddEditWeeklyWorkoutEntity toEntity() =>
      AddEditWeeklyWorkoutEntity(isSuccess: isSuccess, message: message);

  factory AddEditWeeklyWorkoutResponseModel.fromJson(
    Map<String, dynamic> json,
  ) => _$AddEditWeeklyWorkoutResponseModelFromJson(json);
  Map<String, dynamic> toJson() =>
      _$AddEditWeeklyWorkoutResponseModelToJson(this);
}

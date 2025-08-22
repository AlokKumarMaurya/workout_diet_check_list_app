import 'package:json_annotation/json_annotation.dart';
import 'package:workout_diet_check_list_app/data/models/response/base_response_model.dart';
import 'package:workout_diet_check_list_app/domain/entity/auth/logout_entity.dart';
part 'logout_response_model.g.dart';

@JsonSerializable()
class LogoutResponseModel extends BaseResponseModel<LogoutEntity> {
  const LogoutResponseModel({required super.isSuccess, required super.message});

  @override
  LogoutEntity toEntity() {
    return LogoutEntity(isSuccess: isSuccess, message: message);
  }

  factory LogoutResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LogoutResponseModelFromJson(json);
  Map<String, dynamic> toJson() => _$LogoutResponseModelToJson(this);
}

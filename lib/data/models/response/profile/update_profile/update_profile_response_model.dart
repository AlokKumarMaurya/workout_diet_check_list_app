import 'package:json_annotation/json_annotation.dart';
import 'package:workout_diet_check_list_app/data/models/response/base_response_model.dart';
import 'package:workout_diet_check_list_app/data/models/response/user/user_model_class.dart';
import 'package:workout_diet_check_list_app/domain/entity/profile/update_profile_entity.dart';
part 'update_profile_response_model.g.dart';

@JsonSerializable()
class UpdateProfileResponseModel
    extends BaseResponseModel<UpdateProfileEntity> {
  final UserModel? userModel;

  const UpdateProfileResponseModel({
    required super.message,
    required super.isSuccess,
     this.userModel,
  });

  @override
  UpdateProfileEntity toEntity() => UpdateProfileEntity(
    isSuccess: isSuccess,
    message: message,
    userModel: userModel,
  );

  factory UpdateProfileResponseModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateProfileResponseModelFromJson(json);
  Map<String, dynamic> toJson() => _$UpdateProfileResponseModelToJson(this);
}

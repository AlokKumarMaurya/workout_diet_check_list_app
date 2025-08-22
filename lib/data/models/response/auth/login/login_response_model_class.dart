import 'package:json_annotation/json_annotation.dart';
import 'package:workout_diet_check_list_app/data/models/response/base_response_model.dart';
import 'package:workout_diet_check_list_app/data/models/response/user/user_model_class.dart';
import 'package:workout_diet_check_list_app/domain/entity/auth/login_entity.dart';
part 'login_response_model_class.g.dart';

@JsonSerializable()
class LoginResponseModelClass extends BaseResponseModel<LoginEntity> {
  final UserModel? userCredential;
  const LoginResponseModelClass({
    this.userCredential,
    required super.message,
    required super.isSuccess,
  });

  @override
  LoginEntity toEntity() => LoginEntity(
    message: message,
    isSuccess: isSuccess,
    userCredential: userCredential,
  );

  factory LoginResponseModelClass.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelClassFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseModelClassToJson(this);
}

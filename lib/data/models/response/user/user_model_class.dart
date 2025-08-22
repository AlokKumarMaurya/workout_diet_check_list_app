import 'package:json_annotation/json_annotation.dart';
import 'package:workout_diet_check_list_app/data/models/response/user/user_cred/user_cred.dart';
part 'user_model_class.g.dart';

@JsonSerializable()
class UserModel {
  final String userId;
  final String userName;
  final String email;
  final String profileImage;
  final String phone;
  final UserCredentials userCredentials;

  const UserModel({
    required this.userId,
    required this.userName,
    required this.email,
    required this.profileImage,
    required this.phone,
    required this.userCredentials,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}

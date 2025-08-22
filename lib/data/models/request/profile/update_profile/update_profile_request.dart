import 'package:json_annotation/json_annotation.dart';

import '../../../response/user/user_cred/user_cred.dart';
part 'update_profile_request.g.dart';
@JsonSerializable(explicitToJson: true)
class UpdateProfileRequestModel {
  @JsonKey(includeIfNull: false)
  final String? userName;
  @JsonKey(includeIfNull: false)
  final String? phone;
  @JsonKey(includeIfNull: false)
  final String? email;
  @JsonKey(includeIfNull: false)
  final String? profileImage;
  @JsonKey(includeIfNull: false)
  final String? userId;
  @JsonKey(includeIfNull: false)
  final UserCredentials? userCredentials;

  const UpdateProfileRequestModel({
    this.userName,
    this.phone,
    this.email,
    this.profileImage,
    this.userCredentials,
    this.userId,
  });

  factory UpdateProfileRequestModel.fromJson(Map<String,dynamic>json)=>_$UpdateProfileRequestModelFromJson(json);
  Map<String,dynamic> toJson()=>_$UpdateProfileRequestModelToJson(this);

}

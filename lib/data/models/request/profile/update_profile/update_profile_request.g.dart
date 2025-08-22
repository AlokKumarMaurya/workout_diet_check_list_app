// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_profile_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateProfileRequestModel _$UpdateProfileRequestModelFromJson(
  Map<String, dynamic> json,
) => UpdateProfileRequestModel(
  userName: json['userName'] as String?,
  phone: json['phone'] as String?,
  email: json['email'] as String?,
  profileImage: json['profileImage'] as String?,
  userCredentials: json['userCredentials'] == null
      ? null
      : UserCredentials.fromJson(
          json['userCredentials'] as Map<String, dynamic>,
        ),
  userId: json['userId'] as String?,
);

Map<String, dynamic> _$UpdateProfileRequestModelToJson(
  UpdateProfileRequestModel instance,
) => <String, dynamic>{
  'userName': ?instance.userName,
  'phone': ?instance.phone,
  'email': ?instance.email,
  'profileImage': ?instance.profileImage,
  'userId': ?instance.userId,
  'userCredentials': ?instance.userCredentials?.toJson(),
};

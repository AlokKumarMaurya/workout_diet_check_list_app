// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model_class.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
  userId: json['userId'] as String,
  userName: json['userName'] as String,
  email: json['email'] as String,
  profileImage: json['profileImage'] as String,
  phone: json['phone'] as String,
  userCredentials: UserCredentials.fromJson(
    json['userCredentials'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
  'userId': instance.userId,
  'userName': instance.userName,
  'email': instance.email,
  'profileImage': instance.profileImage,
  'phone': instance.phone,
  'userCredentials': instance.userCredentials,
};

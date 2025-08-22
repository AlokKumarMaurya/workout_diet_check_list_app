// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_profile_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateProfileResponseModel _$UpdateProfileResponseModelFromJson(
  Map<String, dynamic> json,
) => UpdateProfileResponseModel(
  message: json['message'] as String,
  isSuccess: json['isSuccess'] as bool,
  userModel: json['userModel'] == null
      ? null
      : UserModel.fromJson(json['userModel'] as Map<String, dynamic>),
);

Map<String, dynamic> _$UpdateProfileResponseModelToJson(
  UpdateProfileResponseModel instance,
) => <String, dynamic>{
  'message': instance.message,
  'isSuccess': instance.isSuccess,
  'userModel': instance.userModel,
};

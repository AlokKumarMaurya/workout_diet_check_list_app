// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_model_class.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponseModelClass _$LoginResponseModelClassFromJson(
  Map<String, dynamic> json,
) => LoginResponseModelClass(
  userCredential: json['userCredential'] == null
      ? null
      : UserModel.fromJson(json['userCredential'] as Map<String, dynamic>),
  message: json['message'] as String,
  isSuccess: json['isSuccess'] as bool,
);

Map<String, dynamic> _$LoginResponseModelClassToJson(
  LoginResponseModelClass instance,
) => <String, dynamic>{
  'message': instance.message,
  'isSuccess': instance.isSuccess,
  'userCredential': instance.userCredential,
};

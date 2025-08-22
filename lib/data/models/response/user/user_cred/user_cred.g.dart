// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_cred.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserCredentials _$UserCredentialsFromJson(Map<String, dynamic> json) =>
    UserCredentials(
      token: (json['token'] as num).toInt(),
      accessToken: json['accessToken'] as String,
      providerId: json['providerId'] as String,
      signInMethod: json['signInMethod'] as String,
    );

Map<String, dynamic> _$UserCredentialsToJson(UserCredentials instance) =>
    <String, dynamic>{
      'providerId': instance.providerId,
      'signInMethod': instance.signInMethod,
      'token': instance.token,
      'accessToken': instance.accessToken,
    };

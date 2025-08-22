import 'package:json_annotation/json_annotation.dart';
part 'user_cred.g.dart';

@JsonSerializable()
class UserCredentials {
  @JsonKey(includeIfNull: false)
  final String providerId;
  @JsonKey(includeIfNull: false)
  final String signInMethod;
  @JsonKey(includeIfNull: false)
  final int token;
  @JsonKey(includeIfNull: false)
  final String accessToken;

  const UserCredentials({
    required this.token,
    required this.accessToken,
    required this.providerId,
    required this.signInMethod,
  });

  factory UserCredentials.fromJson(Map<String, dynamic> json) =>
      _$UserCredentialsFromJson(json);
  Map<String, dynamic> toJson() => _$UserCredentialsToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cognito_auth_session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CognitoAuthSession _$CognitoAuthSessionFromJson(Map<String, dynamic> json) =>
    CognitoAuthSession(
      isSignedIn: json['isSignedIn'] as bool,
      credentials: json['credentials'] == null
          ? null
          : AWSCredentials.fromJson(
              json['credentials'] as Map<String, dynamic>),
      userPoolTokens: json['userPoolTokens'] == null
          ? null
          : CognitoUserPoolTokens.fromJson(
              json['userPoolTokens'] as Map<String, dynamic>),
      userSub: json['userSub'] as String?,
      identityId: json['identityId'] as String?,
    );

Map<String, dynamic> _$CognitoAuthSessionToJson(CognitoAuthSession instance) {
  final val = <String, dynamic>{
    'isSignedIn': instance.isSignedIn,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('credentials', instance.credentials?.toJson());
  writeNotNull('userPoolTokens', instance.userPoolTokens?.toJson());
  writeNotNull('userSub', instance.userSub);
  writeNotNull('identityId', instance.identityId);
  return val;
}

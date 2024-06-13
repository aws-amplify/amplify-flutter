// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cognito_auth_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CognitoAuthUser _$CognitoAuthUserFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'CognitoAuthUser',
      json,
      ($checkedConvert) {
        final val = CognitoAuthUser(
          userId: $checkedConvert('userId', (v) => v as String),
          username: $checkedConvert('username', (v) => v as String),
          signInDetails: $checkedConvert('signInDetails',
              (v) => CognitoSignInDetails.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$CognitoAuthUserToJson(CognitoAuthUser instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'username': instance.username,
      'signInDetails': instance.signInDetails.toJson(),
    };

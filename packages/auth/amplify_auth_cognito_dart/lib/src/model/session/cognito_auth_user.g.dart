// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cognito_auth_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CognitoAuthUser _$CognitoAuthUserFromJson(Map<String, dynamic> json) =>
    CognitoAuthUser(
      username: json['username'] as String,
      userId: json['userId'] as String,
      signInDetails: CognitoSignInDetails.fromJson(
          json['signInDetails'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CognitoAuthUserToJson(CognitoAuthUser instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'username': instance.username,
      'signInDetails': instance.signInDetails.toJson(),
    };

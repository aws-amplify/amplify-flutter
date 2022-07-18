// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cognito_session_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CognitoSessionOptions _$CognitoSessionOptionsFromJson(
        Map<String, dynamic> json) =>
    CognitoSessionOptions(
      getAWSCredentials: json['getAWSCredentials'] as bool? ?? false,
    );

Map<String, dynamic> _$CognitoSessionOptionsToJson(
        CognitoSessionOptions instance) =>
    <String, dynamic>{
      'getAWSCredentials': instance.getAWSCredentials,
    };

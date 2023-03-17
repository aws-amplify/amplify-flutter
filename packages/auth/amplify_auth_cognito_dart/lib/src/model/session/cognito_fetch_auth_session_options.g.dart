// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cognito_fetch_auth_session_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CognitoFetchAuthSessionOptions _$CognitoFetchAuthSessionOptionsFromJson(
        Map<String, dynamic> json) =>
    CognitoFetchAuthSessionOptions(
      forceRefresh: json['forceRefresh'] as bool? ?? false,
    );

Map<String, dynamic> _$CognitoFetchAuthSessionOptionsToJson(
        CognitoFetchAuthSessionOptions instance) =>
    <String, dynamic>{
      'forceRefresh': instance.forceRefresh,
    };

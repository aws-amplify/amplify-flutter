// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aws_credentials.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StaticCredentials _$StaticCredentialsFromJson(Map<String, dynamic> json) =>
    StaticCredentials(
      json['access_key_id'] as String,
      json['secret_access_key'] as String,
    );

Map<String, dynamic> _$StaticCredentialsToJson(StaticCredentials instance) =>
    <String, dynamic>{
      'access_key_id': instance.accessKeyId,
      'secret_access_key': instance.secretAccessKey,
    };

TemporaryCredentials _$TemporaryCredentialsFromJson(
  Map<String, dynamic> json,
) => TemporaryCredentials(
  json['access_key_id'] as String,
  json['secret_access_key'] as String,
  json['session_token'] as String,
  DateTime.parse(json['expiration'] as String),
);

Map<String, dynamic> _$TemporaryCredentialsToJson(
  TemporaryCredentials instance,
) => <String, dynamic>{
  'access_key_id': instance.accessKeyId,
  'secret_access_key': instance.secretAccessKey,
  'session_token': instance.sessionToken,
  'expiration': instance.expiration.toIso8601String(),
};

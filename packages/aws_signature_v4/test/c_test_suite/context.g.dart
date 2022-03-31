// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'context.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Context _$ContextFromJson(Map<String, dynamic> json) => Context(
      credentials:
          AWSCredentials.fromJson(json['credentials'] as Map<String, dynamic>),
      expirationInSeconds: json['expiration_in_seconds'] as int,
      normalize: json['normalize'] as bool,
      region: json['region'] as String,
      service: json['service'] as String,
      signBody: json['sign_body'] as bool,
      timestamp: DateTime.parse(json['timestamp'] as String),
      omitSessionToken: json['omit_session_token'] as bool?,
    );

Map<String, dynamic> _$ContextToJson(Context instance) => <String, dynamic>{
      'credentials': instance.credentials.toJson(),
      'expiration_in_seconds': instance.expirationInSeconds,
      'normalize': instance.normalize,
      'region': instance.region,
      'service': instance.service,
      'sign_body': instance.signBody,
      'timestamp': instance.timestamp.toIso8601String(),
      'omit_session_token': instance.omitSessionToken,
    };

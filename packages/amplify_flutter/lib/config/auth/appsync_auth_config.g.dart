// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appsync_auth_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppSyncAuthConfig _$AppSyncAuthConfigFromJson(Map<String, dynamic> json) {
  return AppSyncAuthConfig(
    apiUrl: json['ApiUrl'] as String,
    region: json['Region'] as String,
    authMode: json['AuthMode'] as String,
    apiKey: json['ApiKey'] as String?,
    clientDatabasePrefix: json['ClientDatabasePrefix'] as String,
  );
}

Map<String, dynamic> _$AppSyncAuthConfigToJson(AppSyncAuthConfig instance) =>
    <String, dynamic>{
      'ApiUrl': instance.apiUrl,
      'Region': instance.region,
      'AuthMode': instance.authMode,
      'ApiKey': instance.apiKey,
      'ClientDatabasePrefix': instance.clientDatabasePrefix,
    };

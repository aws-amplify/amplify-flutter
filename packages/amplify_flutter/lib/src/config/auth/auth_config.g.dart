// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthConfig _$AuthConfigFromJson(Map<String, dynamic> json) {
  return AuthConfig(
    (json['plugins'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, AuthPlugin.fromJson(e as Map<String, dynamic>)),
    ),
  );
}

Map<String, dynamic> _$AuthConfigToJson(AuthConfig instance) =>
    <String, dynamic>{
      'plugins': instance.plugins,
    };

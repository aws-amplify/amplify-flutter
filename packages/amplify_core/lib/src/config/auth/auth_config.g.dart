// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthConfig _$AuthConfigFromJson(Map<String, dynamic> json) => AuthConfig(
      plugins: AmplifyPluginRegistry.pluginConfigsFromJson(json['plugins']),
    );

Map<String, dynamic> _$AuthConfigToJson(AuthConfig instance) =>
    <String, dynamic>{
      'plugins': instance.plugins.map((k, e) => MapEntry(k, e.toJson())),
    };

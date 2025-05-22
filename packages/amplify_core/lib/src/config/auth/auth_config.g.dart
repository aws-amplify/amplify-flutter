// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'auth_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthConfig _$AuthConfigFromJson(Map<String, dynamic> json) => $checkedCreate(
      'AuthConfig',
      json,
      ($checkedConvert) {
        final val = AuthConfig(
          plugins: $checkedConvert(
              'plugins', (v) => AmplifyPluginRegistry.pluginConfigsFromJson(v)),
        );
        return val;
      },
    );

Map<String, dynamic> _$AuthConfigToJson(AuthConfig instance) =>
    <String, dynamic>{
      'plugins': instance.plugins.map((k, e) => MapEntry(k, e.toJson())),
    };

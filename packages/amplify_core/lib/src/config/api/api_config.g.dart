// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'api_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiConfig _$ApiConfigFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ApiConfig', json, ($checkedConvert) {
      final val = ApiConfig(
        plugins: $checkedConvert(
          'plugins',
          (v) => AmplifyPluginRegistry.pluginConfigsFromJson(v),
        ),
      );
      return val;
    });

Map<String, dynamic> _$ApiConfigToJson(ApiConfig instance) => <String, dynamic>{
  'plugins': instance.plugins.map((k, e) => MapEntry(k, e.toJson())),
};

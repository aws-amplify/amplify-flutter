// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiConfig _$ApiConfigFromJson(Map<String, dynamic> json) {
  return ApiConfig(
    (json['plugins'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(
          k,
          (e as Map<String, dynamic>).map(
            (k, e) =>
                MapEntry(k, APIPlugin.fromJson(e as Map<String, dynamic>)),
          )),
    ),
  );
}

Map<String, dynamic> _$ApiConfigToJson(ApiConfig instance) => <String, dynamic>{
      'plugins': instance.plugins,
    };

APIPlugin _$APIPluginFromJson(Map<String, dynamic> json) {
  return APIPlugin(
    endpointType: json['endpointType'] as String,
    endpoint: json['endpoint'] as String,
    region: json['region'] as String,
    authorizationType: json['authorizationType'] as String,
    apiKey: json['apiKey'] as String?,
  );
}

Map<String, dynamic> _$APIPluginToJson(APIPlugin instance) => <String, dynamic>{
      'endpointType': instance.endpointType,
      'endpoint': instance.endpoint,
      'region': instance.region,
      'authorizationType': instance.authorizationType,
      'apiKey': instance.apiKey,
    };

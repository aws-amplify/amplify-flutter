// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_plugin.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

APIPlugin _$APIPluginFromJson(Map<String, dynamic> json) {
  return APIPlugin(
    endpointType: json['endpointType'] as String?,
    endpoint: json['endpoint'] as String?,
    region: json['region'] as String?,
    authorizationType: json['authorizationType'] as String?,
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

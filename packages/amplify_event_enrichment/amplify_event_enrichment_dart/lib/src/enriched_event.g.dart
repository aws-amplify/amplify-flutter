// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enriched_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$EnvelopeToJson(_Envelope instance) => <String, dynamic>{
  'event_type': instance.eventType,
  'event_timestamp': instance.eventTimestamp,
  'arrival_timestamp': instance.arrivalTimestamp,
  'event_version': instance.eventVersion,
  'application': instance.application.toJson(),
  'client': instance.client.toJson(),
  'device': instance.device.toJson(),
  'session': instance.session.toJson(),
  'attributes': ?instance.attributes,
  'metrics': ?instance.metrics,
};

Map<String, dynamic> _$ApplicationToJson(_Application instance) =>
    <String, dynamic>{
      'app_id': instance.appId,
      'package_name': ?instance.packageName,
      'version_name': ?instance.versionName,
      'version_code': ?instance.versionCode,
      'title': ?instance.title,
      'sdk': instance.sdk.toJson(),
    };

Map<String, dynamic> _$SdkToJson(_Sdk instance) => <String, dynamic>{
  'name': instance.name,
  'version': instance.version,
};

Map<String, dynamic> _$ClientToJson(_Client instance) => <String, dynamic>{
  'client_id': instance.clientId,
  'user_id': ?instance.userId,
};

Map<String, dynamic> _$DeviceToJson(_Device instance) => <String, dynamic>{
  'platform': ?instance.platform?.toJson(),
  'make': ?instance.make,
  'model': ?instance.model,
  'locale': ?instance.locale?.toJson(),
};

Map<String, dynamic> _$PlatformToJson(_Platform instance) => <String, dynamic>{
  'name': ?instance.name,
  'version': ?instance.version,
};

Map<String, dynamic> _$LocaleToJson(_Locale instance) => <String, dynamic>{
  'code': instance.code,
};

Map<String, dynamic> _$SessionToJson(_Session instance) => <String, dynamic>{
  'id': instance.id,
  'start_timestamp': instance.startTimestamp,
  'stop_timestamp': ?instance.stopTimestamp,
  'duration': ?instance.duration,
};

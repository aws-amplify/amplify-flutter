// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_device.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActiveDevice _$ActiveDeviceFromJson(Map<String, dynamic> json) => ActiveDevice(
      name: json['name'] as String,
      id: json['id'] as String,
      targetPlatform: json['targetPlatform'] as String,
    );

Map<String, dynamic> _$ActiveDeviceToJson(ActiveDevice instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'targetPlatform': instance.targetPlatform,
    };

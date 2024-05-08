// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'notifications_outputs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationsOutputs _$NotificationsOutputsFromJson(
        Map<String, dynamic> json) =>
    NotificationsOutputs(
      awsRegion: json['aws_region'] as String,
      amazonPinpointAppId: json['amazon_pinpoint_app_id'] as String,
      channels: (json['channels'] as List<dynamic>)
          .map((e) => $enumDecode(_$AmazonPinpointChannelEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$NotificationsOutputsToJson(
        NotificationsOutputs instance) =>
    <String, dynamic>{
      'aws_region': instance.awsRegion,
      'amazon_pinpoint_app_id': instance.amazonPinpointAppId,
      'channels': instance.channels
          .map((e) => _$AmazonPinpointChannelEnumMap[e]!)
          .toList(),
    };

const _$AmazonPinpointChannelEnumMap = {
  AmazonPinpointChannel.apns: 'APNS',
  AmazonPinpointChannel.email: 'EMAIL',
  AmazonPinpointChannel.fcm: 'FCM',
  AmazonPinpointChannel.inAppMessaging: 'IN_APP_MESSAGING',
  AmazonPinpointChannel.sms: 'SMS',
};

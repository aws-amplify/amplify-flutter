// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'notifications_outputs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationsOutputs _$NotificationsOutputsFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'NotificationsOutputs',
  json,
  ($checkedConvert) {
    final val = NotificationsOutputs(
      awsRegion: $checkedConvert('aws_region', (v) => v as String?),
      amazonPinpointAppId: $checkedConvert(
        'amazon_pinpoint_app_id',
        (v) => v as String?,
      ),
      channels: $checkedConvert(
        'channels',
        (v) => (v as List<dynamic>?)
            ?.map((e) => $enumDecode(_$AmazonPinpointChannelEnumMap, e))
            .toList(),
      ),
      amazonConnect: $checkedConvert(
        'amazon_connect',
        (v) => v == null
            ? null
            : AmazonConnectOutputs.fromJson(v as Map<String, dynamic>),
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'awsRegion': 'aws_region',
    'amazonPinpointAppId': 'amazon_pinpoint_app_id',
    'amazonConnect': 'amazon_connect',
  },
);

Map<String, dynamic> _$NotificationsOutputsToJson(
  NotificationsOutputs instance,
) => <String, dynamic>{
  'aws_region': ?instance.awsRegion,
  'amazon_pinpoint_app_id': ?instance.amazonPinpointAppId,
  'channels': ?instance.channels
      ?.map((e) => _$AmazonPinpointChannelEnumMap[e]!)
      .toList(),
  'amazon_connect': ?instance.amazonConnect?.toJson(),
};

const _$AmazonPinpointChannelEnumMap = {
  AmazonPinpointChannel.apns: 'APNS',
  AmazonPinpointChannel.email: 'EMAIL',
  AmazonPinpointChannel.fcm: 'FCM',
  AmazonPinpointChannel.inAppMessaging: 'IN_APP_MESSAGING',
  AmazonPinpointChannel.sms: 'SMS',
};

// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'amazon_pinpoint.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AmazonPinpoint _$AmazonPinpointFromJson(Map<String, dynamic> json) =>
    AmazonPinpoint(
      awsRegion: json['aws_region'] as String,
      appId: json['app_id'] as String,
    );

Map<String, dynamic> _$AmazonPinpointToJson(AmazonPinpoint instance) =>
    <String, dynamic>{
      'aws_region': instance.awsRegion,
      'app_id': instance.appId,
    };

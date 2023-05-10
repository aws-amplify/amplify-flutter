// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aws_query_trait.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AwsQueryTrait _$AwsQueryTraitFromJson(Map<String, dynamic> json) =>
    AwsQueryTrait();

Map<String, dynamic> _$AwsQueryTraitToJson(AwsQueryTrait instance) =>
    <String, dynamic>{};

AwsQueryErrorTrait _$AwsQueryErrorTraitFromJson(Map<String, dynamic> json) =>
    AwsQueryErrorTrait(
      code: json['code'] as String,
      httpResponseCode: json['httpResponseCode'] as int,
    );

Map<String, dynamic> _$AwsQueryErrorTraitToJson(AwsQueryErrorTrait instance) =>
    <String, dynamic>{
      'code': instance.code,
      'httpResponseCode': instance.httpResponseCode,
    };

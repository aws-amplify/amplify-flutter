// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aws_json_1_1_trait.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AwsJson1_1Trait _$AwsJson1_1TraitFromJson(Map<String, dynamic> json) =>
    AwsJson1_1Trait(
      http: (json['http'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$AlpnProtocolEnumMap, e))
              .toList() ??
          AWSProtocolTrait.defaultHttpProtocols,
      eventStreamHttp: (json['eventStreamHttp'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$AlpnProtocolEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$AwsJson1_1TraitToJson(AwsJson1_1Trait instance) =>
    <String, dynamic>{
      'http': instance.http.map((e) => _$AlpnProtocolEnumMap[e]!).toList(),
      'eventStreamHttp': instance.eventStreamHttp
          .map((e) => _$AlpnProtocolEnumMap[e]!)
          .toList(),
    };

const _$AlpnProtocolEnumMap = {
  AlpnProtocol.http1_1: 'http/1.1',
  AlpnProtocol.http2: 'h2',
  AlpnProtocol.http3: 'h3',
};

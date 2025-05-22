// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rest_json_1_trait.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RestJson1Trait _$RestJson1TraitFromJson(Map<String, dynamic> json) =>
    RestJson1Trait(
      http: (json['http'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$AlpnProtocolEnumMap, e))
              .toList() ??
          AWSProtocolTrait.defaultHttpProtocols,
      eventStreamHttp: (json['eventStreamHttp'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$AlpnProtocolEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$RestJson1TraitToJson(RestJson1Trait instance) =>
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

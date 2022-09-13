// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rest_xml_trait.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RestXmlTrait _$RestXmlTraitFromJson(Map<String, dynamic> json) => RestXmlTrait(
      noErrorWrapping: json['noErrorWrapping'] as bool? ?? false,
      http: (json['http'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$AlpnProtocolEnumMap, e))
              .toList() ??
          AWSProtocolTrait.defaultHttpProtocols,
      eventStreamHttp: (json['eventStreamHttp'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$AlpnProtocolEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$RestXmlTraitToJson(RestXmlTrait instance) =>
    <String, dynamic>{
      'http': instance.http.map((e) => _$AlpnProtocolEnumMap[e]!).toList(),
      'eventStreamHttp': instance.eventStreamHttp
          .map((e) => _$AlpnProtocolEnumMap[e]!)
          .toList(),
      'noErrorWrapping': instance.noErrorWrapping,
    };

const _$AlpnProtocolEnumMap = {
  AlpnProtocol.http1_1: 'http/1.1',
  AlpnProtocol.http2: 'h2',
  AlpnProtocol.http3: 'h3',
};

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_api_key_auth_trait.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HttpApiKeyAuthTrait _$HttpApiKeyAuthTraitFromJson(Map<String, dynamic> json) =>
    HttpApiKeyAuthTrait(
      scheme: json['scheme'] as String?,
      name: json['name'] as String,
      location: $enumDecode(_$LocationEnumMap, json['in']),
    );

Map<String, dynamic> _$HttpApiKeyAuthTraitToJson(
        HttpApiKeyAuthTrait instance) =>
    <String, dynamic>{
      'scheme': instance.scheme,
      'name': instance.name,
      'in': _$LocationEnumMap[instance.location],
    };

const _$LocationEnumMap = {
  Location.header: 'header',
  Location.query: 'query',
};

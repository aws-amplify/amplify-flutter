// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'keyset.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JsonWebKeySet _$JsonWebKeySetFromJson(Map<String, dynamic> json) =>
    JsonWebKeySet(
      (json['keys'] as List<dynamic>)
          .map((e) => JsonWebKey.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$JsonWebKeySetToJson(JsonWebKeySet instance) =>
    <String, dynamic>{
      'keys': instance.keys.map((e) => e.toJson()).toList(),
    };

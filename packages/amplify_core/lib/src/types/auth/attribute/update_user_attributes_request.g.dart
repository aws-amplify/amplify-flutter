// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user_attributes_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateUserAttributesRequest<Key, Options> _$UpdateUserAttributesRequestFromJson<
        Key extends UserAttributeKey,
        Options extends UpdateUserAttributesOptions>(
  Map<String, dynamic> json,
  Key Function(Object? json) fromJsonKey,
  Options Function(Object? json) fromJsonOptions,
) =>
    UpdateUserAttributesRequest<Key, Options>(
      attributes: (json['attributes'] as List<dynamic>)
          .map((e) => AuthUserAttribute<Key>.fromJson(
              e as Map<String, dynamic>, (value) => fromJsonKey(value)))
          .toList(),
      options: _$nullableGenericFromJson(json['options'], fromJsonOptions),
    );

Map<String, dynamic> _$UpdateUserAttributesRequestToJson<
    Key extends UserAttributeKey, Options extends UpdateUserAttributesOptions>(
  UpdateUserAttributesRequest<Key, Options> instance,
  Object? Function(Key value) toJsonKey,
  Object? Function(Options value) toJsonOptions,
) {
  final val = <String, dynamic>{
    'attributes': instance.attributes.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'options', _$nullableGenericToJson(instance.options, toJsonOptions));
  return val;
}

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);

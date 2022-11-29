// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user_attribute_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateUserAttributeRequest<Key, Options> _$UpdateUserAttributeRequestFromJson<
        Key extends AuthUserAttributeKey,
        Options extends UpdateUserAttributeOptions>(
  Map<String, dynamic> json,
  Key Function(Object? json) fromJsonKey,
  Options Function(Object? json) fromJsonOptions,
) =>
    UpdateUserAttributeRequest<Key, Options>._(
      attribute: AuthUserAttribute<Key>.fromJson(
          json['attribute'] as Map<String, dynamic>,
          (value) => fromJsonKey(value)),
      options: _$nullableGenericFromJson(json['options'], fromJsonOptions),
    );

Map<String, dynamic> _$UpdateUserAttributeRequestToJson<
    Key extends AuthUserAttributeKey,
    Options extends UpdateUserAttributeOptions>(
  UpdateUserAttributeRequest<Key, Options> instance,
  Object? Function(Key value) toJsonKey,
  Object? Function(Options value) toJsonOptions,
) {
  final val = <String, dynamic>{
    'attribute': instance.attribute.toJson(),
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

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_session_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthSessionRequest<Options>
    _$AuthSessionRequestFromJson<Options extends AuthSessionOptions>(
  Map<String, dynamic> json,
  Options Function(Object? json) fromJsonOptions,
) =>
        AuthSessionRequest<Options>(
          options: _$nullableGenericFromJson(json['options'], fromJsonOptions),
        );

Map<String, dynamic>
    _$AuthSessionRequestToJson<Options extends AuthSessionOptions>(
  AuthSessionRequest<Options> instance,
  Object? Function(Options value) toJsonOptions,
) {
  final val = <String, dynamic>{};

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

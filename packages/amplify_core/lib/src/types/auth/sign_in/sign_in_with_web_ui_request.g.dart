// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_with_web_ui_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignInWithWebUIRequest<Options>
    _$SignInWithWebUIRequestFromJson<Options extends SignInWithWebUIOptions>(
  Map<String, dynamic> json,
  Options Function(Object? json) fromJsonOptions,
) =>
        SignInWithWebUIRequest<Options>(
          provider: _authProviderFromJson(json['provider'] as String?),
          options: _$nullableGenericFromJson(json['options'], fromJsonOptions),
        );

Map<String, dynamic>
    _$SignInWithWebUIRequestToJson<Options extends SignInWithWebUIOptions>(
  SignInWithWebUIRequest<Options> instance,
  Object? Function(Options value) toJsonOptions,
) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('provider', _authProviderToJson(instance.provider));
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

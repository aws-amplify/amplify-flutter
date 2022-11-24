// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cognito_sign_in_details.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CognitoSignInMethod _$default$ = const CognitoSignInMethod._('default\$');
const CognitoSignInMethod _$hostedUi = const CognitoSignInMethod._('hostedUi');

CognitoSignInMethod _$CognitoSignInMethodValueOf(String name) {
  switch (name) {
    case 'default\$':
      return _$default$;
    case 'hostedUi':
      return _$hostedUi;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<CognitoSignInMethod> _$CognitoSignInMethodValues =
    new BuiltSet<CognitoSignInMethod>(const <CognitoSignInMethod>[
  _$default$,
  _$hostedUi,
]);

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CognitoSignInDetailsApiBased _$CognitoSignInDetailsApiBasedFromJson(
        Map<String, dynamic> json) =>
    CognitoSignInDetailsApiBased(
      username: json['username'] as String,
      authFlowType: _$JsonConverterFromJson<String, AuthFlowType>(
          json['authFlowType'], const _AuthFlowTypeSerializer().fromJson),
    );

Map<String, dynamic> _$CognitoSignInDetailsApiBasedToJson(
    CognitoSignInDetailsApiBased instance) {
  final val = <String, dynamic>{
    'username': instance.username,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'authFlowType',
      _$JsonConverterToJson<String, AuthFlowType>(
          instance.authFlowType, const _AuthFlowTypeSerializer().toJson));
  return val;
}

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);

CognitoSignInDetailsHostedUi _$CognitoSignInDetailsHostedUiFromJson(
        Map<String, dynamic> json) =>
    CognitoSignInDetailsHostedUi(
      provider: json['provider'] == null
          ? null
          : AuthProvider.fromJson(json['provider'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CognitoSignInDetailsHostedUiToJson(
    CognitoSignInDetailsHostedUi instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('provider', instance.provider?.toJson());
  return val;
}

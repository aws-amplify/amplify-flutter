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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CognitoSignInDetailsApiBased _$CognitoSignInDetailsApiBasedFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'CognitoSignInDetailsApiBased',
      json,
      ($checkedConvert) {
        final val = CognitoSignInDetailsApiBased(
          username: $checkedConvert('username', (v) => v as String),
          authFlowType: $checkedConvert(
              'authFlowType',
              (v) => _$JsonConverterFromJson<String, AuthFlowType>(
                  v, const _AuthFlowTypeSerializer().fromJson)),
        );
        return val;
      },
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
    $checkedCreate(
      'CognitoSignInDetailsHostedUi',
      json,
      ($checkedConvert) {
        final val = CognitoSignInDetailsHostedUi(
          provider: $checkedConvert(
              'provider',
              (v) => v == null
                  ? null
                  : AuthProvider.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
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

CognitoSignInDetailsFederated _$CognitoSignInDetailsFederatedFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'CognitoSignInDetailsFederated',
      json,
      ($checkedConvert) {
        final val = CognitoSignInDetailsFederated(
          token: $checkedConvert('token', (v) => v as String),
          provider: $checkedConvert('provider',
              (v) => AuthProvider.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$CognitoSignInDetailsFederatedToJson(
        CognitoSignInDetailsFederated instance) =>
    <String, dynamic>{
      'token': instance.token,
      'provider': instance.provider.toJson(),
    };

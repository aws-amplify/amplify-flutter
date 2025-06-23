// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'federate_to_identity_pool_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FederateToIdentityPoolRequest _$FederateToIdentityPoolRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('FederateToIdentityPoolRequest', json, ($checkedConvert) {
  final val = FederateToIdentityPoolRequest(
    token: $checkedConvert('token', (v) => v as String),
    provider: $checkedConvert(
      'provider',
      (v) => _authProviderFromJson(v as String),
    ),
    options: $checkedConvert(
      'options',
      (v) => v == null
          ? null
          : FederateToIdentityPoolOptions.fromJson(v as Map<String, dynamic>),
    ),
  );
  return val;
});

Map<String, dynamic> _$FederateToIdentityPoolRequestToJson(
  FederateToIdentityPoolRequest instance,
) => <String, dynamic>{
  'token': instance.token,
  'provider': instance.provider.toJson(),
  if (instance.options?.toJson() case final value?) 'options': value,
};

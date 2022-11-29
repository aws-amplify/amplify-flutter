// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cognito_sign_in_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CognitoSignInOptions _$CognitoSignInOptionsFromJson(
        Map<String, dynamic> json) =>
    CognitoSignInOptions(
      authFlowType: $enumDecodeNullable(
          _$AuthenticationFlowTypeEnumMap, json['authFlowType']),
      clientMetadata: (json['clientMetadata'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      validationData: (json['validationData'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
    );

Map<String, dynamic> _$CognitoSignInOptionsToJson(
    CognitoSignInOptions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'authFlowType', _$AuthenticationFlowTypeEnumMap[instance.authFlowType]);
  writeNotNull('clientMetadata', instance.clientMetadata);
  writeNotNull('validationData', instance.validationData);
  return val;
}

const _$AuthenticationFlowTypeEnumMap = {
  AuthenticationFlowType.userSrpAuth: 'USER_SRP_AUTH',
  AuthenticationFlowType.userPasswordAuth: 'USER_PASSWORD_AUTH',
  AuthenticationFlowType.customAuth: 'CUSTOM_AUTH',
};

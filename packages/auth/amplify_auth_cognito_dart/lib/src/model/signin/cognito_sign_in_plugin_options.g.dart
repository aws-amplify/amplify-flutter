// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cognito_sign_in_plugin_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CognitoSignInPluginOptions _$CognitoSignInPluginOptionsFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'CognitoSignInPluginOptions',
      json,
      ($checkedConvert) {
        final val = CognitoSignInPluginOptions(
          authFlowType: $checkedConvert('authFlowType',
              (v) => $enumDecodeNullable(_$AuthenticationFlowTypeEnumMap, v)),
          clientMetadata: $checkedConvert(
              'clientMetadata',
              (v) =>
                  (v as Map<String, dynamic>?)?.map(
                    (k, e) => MapEntry(k, e as String),
                  ) ??
                  const {}),
        );
        return val;
      },
    );

Map<String, dynamic> _$CognitoSignInPluginOptionsToJson(
    CognitoSignInPluginOptions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'authFlowType', _$AuthenticationFlowTypeEnumMap[instance.authFlowType]);
  val['clientMetadata'] = instance.clientMetadata;
  return val;
}

const _$AuthenticationFlowTypeEnumMap = {
  AuthenticationFlowType.userSrpAuth: 'USER_SRP_AUTH',
  AuthenticationFlowType.userPasswordAuth: 'USER_PASSWORD_AUTH',
  AuthenticationFlowType.customAuthWithSrp: 'CUSTOM_AUTH_WITH_SRP',
  AuthenticationFlowType.customAuthWithoutSrp: 'CUSTOM_AUTH_WITHOUT_SRP',
};

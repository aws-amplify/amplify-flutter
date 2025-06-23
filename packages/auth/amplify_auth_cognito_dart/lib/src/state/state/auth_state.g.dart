// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CredentialStoreData _$CredentialStoreDataFromJson(Map<String, dynamic> json) =>
    $checkedCreate('CredentialStoreData', json, ($checkedConvert) {
      final val = CredentialStoreData(
        identityId: $checkedConvert('identityId', (v) => v as String?),
        awsCredentials: $checkedConvert(
          'awsCredentials',
          (v) => v == null
              ? null
              : AWSCredentials.fromJson(v as Map<String, dynamic>),
        ),
        userPoolTokens: $checkedConvert(
          'userPoolTokens',
          (v) => v == null
              ? null
              : CognitoUserPoolTokens.fromJson(v as Map<String, dynamic>),
        ),
        signInDetails: $checkedConvert(
          'signInDetails',
          (v) => v == null
              ? null
              : CognitoSignInDetails.fromJson(v as Map<String, dynamic>),
        ),
      );
      return val;
    });

Map<String, dynamic> _$CredentialStoreDataToJson(
  CredentialStoreData instance,
) => <String, dynamic>{
  if (instance.identityId case final value?) 'identityId': value,
  if (instance.awsCredentials?.toJson() case final value?)
    'awsCredentials': value,
  if (instance.userPoolTokens?.toJson() case final value?)
    'userPoolTokens': value,
  if (instance.signInDetails?.toJson() case final value?)
    'signInDetails': value,
};

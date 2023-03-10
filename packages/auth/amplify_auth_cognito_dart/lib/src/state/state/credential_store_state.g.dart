// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credential_store_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CredentialStoreData _$CredentialStoreDataFromJson(Map<String, dynamic> json) =>
    CredentialStoreData(
      identityId: json['identityId'] as String?,
      awsCredentials: json['awsCredentials'] == null
          ? null
          : AWSCredentials.fromJson(
              json['awsCredentials'] as Map<String, dynamic>),
      userPoolTokens: json['userPoolTokens'] == null
          ? null
          : CognitoUserPoolTokens.fromJson(
              json['userPoolTokens'] as Map<String, dynamic>),
      signInDetails: json['signInDetails'] == null
          ? null
          : CognitoSignInDetails.fromJson(
              json['signInDetails'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CredentialStoreDataToJson(CredentialStoreData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('identityId', instance.identityId);
  writeNotNull('awsCredentials', instance.awsCredentials?.toJson());
  writeNotNull('userPoolTokens', instance.userPoolTokens?.toJson());
  writeNotNull('signInDetails', instance.signInDetails?.toJson());
  return val;
}

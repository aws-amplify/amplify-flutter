// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cognito_confirm_sign_in_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CognitoConfirmSignInOptions _$CognitoConfirmSignInOptionsFromJson(
        Map<String, dynamic> json) =>
    CognitoConfirmSignInOptions(
      clientMetadata: (json['clientMetadata'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      userAttributes: _userAttributesFromJson(json['userAttributes']),
    );

Map<String, dynamic> _$CognitoConfirmSignInOptionsToJson(
    CognitoConfirmSignInOptions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('clientMetadata', instance.clientMetadata);
  writeNotNull(
      'userAttributes', _userAttributesToJson(instance.userAttributes));
  return val;
}

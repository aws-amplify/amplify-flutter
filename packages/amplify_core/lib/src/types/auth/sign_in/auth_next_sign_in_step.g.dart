// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'auth_next_sign_in_step.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthNextSignInStep<Key>
    _$AuthNextSignInStepFromJson<Key extends AuthUserAttributeKey>(
  Map<String, dynamic> json,
  Key Function(Object? json) fromJsonKey,
) =>
        AuthNextSignInStep<Key>(
          additionalInfo:
              (json['additionalInfo'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ),
          codeDeliveryDetails: json['codeDeliveryDetails'] == null
              ? null
              : AuthCodeDeliveryDetails.fromJson(
                  json['codeDeliveryDetails'] as Map<String, dynamic>),
          signInStep: json['signInStep'] as String,
          missingAttributes: (json['missingAttributes'] as List<dynamic>?)
                  ?.map(fromJsonKey)
                  .toList() ??
              const [],
        );

Map<String, dynamic>
    _$AuthNextSignInStepToJson<Key extends AuthUserAttributeKey>(
  AuthNextSignInStep<Key> instance,
  Object? Function(Key value) toJsonKey,
) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('additionalInfo', instance.additionalInfo);
  writeNotNull('codeDeliveryDetails', instance.codeDeliveryDetails?.toJson());
  val['signInStep'] = instance.signInStep;
  val['missingAttributes'] = instance.missingAttributes.map(toJsonKey).toList();
  return val;
}

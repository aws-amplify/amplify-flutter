// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_next_sign_in_step.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthNextSignInStep<Key>
    _$AuthNextSignInStepFromJson<Key extends UserAttributeKey>(
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
          challengeParameters:
              (json['challengeParameters'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ),
          missingAttributes: (json['missingAttributes'] as List<dynamic>?)
                  ?.map(fromJsonKey)
                  .toList() ??
              const [],
        );

Map<String, dynamic> _$AuthNextSignInStepToJson<Key extends UserAttributeKey>(
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
  writeNotNull('challengeParameters', instance.challengeParameters);
  val['missingAttributes'] = instance.missingAttributes.map(toJsonKey).toList();
  return val;
}

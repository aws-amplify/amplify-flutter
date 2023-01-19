// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'auth_next_sign_in_step.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
  val['hashCode'] = instance.hashCode;
  val['signInStep'] = _$AuthSignInStepEnumMap[instance.signInStep]!;
  val['missingAttributes'] = instance.missingAttributes.map(toJsonKey).toList();
  val['props'] = instance.props;
  val['runtimeTypeName'] = instance.runtimeTypeName;
  return val;
}

const _$AuthSignInStepEnumMap = {
  AuthSignInStep.confirmSignInWithSmsMfaCode: 'confirmSignInWithSmsMfaCode',
  AuthSignInStep.confirmSignInWithNewPassword: 'confirmSignInWithNewPassword',
  AuthSignInStep.confirmSignInWithCustomChallenge:
      'confirmSignInWithCustomChallenge',
  AuthSignInStep.resetPassword: 'resetPassword',
  AuthSignInStep.confirmSignUp: 'confirmSignUp',
  AuthSignInStep.done: 'done',
};

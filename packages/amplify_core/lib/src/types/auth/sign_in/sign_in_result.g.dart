// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$SignInResultToJson<Key extends AuthUserAttributeKey>(
  SignInResult<Key> instance,
  Object? Function(Key value) toJsonKey,
) {
  final val = <String, dynamic>{
    'hashCode': instance.hashCode,
    'isSignedIn': instance.isSignedIn,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('nextStep', instance.nextStep?.toJson());
  val['props'] = instance.props;
  val['runtimeTypeName'] = instance.runtimeTypeName;
  return val;
}

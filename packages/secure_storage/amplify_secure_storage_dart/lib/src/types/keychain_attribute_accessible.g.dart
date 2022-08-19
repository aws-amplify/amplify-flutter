// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'keychain_attribute_accessible.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const KeychainAttributeAccessible _$accessibleWhenPasscodeSetThisDeviceOnly =
    const KeychainAttributeAccessible._(
        'accessibleWhenPasscodeSetThisDeviceOnly');
const KeychainAttributeAccessible _$accessibleWhenUnlockedThisDeviceOnly =
    const KeychainAttributeAccessible._('accessibleWhenUnlockedThisDeviceOnly');
const KeychainAttributeAccessible _$accessibleWhenUnlocked =
    const KeychainAttributeAccessible._('accessibleWhenUnlocked');
const KeychainAttributeAccessible _$accessibleAfterFirstUnlockThisDeviceOnly =
    const KeychainAttributeAccessible._(
        'accessibleAfterFirstUnlockThisDeviceOnly');
const KeychainAttributeAccessible _$accessibleAfterFirstUnlock =
    const KeychainAttributeAccessible._('accessibleAfterFirstUnlock');

KeychainAttributeAccessible _$KeychainAttributeAccessibleValueOf(String name) {
  switch (name) {
    case 'accessibleWhenPasscodeSetThisDeviceOnly':
      return _$accessibleWhenPasscodeSetThisDeviceOnly;
    case 'accessibleWhenUnlockedThisDeviceOnly':
      return _$accessibleWhenUnlockedThisDeviceOnly;
    case 'accessibleWhenUnlocked':
      return _$accessibleWhenUnlocked;
    case 'accessibleAfterFirstUnlockThisDeviceOnly':
      return _$accessibleAfterFirstUnlockThisDeviceOnly;
    case 'accessibleAfterFirstUnlock':
      return _$accessibleAfterFirstUnlock;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<KeychainAttributeAccessible>
    _$KeychainAttributeAccessibleValues = new BuiltSet<
        KeychainAttributeAccessible>(const <KeychainAttributeAccessible>[
  _$accessibleWhenPasscodeSetThisDeviceOnly,
  _$accessibleWhenUnlockedThisDeviceOnly,
  _$accessibleWhenUnlocked,
  _$accessibleAfterFirstUnlockThisDeviceOnly,
  _$accessibleAfterFirstUnlock,
]);

Serializer<KeychainAttributeAccessible>
    _$keychainAttributeAccessibleSerializer =
    new _$KeychainAttributeAccessibleSerializer();

class _$KeychainAttributeAccessibleSerializer
    implements PrimitiveSerializer<KeychainAttributeAccessible> {
  @override
  final Iterable<Type> types = const <Type>[KeychainAttributeAccessible];
  @override
  final String wireName = 'KeychainAttributeAccessible';

  @override
  Object serialize(Serializers serializers, KeychainAttributeAccessible object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  KeychainAttributeAccessible deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      KeychainAttributeAccessible.valueOf(serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

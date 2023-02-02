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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

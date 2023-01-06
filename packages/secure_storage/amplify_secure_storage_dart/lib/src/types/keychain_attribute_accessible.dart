// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'keychain_attribute_accessible.g.dart';

/// Represents the `kSecAttrAccessible` attribute in Keychain operations.
///
/// Reference: https://developer.apple.com/documentation/security/ksecattraccessible
class KeychainAttributeAccessible extends EnumClass {
  const KeychainAttributeAccessible._(super.name);

  /// The data in the keychain can only be accessed when the device is unlocked.
  ///
  /// Items with this attribute do not migrate to a new device.
  ///
  /// Reference: https://developer.apple.com/documentation/security/ksecattraccessiblewhenpasscodesetthisdeviceonly
  static const KeychainAttributeAccessible
      accessibleWhenPasscodeSetThisDeviceOnly =
      _$accessibleWhenPasscodeSetThisDeviceOnly;

  /// The data in the keychain item can be accessed only while the device is unlocked by the user.
  ///
  /// Items with this attribute do not migrate to a new device.
  ///
  /// Reference: https://developer.apple.com/documentation/security/ksecattraccessiblewhenunlockedthisdeviceonly
  static const KeychainAttributeAccessible
      accessibleWhenUnlockedThisDeviceOnly =
      _$accessibleWhenUnlockedThisDeviceOnly;

  /// The data in the keychain item can be accessed only while the device is unlocked by the user.
  ///
  /// Reference: https://developer.apple.com/documentation/security/ksecattraccessiblewhenunlocked
  static const KeychainAttributeAccessible accessibleWhenUnlocked =
      _$accessibleWhenUnlocked;

  /// The data in the keychain item cannot be accessed after a restart until the device has been unlocked once by the user.
  ///
  /// Items with this attribute do not migrate to a new device.
  ///
  /// Reference: https://developer.apple.com/documentation/security/ksecattraccessibleafterfirstunlockthisdeviceonly
  static const KeychainAttributeAccessible
      accessibleAfterFirstUnlockThisDeviceOnly =
      _$accessibleAfterFirstUnlockThisDeviceOnly;

  /// The data in the keychain item cannot be accessed after a restart until the device has been unlocked once by the user.
  ///
  /// Reference: https://developer.apple.com/documentation/security/ksecattraccessibleafterfirstunlock
  static const KeychainAttributeAccessible accessibleAfterFirstUnlock =
      _$accessibleAfterFirstUnlock;

  /// All values of [KeychainAttributeAccessible].
  static BuiltSet<KeychainAttributeAccessible> get values =>
      _$KeychainAttributeAccessibleValues;

  /// Gets the [KeychainAttributeAccessible] value corresponding to [name].
  static KeychainAttributeAccessible valueOf(String name) =>
      _$KeychainAttributeAccessibleValueOf(name);

  /// The [KeychainAttributeAccessible] serializer.
  static Serializer<KeychainAttributeAccessible> get serializer =>
      _$keychainAttributeAccessibleSerializer;
}

// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'keychain_attribute_accessible.g.dart';

/// Represents the `kSecAttrAccessible` attribute in Keychain operations.
///
/// Reference: https://developer.apple.com/documentation/security/ksecattraccessible
class KeychainAttributeAccessible extends EnumClass {
  // TODO(Jordan-Nelson): Remove when built_value supports super parameters.
  // ignore: use_super_parameters
  const KeychainAttributeAccessible._(String name) : super(name);

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

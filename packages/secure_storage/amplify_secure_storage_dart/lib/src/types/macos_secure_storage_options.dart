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

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'macos_secure_storage_options.g.dart';

/// {@template amplify_secure_storage_dart.macos_secure_storage_options}
/// Configuration options that are specific to MacOS.
/// {@endtemplate}
abstract class MacOSSecureStorageOptions
    implements
        Built<MacOSSecureStorageOptions, MacOSSecureStorageOptionsBuilder> {
  /// {@macro amplify_secure_storage_dart.macos_secure_storage_options}
  factory MacOSSecureStorageOptions({
    bool useDataProtection = true,
    String? accessGroup,
  }) {
    assert(
      useDataProtection || accessGroup == null,
      'useDataProtectionKeychain must be set to true when using an access '
      'group.',
    );
    return _$MacOSSecureStorageOptions._(
      useDataProtection: useDataProtection,
      accessGroup: accessGroup,
    );
  }

  const MacOSSecureStorageOptions._();

  /// Sets the `kSecUseDataProtectionKeychain` attribute to true for
  /// all Keychain operations.
  ///
  /// Reference: [kSecUseDataProtectionKeychain](https://developer.apple.com/documentation/security/ksecusedataprotectionkeychain?language=objc)
  ///
  /// Set this to true to enforce that Keychain items behave
  /// like iOS Keychain items.
  ///
  /// **Note:** This must be set to true when specifying an [accessGroup].
  ///
  /// **Note:** Setting this to true requires that the app is added to one
  /// or more Keychain Access Groups. See the section titled
  /// "Add Apps to One or More Keychain Access Groups" at the
  /// link below for more info.
  ///
  /// Reference: [Sharing Access to Keychain Items Among a Collection of Apps](https://developer.apple.com/documentation/security/keychain_services/keychain_items/sharing_access_to_keychain_items_among_a_collection_of_apps?language=objc)
  bool get useDataProtection;

  /// Sets the `kSecAttrAccessGroup` attribute for all Keychain operations.
  ///
  /// **Note:** [useDataProtection] must be set to true if a value is provided.
  ///
  /// Reference: [kSecAttrAccessGroup](https://developer.apple.com/documentation/security/ksecattraccessgroup?language=objc)
  String? get accessGroup;

  /// The [MacOSSecureStorageOptions] serializer.
  static Serializer<MacOSSecureStorageOptions> get serializer =>
      _$macOSSecureStorageOptionsSerializer;
}

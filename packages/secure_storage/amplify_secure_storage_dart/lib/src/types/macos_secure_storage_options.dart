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

import 'package:amplify_secure_storage_dart/src/types/keychain_attribute_accessible.dart';
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
  ///
  /// {@template amplify_secure_storage_dart.macos_secure_storage_options.useDataProtection}
  /// [useDataProtection] sets the [`kSecUseDataProtectionKeychain`](https://developer.apple.com/documentation/security/keychain_services/keychain_items/sharing_access_to_keychain_items_among_a_collection_of_apps)
  /// attribute for all Keychain operations. Set this to true to
  /// enforce that Keychain items behave like iOS Keychain items.
  /// {@endtemplate}
  ///
  /// {@template amplify_secure_storage_dart.macos_secure_storage_options.accessible}
  /// [accessible] sets the [kSecAttrAccessible](https://developer.apple.com/documentation/security/ksecattraccessible)
  /// attribute for all Keychain operations.
  /// {@endtemplate}
  ///
  /// {@template amplify_secure_storage_dart.macos_secure_storage_options.accessGroup}
  /// [accessGroup] sets the [kSecAttrAccessGroup](https://developer.apple.com/documentation/security/ksecattraccessgroup)
  /// attribute for all Keychain operations.
  /// {@endtemplate}
  ///
  /// **Note:** [useDataProtection] must be set to true when specifying an [accessGroup].
  ///
  /// **Note:** When [useDataProtection] is set to true, the app must be added to one
  /// or more Keychain Access Groups in Xcode. For more info, see the
  /// [Platform Setup docs](https://docs.amplify.aws/lib/project-setup/platform-setup/q/platform/flutter/).
  factory MacOSSecureStorageOptions({
    bool useDataProtection = true,
    KeychainAttributeAccessible accessible =
        KeychainAttributeAccessible.accessibleAfterFirstUnlockThisDeviceOnly,
    String? accessGroup,
  }) {
    assert(
      useDataProtection || accessGroup == null,
      'useDataProtectionKeychain must be set to true when using an access '
      'group.',
    );
    return _$MacOSSecureStorageOptions._(
      useDataProtection: useDataProtection,
      accessible: accessible,
      accessGroup: accessGroup,
    );
  }

  const MacOSSecureStorageOptions._();

  /// {@macro amplify_secure_storage_dart.macos_secure_storage_options.useDataProtection}
  bool get useDataProtection;

  /// {@macro amplify_secure_storage_dart.macos_secure_storage_options.accessGroup}
  String? get accessGroup;

  /// {@macro amplify_secure_storage_dart.macos_secure_storage_options.accessible}
  KeychainAttributeAccessible get accessible;

  /// The [MacOSSecureStorageOptions] serializer.
  static Serializer<MacOSSecureStorageOptions> get serializer =>
      _$macOSSecureStorageOptionsSerializer;
}

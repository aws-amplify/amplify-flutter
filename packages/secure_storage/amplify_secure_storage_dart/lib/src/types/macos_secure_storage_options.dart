// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_secure_storage_dart/src/types/keychain_attribute_accessible.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart';

part 'macos_secure_storage_options.g.dart';

/// {@template amplify_secure_storage_dart.macos_secure_storage_options}
/// Configuration options that are specific to MacOS.
/// {@endtemplate}
abstract class MacOSSecureStorageOptions
    implements
        Built<MacOSSecureStorageOptions, MacOSSecureStorageOptionsBuilder> {
  /// {@macro amplify_secure_storage_dart.macos_secure_storage_options}
  ///
  /// #### [useDataProtection]
  /// {@template amplify_secure_storage_dart.macos_secure_storage_options.useDataProtection}
  /// Sets the [`kSecUseDataProtectionKeychain`](https://developer.apple.com/documentation/security/keychain_services/keychain_items/sharing_access_to_keychain_items_among_a_collection_of_apps)
  /// attribute for all Keychain operations.
  ///
  /// This value defaults to true to enforce that
  /// MacOS Keychain items behave like iOS Keychain items.
  /// This prevents other applications from accessing
  /// or modifying items created by the current application.
  ///
  /// **Warning:** This should not be disabled in production applications.
  /// This value is only exposed for testing. Disabling it lowers
  /// the security of your application and can cause secure storage
  /// to have unexpected behaviors.
  /// {@endtemplate}
  ///
  /// #### [accessible]
  /// {@template amplify_secure_storage_dart.macos_secure_storage_options.accessible}
  /// Sets the [kSecAttrAccessible](https://developer.apple.com/documentation/security/ksecattraccessible)
  /// attribute for all Keychain operations.
  /// {@endtemplate}
  ///
  /// #### [accessGroup]
  /// {@template amplify_secure_storage_dart.macos_secure_storage_options.accessGroup}
  /// Sets the [kSecAttrAccessGroup](https://developer.apple.com/documentation/security/ksecattraccessgroup)
  /// attribute for all Keychain operations.
  /// {@endtemplate}
  ///
  /// **Note:** [useDataProtection] must be set to true when specifying an [accessGroup].
  ///
  /// **Note:** Unless [useDataProtection] is set to false, the app must be added to one
  /// or more Keychain Access Groups in Xcode. For more info, see the
  /// [Platform Setup docs](https://docs.amplify.aws/lib/project-setup/platform-setup/q/platform/flutter/).
  factory MacOSSecureStorageOptions({
    @visibleForTesting bool useDataProtection = true,
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

  /// A constructor for creating an [MacOSSecureStorageOptions] with all null
  /// values.
  ///
  /// This will result in the default values being used.
  @internal
  factory MacOSSecureStorageOptions.empty() {
    return _$MacOSSecureStorageOptions._(
      useDataProtection: false,
      accessible: null,
      accessGroup: null,
    );
  }

  const MacOSSecureStorageOptions._();

  /// {@macro amplify_secure_storage_dart.macos_secure_storage_options.useDataProtection}
  bool get useDataProtection;

  /// {@macro amplify_secure_storage_dart.macos_secure_storage_options.accessGroup}
  String? get accessGroup;

  /// {@macro amplify_secure_storage_dart.macos_secure_storage_options.accessible}
  KeychainAttributeAccessible? get accessible;

  /// The [MacOSSecureStorageOptions] serializer.
  static Serializer<MacOSSecureStorageOptions> get serializer =>
      _$macOSSecureStorageOptionsSerializer;
}

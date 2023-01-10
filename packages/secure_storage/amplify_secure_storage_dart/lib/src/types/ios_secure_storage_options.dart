// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_secure_storage_dart/src/types/keychain_attribute_accessible.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart';

part 'ios_secure_storage_options.g.dart';

/// {@template amplify_secure_storage_dart.ios_secure_storage_options}
/// Configuration options that are specific to iOS.
/// {@endtemplate}
abstract class IOSSecureStorageOptions
    implements Built<IOSSecureStorageOptions, IOSSecureStorageOptionsBuilder> {
  /// {@macro amplify_secure_storage_dart.ios_secure_storage_options}
  ///
  /// #### [accessible]
  /// {@macro amplify_secure_storage_dart.macos_secure_storage_options.accessible}
  ///
  /// #### [accessGroup]
  /// {@macro amplify_secure_storage_dart.macos_secure_storage_options.accessGroup}
  factory IOSSecureStorageOptions({
    KeychainAttributeAccessible accessible =
        KeychainAttributeAccessible.accessibleAfterFirstUnlockThisDeviceOnly,
    String? accessGroup,
  }) {
    return _$IOSSecureStorageOptions._(
      accessible: accessible,
      accessGroup: accessGroup,
    );
  }

  /// A constructor for creating an [IOSSecureStorageOptions] with all null
  /// values.
  ///
  /// This will result in the default values being used.
  @internal
  factory IOSSecureStorageOptions.empty() {
    return _$IOSSecureStorageOptions._(
      accessible: null,
      accessGroup: null,
    );
  }

  const IOSSecureStorageOptions._();

  /// {@macro amplify_secure_storage_dart.macos_secure_storage_options.accessGroup}
  String? get accessGroup;

  /// {@macro amplify_secure_storage_dart.macos_secure_storage_options.accessible}
  KeychainAttributeAccessible? get accessible;

  /// The [IOSSecureStorageOptions] serializer.
  static Serializer<IOSSecureStorageOptions> get serializer =>
      _$iOSSecureStorageOptionsSerializer;
}

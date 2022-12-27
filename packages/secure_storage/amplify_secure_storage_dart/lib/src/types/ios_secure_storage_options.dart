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

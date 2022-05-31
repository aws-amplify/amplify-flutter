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

import 'package:amplify_secure_storage_dart/src/types/ios_secure_storage_options.dart';
import 'package:amplify_secure_storage_dart/src/types/linux_secure_storage_options.dart';
import 'package:amplify_secure_storage_dart/src/types/macos_secure_storage_options.dart';
import 'package:amplify_secure_storage_dart/src/types/web_secure_storage_options.dart';
import 'package:amplify_secure_storage_dart/src/types/windows_secure_storage_options.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'amplify_secure_storage_config.g.dart';

/// {@template amplify_secure_storage_dart.amplify_secure_storage_config}
/// Configuration options for Amplify Secure Storage.
/// {@endtemplate}
abstract class AmplifySecureStorageConfig
    implements
        Built<AmplifySecureStorageConfig, AmplifySecureStorageConfigBuilder> {
  /// {@macro amplify_secure_storage_dart.amplify_secure_storage_config}
  factory AmplifySecureStorageConfig({
    required String scope,
    WebSecureStorageOptions? webOptions,
    WindowsSecureStorageOptions? windowsOptions,
    LinuxSecureStorageOptions? linuxOptions,
    MacOSSecureStorageOptions? macOSOptions,
    IOSSecureStorageOptions? iOSOptions,
  }) {
    return _$AmplifySecureStorageConfig._(
      scope: scope,
      webOptions: webOptions ?? WebSecureStorageOptions(inMemory: true),
      windowsOptions: windowsOptions ?? WindowsSecureStorageOptions(),
      linuxOptions: linuxOptions ?? LinuxSecureStorageOptions(),
      macOSOptions: macOSOptions ?? MacOSSecureStorageOptions(),
      iOSOptions: iOSOptions ?? IOSSecureStorageOptions(),
    );
  }

  const AmplifySecureStorageConfig._();

  /// The default namespace for keys-value pairs.
  ///
  /// Unless platform specific options are provided, this will be
  /// used in the following way on each platform:
  /// - iOS & macOS: the Keychain service name
  /// - Android: the EncryptedSharedPreferences file name
  /// - Windows: the prefix for the target name of each secret
  /// - Linux: the SecretSchema schema name
  /// - Web: the Indexed DB Database name
  String get defaultNamespace => 'com.amplify.$scope';

  /// The scope of the secrets to be stored.
  ///
  /// Example: "auth"
  ///
  /// This value will be used to create a namespace for the secret.
  ///
  /// See also: [defaultNamespace]
  String get scope;

  /// Options that are specific to the Web platform.
  WebSecureStorageOptions get webOptions;

  /// Options that are specific to the Windows platform.
  WindowsSecureStorageOptions get windowsOptions;

  /// Options that are specific to the Linux platform.
  LinuxSecureStorageOptions get linuxOptions;

  /// Options that are specific to the MacOS platform.
  MacOSSecureStorageOptions get macOSOptions;

  /// Options that are specific to the iOS platform.
  IOSSecureStorageOptions get iOSOptions;

  /// The [AmplifySecureStorageConfig] serializer.
  static Serializer<AmplifySecureStorageConfig> get serializer =>
      _$amplifySecureStorageConfigSerializer;
}

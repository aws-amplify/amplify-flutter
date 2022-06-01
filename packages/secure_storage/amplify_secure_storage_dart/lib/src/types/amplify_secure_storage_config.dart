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

/// {@template amplify_secure_storage_dart.amplify_secure_storage_config}
/// Configuration options for Amplify Secure Storage.
/// {@endtemplate}
class AmplifySecureStorageConfig {
  /// {@macro amplify_secure_storage_dart.amplify_secure_storage_config}
  const AmplifySecureStorageConfig({
    required this.scope,
    this.webOptions = WebSecureStorageOptions.defaultOptions,
    this.windowsOptions = WindowsSecureStorageOptions.defaultOptions,
    this.linuxOptions = LinuxSecureStorageOptions.defaultOptions,
    this.macOSOptions = MacOSSecureStorageOptions.defaultOptions,
    this.iOSOptions = IOSSecureStorageOptions.defaultOptions,
  });

  /// The default namespace for keys-value pairs.
  ///
  /// Unless platform specific configs are provided, this will be
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
  /// This value will be used with [namespace] and the key to form a unique
  /// identifier for the secret. Saving two values under unique scopes will
  /// prevent collisions even if the keys are the same.
  final String scope;

  /// Options that are specific to the Web platform.
  final WebSecureStorageOptions webOptions;

  /// Options that are specific to the Windows platform.
  final WindowsSecureStorageOptions windowsOptions;

  /// Options that are specific to the Linux platform.
  final LinuxSecureStorageOptions linuxOptions;

  /// Options that are specific to the MacOS platform.
  final MacOSSecureStorageOptions macOSOptions;

  /// Options that are specific to the iOS platform.
  final IOSSecureStorageOptions iOSOptions;
}

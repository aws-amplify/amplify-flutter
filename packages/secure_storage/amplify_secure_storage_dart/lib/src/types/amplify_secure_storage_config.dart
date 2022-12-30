// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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
      webOptions: webOptions ?? WebSecureStorageOptions(),
      windowsOptions: windowsOptions ?? WindowsSecureStorageOptions(),
      linuxOptions: linuxOptions ?? LinuxSecureStorageOptions(),
      macOSOptions: macOSOptions ?? MacOSSecureStorageOptions(),
      iOSOptions: iOSOptions ?? IOSSecureStorageOptions(),
    );
  }

  /// Configuration options for overriding the default namespace.
  factory AmplifySecureStorageConfig.byNamespace({
    required String namespace,
  }) {
    return _$AmplifySecureStorageConfig._(
      namespace: namespace,
      webOptions: WebSecureStorageOptions(),
      windowsOptions: WindowsSecureStorageOptions(),
      linuxOptions: LinuxSecureStorageOptions(),
      macOSOptions: MacOSSecureStorageOptions(),
      iOSOptions: IOSSecureStorageOptions(),
    );
  }

  const AmplifySecureStorageConfig._();

  /// The default namespace for keys-value pairs.
  ///
  /// Unless platform specific options are provided, this will be
  /// used in the following way on each platform:
  /// - iOS & macOS: the Keychain service name
  /// - Android: the EncryptedSharedPreferences file name
  /// - Windows: the prefix for file name used to store encrypted data
  /// - Linux: prefix for the SecretSchema schema name
  /// - Web: the Indexed DB Database name
  String get defaultNamespace => namespace ?? 'com.amplify.$scope';

  String? get namespace;

  /// The scope of the secrets to be stored.
  ///
  /// Example: "auth"
  ///
  /// This value will be used to create a namespace for the secret.
  ///
  /// See also: [defaultNamespace]
  String? get scope;

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

  AmplifySecureStorageConfig copyWith({
    String? scope,
    WebSecureStorageOptions? webOptions,
    WindowsSecureStorageOptions? windowsOptions,
    LinuxSecureStorageOptions? linuxOptions,
    MacOSSecureStorageOptions? macOSOptions,
    IOSSecureStorageOptions? iOSOptions,
  }) {
    return _$AmplifySecureStorageConfig._(
      scope: scope ?? this.scope,
      webOptions: webOptions ?? this.webOptions,
      windowsOptions: windowsOptions ?? this.windowsOptions,
      linuxOptions: linuxOptions ?? this.linuxOptions,
      macOSOptions: macOSOptions ?? this.macOSOptions,
      iOSOptions: iOSOptions ?? this.iOSOptions,
    );
  }

  /// The [AmplifySecureStorageConfig] serializer.
  static Serializer<AmplifySecureStorageConfig> get serializer =>
      _$amplifySecureStorageConfigSerializer;
}

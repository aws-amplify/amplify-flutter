// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:aws_common/src/config/aws_config_stub.dart'
    if (dart.library.io) 'package:aws_common/src/config/aws_config_io.dart';

export 'package:aws_common/src/config/aws_config_stub.dart'
    if (dart.library.io) 'package:aws_common/src/config/aws_config_io.dart';

T _identity<T extends Object>(String o) => o as T;

/// A configuration value for use with AWS packages.
enum AWSConfigValue<T extends Object> {
  /// The `AWS_MAX_ATTEMPTS` value specifies how many HTTP requests an SDK
  /// should make for a single SDK operation invocation before giving up.
  ///
  /// Defaults to `3`.
  maxAttempts<int>._(
    'AWS_MAX_ATTEMPTS',
    String.fromEnvironment('AWS_MAX_ATTEMPTS'),
    3,
    parse: int.parse,
  ),

  /// The default region to use for AWS operations.
  ///
  /// Defaults to `us-east-1`.
  region._(
    'AWS_REGION',
    String.fromEnvironment('AWS_REGION'),
    'us-east-1',
  ),

  /// The location (filepath) of the AWS configuration file.
  ///
  /// Defaults to `~/.aws/config`.
  configFile._(
    'AWS_CONFIG_FILE',
    String.fromEnvironment('AWS_CONFIG_FILE'),
    '~/.aws/config',
  ),

  /// The location (filepath) of the AWS shared credentials file.
  ///
  /// Defaults to `~/.aws/credentials`.
  sharedCredentialsFile._(
    'AWS_SHARED_CREDENTIALS_FILE',
    String.fromEnvironment('AWS_SHARED_CREDENTIALS_FILE'),
    '~/.aws/credentials',
  );

  const AWSConfigValue._(
    this.key,
    this._fromEnv,
    this.defaultValue, {
    T Function(String)? parse,
  }) : _parse = parse ?? _identity;

  /// The environment variable key.
  final String key;

  /// The default value of the configuration parameter.
  final T defaultValue;

  final String? _fromEnv;
  final T Function(String) _parse;
  String? get _fromPlatformEnv => lookupPlatformEnv(key);

  /// The value of the configuration parameter. Lookup order:
  /// 1. [Zone] overrides
  /// 2. Dart environment
  /// 3. Platform environment
  /// 4. Default value
  T get value {
    final fromOverride = Zone.current[this] as Object?;
    if (fromOverride is T) {
      return fromOverride;
    } else if (fromOverride is String) {
      return _parse(fromOverride);
    }
    final fromEnv = _fromEnv;
    if (fromEnv != null && fromEnv.isNotEmpty) {
      return _parse(fromEnv);
    }
    final fromPlatformEnv = _fromPlatformEnv;
    if (fromPlatformEnv != null && fromPlatformEnv.isNotEmpty) {
      return _parse(fromPlatformEnv);
    }
    return defaultValue;
  }
}

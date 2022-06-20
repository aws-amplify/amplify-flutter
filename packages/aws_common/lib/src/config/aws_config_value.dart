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

import 'dart:async';

import 'package:meta/meta.dart';

import 'aws_config_stub.dart' if (dart.library.io) 'aws_config_io.dart';

T _identity<T extends Object>(String o) => o as T;

/// A configuration value for use with AWS packages.
@immutable
class AWSConfigValue<T extends Object> {
  const AWSConfigValue._(
    this.key,
    // TODO(dnys1): Add back when https://github.com/dart-lang/sdk/issues/49245 is resolved.
    // this._fromEnv,
    this.defaultValue, {
    T Function(String)? parse,
  }) : _parse = parse ?? _identity;

  /// The `AWS_MAX_ATTEMPTS` value specifies how many HTTP requests an SDK
  /// should make for a single SDK operation invocation before giving up.
  static const AWSConfigValue<int> maxAttempts = AWSConfigValue<int>._(
    'AWS_MAX_ATTEMPTS',
    // TODO(dnys1): Add back when https://github.com/dart-lang/sdk/issues/49245 is resolved.
    // String.fromEnvironment('AWS_MAX_ATTEMPTS'),
    3,
    parse: int.parse,
  );

  /// The environment variable key.
  final String key;

  /// The default value of the configuration parameter.
  final T defaultValue;

  // TODO(dnys1): Add back when https://github.com/dart-lang/sdk/issues/49245 is resolved.
  // final String? _fromEnv;
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
    // TODO(dnys1): Add back when https://github.com/dart-lang/sdk/issues/49245 is resolved.
    // final fromEnv = _fromEnv;
    // if (fromEnv != null && fromEnv.isNotEmpty) {
    //   return _parse(fromEnv);
    // }
    final fromPlatformEnv = _fromPlatformEnv;
    if (fromPlatformEnv != null && fromPlatformEnv.isNotEmpty) {
      return _parse(fromPlatformEnv);
    }
    return defaultValue;
  }
}

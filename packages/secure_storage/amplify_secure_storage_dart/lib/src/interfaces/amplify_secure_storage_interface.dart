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

import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:aws_common/aws_common.dart';

/// {@template amplify_secure_storage_dart.amplify_secure_storage_interface}
/// An extension of [SecureStorageInterface] which adds Amplify specific options.
/// {@endtemplate}
abstract class AmplifySecureStorageInterface extends SecureStorageInterface
    with AWSDebuggable, AWSLoggerMixin {
  /// {@macro amplify_secure_storage_dart.amplify_secure_storage_interface}
  const AmplifySecureStorageInterface({
    required this.config,
    this.applicationDirectory,
  }) : super();

  /// Configuration options for Secure Storage.
  final AmplifySecureStorageConfig config;

  /// Path to a directory where the application should
  /// place application support files.
  ///
  /// Used to store encrypted data on Windows. If no value
  /// is provided, data will be stored in memory on Windows.
  final String? applicationDirectory;

  /// {@template amplify_secure_storage_dart.amplify_secure_storage_interface.remove_all}
  /// Removes all key-value pairs for the current scope.
  ///
  /// Only available on Linux. Will throw [UnimplementedError]
  /// on other platforms.
  /// {@endtemplate}
  FutureOr<void> removeAll() => throw UnimplementedError(
        'removeAll is not implemented for this platform',
      );

  @override
  String get runtimeTypeName => 'SecureStorage';
}

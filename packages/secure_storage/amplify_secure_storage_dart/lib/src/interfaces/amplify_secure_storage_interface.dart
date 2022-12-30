// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:aws_common/aws_common.dart';
import 'package:meta/meta.dart';

/// {@template amplify_secure_storage_dart.amplify_secure_storage_interface}
/// An extension of [SecureStorageInterface] which adds Amplify specific options.
/// {@endtemplate}
abstract class AmplifySecureStorageInterface extends SecureStorageInterface
    with AWSDebuggable, AWSLoggerMixin {
  /// {@macro amplify_secure_storage_dart.amplify_secure_storage_interface}
  const AmplifySecureStorageInterface({required this.config}) : super();

  /// Configuration options for Secure Storage.
  final AmplifySecureStorageConfig config;

  /// {@template amplify_secure_storage_dart.amplify_secure_storage_interface.remove_all}
  /// Removes all key-value pairs for the current scope.
  ///
  /// Only available on Linux. Will throw [UnimplementedError]
  /// on other platforms.
  /// {@endtemplate}
  @internal
  FutureOr<void> removeAll() => throw UnimplementedError(
        'removeAll is not implemented for this platform',
      );

  @override
  String get runtimeTypeName => 'SecureStorage';
}

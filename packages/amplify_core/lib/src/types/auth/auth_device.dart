// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';
import 'package:meta/meta.dart';

/// {@template amplify_auth_cognito.auth_device}
/// Common interface for devices tracked by an authentication provider.
/// {@endtemplate}
@immutable
abstract class AuthDevice with AWSSerializable<Map<String, Object?>> {
  /// {@macro amplify_auth_cognito.auth_device}
  const AuthDevice();

  /// Device unique identifier.
  String get id;

  /// Device name.
  String? get name;

  /// Converts the instance to a JSON map.
  @override
  Map<String, Object?> toJson();

  @override
  String toString() {
    return 'AuthDevice{id=$id, name=$name}';
  }
}

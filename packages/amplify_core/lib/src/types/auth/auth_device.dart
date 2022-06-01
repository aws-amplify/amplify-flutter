/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'package:aws_common/aws_common.dart';
import 'package:meta/meta.dart';

/// {@template amplify_auth_cognito.auth_device}
/// Common interface for devices tracked by an authentication provider.
/// {@endtemplate}
@immutable
abstract class AuthDevice with AWSSerializable {
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

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

/// @{template auth_device}
/// Common interface for devices tracked by an authentication provider.
/// @{end_template}
abstract class AuthDevice {
  /// {@macro auth_device}
  const AuthDevice();

  /// Device unique identifier.
  String get id;

  /// Device name.
  String? get name;

  /// Converts the instance to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'AuthDevice{id=$id, name=$name}';
  }
}

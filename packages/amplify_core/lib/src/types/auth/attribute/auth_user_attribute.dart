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

import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

/// {@template amplify_core.auth.auth_user_attribute}
/// The key and value for a user attribute.
/// {@endtemplate}
@immutable
class AuthUserAttribute with AWSEquatable<AuthUserAttribute>, AWSDebuggable {
  /// {@macro amplify_core.auth.auth_user_attribute}
  const AuthUserAttribute({
    required this.userAttributeKey,
    required this.value,
  });

  final UserAttributeKey userAttributeKey;
  final String value;

  @override
  List<Object> get props => [userAttributeKey, value];

  Map<String, Object?> serializeAsMap() {
    final Map<String, Object?> pendingRequest = <String, dynamic>{};
    pendingRequest['userAttributeKey'] = userAttributeKey.key;
    pendingRequest['value'] = value;
    return pendingRequest;
  }

  @override
  String get runtimeTypeName => 'AuthUserAttribute';
}

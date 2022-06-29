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

/// {@template amplify_core.user_attribute_key}
/// A user attribute identifier.
/// {@endtemplate}
@immutable
abstract class UserAttributeKey
    with AWSSerializable<String>
    implements Comparable<UserAttributeKey> {
  /// {@macro amplify_core.user_attribute_key}
  const UserAttributeKey();

  /// The JSON key for this attribute.
  String get key;

  @override
  String toJson() => key;

  @override
  int compareTo(UserAttributeKey other) => key.compareTo(other.key);

  @override
  String toString() => key;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is UserAttributeKey && key == other.key;

  @override
  int get hashCode => key.hashCode;
}

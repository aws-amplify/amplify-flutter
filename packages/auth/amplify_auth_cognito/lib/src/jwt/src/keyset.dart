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

import 'package:aws_common/aws_common.dart';
import 'package:meta/meta.dart';

import 'key.dart';
import 'prefs.dart';

part 'keyset.g.dart';

/// {@template amplify_auth_cognito.json_web_key_set}
/// A JSON Web Key Set (JWK Set) is a JSON object that represents a set of
/// [JsonWebKey]s.
/// {@endtemplate}
@immutable
@jwtSerializable
class JsonWebKeySet with AWSEquatable<JsonWebKeySet>, AWSSerializable {
  /// {@macro amplify_auth_cognito.json_web_key_set}
  const JsonWebKeySet(this.keys);

  /// {@macro amplify_auth_cognito.json_web_key_set}
  factory JsonWebKeySet.fromJson(Map<String, Object?> json) {
    return JsonWebKeySet(
      (json['keys'] as List)
          .cast<Map<Object?, Object?>>()
          .map((e) {
            try {
              return JsonWebKey.fromJson(e.cast());
            } on Exception {
              return null;
            }
          })
          .whereType<JsonWebKey>()
          .toList(),
    );
  }

  /// The value of the `keys` parameter is an array of JWK values.
  ///
  /// By default, the order of the JWK values within the array does not imply
  /// an order of preference among them, although applications of JWK Sets
  /// can choose to assign a meaning to the order for their purposes, if
  /// desired.
  ///
  /// [Reference](https://datatracker.ietf.org/doc/html/rfc7517#section-5.1)
  final List<JsonWebKey> keys;

  @override
  List<Object?> get props => [keys];

  @override
  Map<String, Object?> toJson() => _$JsonWebKeySetToJson(this);
}

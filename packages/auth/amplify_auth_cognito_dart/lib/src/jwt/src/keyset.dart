// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/src/jwt/src/key.dart';
import 'package:amplify_auth_cognito_dart/src/jwt/src/prefs.dart';
import 'package:aws_common/aws_common.dart';
import 'package:meta/meta.dart';

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

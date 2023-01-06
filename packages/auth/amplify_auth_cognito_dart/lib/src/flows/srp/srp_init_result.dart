// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'srp_init_result.g.dart';

/// {@template amplify_auth_cognito.srp_init_result}
/// The result of performing the SRP initialization routine.
/// {@endtemplate}
abstract class SrpInitResult
    implements Built<SrpInitResult, SrpInitResultBuilder> {
  /// {@macro amplify_auth_cognito.srp_init_result}
  factory SrpInitResult([void Function(SrpInitResultBuilder) updates]) =
      _$SrpInitResult;
  SrpInitResult._();

  /// A secure, random number.
  BigInt get privateA;

  /// A = g^a, identifies self.
  BigInt get publicA;

  /// The [SrpInitResult] serializer.
  static Serializer<SrpInitResult> get serializer => _$srpInitResultSerializer;
}

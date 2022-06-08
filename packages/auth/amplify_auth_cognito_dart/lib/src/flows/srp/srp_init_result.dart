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

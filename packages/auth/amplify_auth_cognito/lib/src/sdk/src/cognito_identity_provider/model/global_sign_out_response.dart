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

// Generated with smithy-dart 0.5.1. DO NOT MODIFY.

library amplify_auth_cognito.cognito_identity_provider.model.global_sign_out_response;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'global_sign_out_response.g.dart';

/// The response to the request to sign out all devices.
abstract class GlobalSignOutResponse
    with _i1.AWSEquatable<GlobalSignOutResponse>
    implements
        Built<GlobalSignOutResponse, GlobalSignOutResponseBuilder>,
        _i2.EmptyPayload {
  /// The response to the request to sign out all devices.
  factory GlobalSignOutResponse() {
    return _$GlobalSignOutResponse._();
  }

  /// The response to the request to sign out all devices.
  factory GlobalSignOutResponse.build(
          [void Function(GlobalSignOutResponseBuilder) updates]) =
      _$GlobalSignOutResponse;

  const GlobalSignOutResponse._();

  /// Constructs a [GlobalSignOutResponse] from a [payload] and [response].
  factory GlobalSignOutResponse.fromResponse(
          GlobalSignOutResponse payload, _i1.AWSBaseHttpResponse response) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    _GlobalSignOutResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GlobalSignOutResponseBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GlobalSignOutResponse');
    return helper.toString();
  }
}

class _GlobalSignOutResponseAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<GlobalSignOutResponse> {
  const _GlobalSignOutResponseAwsJson11Serializer()
      : super('GlobalSignOutResponse');

  @override
  Iterable<Type> get types =>
      const [GlobalSignOutResponse, _$GlobalSignOutResponse];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  GlobalSignOutResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return GlobalSignOutResponseBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
          {FullType specifiedType = FullType.unspecified}) =>
      const <Object?>[];
}

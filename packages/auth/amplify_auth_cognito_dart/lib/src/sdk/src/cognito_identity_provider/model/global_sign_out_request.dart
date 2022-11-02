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

// Generated with smithy-dart 0.2.0. DO NOT MODIFY.

library amplify_auth_cognito_dart.cognito_identity_provider.model.global_sign_out_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'global_sign_out_request.g.dart';

/// Represents the request to sign out all devices.
abstract class GlobalSignOutRequest
    with
        _i1.HttpInput<GlobalSignOutRequest>,
        _i2.AWSEquatable<GlobalSignOutRequest>
    implements Built<GlobalSignOutRequest, GlobalSignOutRequestBuilder> {
  /// Represents the request to sign out all devices.
  factory GlobalSignOutRequest({required String accessToken}) {
    return _$GlobalSignOutRequest._(accessToken: accessToken);
  }

  /// Represents the request to sign out all devices.
  factory GlobalSignOutRequest.build(
          [void Function(GlobalSignOutRequestBuilder) updates]) =
      _$GlobalSignOutRequest;

  const GlobalSignOutRequest._();

  factory GlobalSignOutRequest.fromRequest(
    GlobalSignOutRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    GlobalSignOutRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GlobalSignOutRequestBuilder b) {}

  /// A valid access token that Amazon Cognito issued to the user who you want to sign out.
  String get accessToken;
  @override
  GlobalSignOutRequest getPayload() => this;
  @override
  List<Object?> get props => [accessToken];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GlobalSignOutRequest');
    helper.add(
      'accessToken',
      '***SENSITIVE***',
    );
    return helper.toString();
  }
}

class GlobalSignOutRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<GlobalSignOutRequest> {
  const GlobalSignOutRequestAwsJson11Serializer()
      : super('GlobalSignOutRequest');

  @override
  Iterable<Type> get types => const [
        GlobalSignOutRequest,
        _$GlobalSignOutRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  GlobalSignOutRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GlobalSignOutRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'AccessToken':
          result.accessToken = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as GlobalSignOutRequest);
    final result = <Object?>[
      'AccessToken',
      serializers.serialize(
        payload.accessToken,
        specifiedType: const FullType(String),
      ),
    ];
    return result;
  }
}

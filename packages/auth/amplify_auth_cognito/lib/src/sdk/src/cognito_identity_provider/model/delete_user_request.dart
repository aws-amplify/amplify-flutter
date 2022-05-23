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

library amplify_auth_cognito.cognito_identity_provider.model.delete_user_request;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_user_request.g.dart';

/// Represents the request to delete a user.
abstract class DeleteUserRequest
    with _i1.HttpInput<DeleteUserRequest>, _i2.AWSEquatable<DeleteUserRequest>
    implements Built<DeleteUserRequest, DeleteUserRequestBuilder> {
  /// Represents the request to delete a user.
  factory DeleteUserRequest({required String accessToken}) {
    return _$DeleteUserRequest._(accessToken: accessToken);
  }

  /// Represents the request to delete a user.
  factory DeleteUserRequest.build(
      [void Function(DeleteUserRequestBuilder) updates]) = _$DeleteUserRequest;

  const DeleteUserRequest._();

  factory DeleteUserRequest.fromRequest(
          DeleteUserRequest payload, _i2.AWSBaseHttpRequest request,
          {Map<String, String> labels = const {}}) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    _DeleteUserRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteUserRequestBuilder b) {}

  /// The access token from a request to delete a user.
  String get accessToken;
  @override
  DeleteUserRequest getPayload() => this;
  @override
  List<Object?> get props => [accessToken];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteUserRequest');
    helper.add('accessToken', '***SENSITIVE***');
    return helper.toString();
  }
}

class _DeleteUserRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<DeleteUserRequest> {
  const _DeleteUserRequestAwsJson11Serializer() : super('DeleteUserRequest');

  @override
  Iterable<Type> get types => const [DeleteUserRequest, _$DeleteUserRequest];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  DeleteUserRequest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = DeleteUserRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'AccessToken':
          result.accessToken = (serializers.deserialize(value!,
              specifiedType: const FullType(String)) as String);
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as DeleteUserRequest);
    final result = <Object?>[
      'AccessToken',
      serializers.serialize(payload.accessToken,
          specifiedType: const FullType(String))
    ];
    return result;
  }
}

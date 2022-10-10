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

// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library smoke_test.s3.model.object_already_inactive_tier_error; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'object_already_inactive_tier_error.g.dart';

/// This action is not allowed against this storage tier.
abstract class ObjectAlreadyInactiveTierError
    with
        _i1.AWSEquatable<ObjectAlreadyInactiveTierError>
    implements
        Built<ObjectAlreadyInactiveTierError,
            ObjectAlreadyInactiveTierErrorBuilder>,
        _i2.EmptyPayload,
        _i2.SmithyHttpException {
  /// This action is not allowed against this storage tier.
  factory ObjectAlreadyInactiveTierError() {
    return _$ObjectAlreadyInactiveTierError._();
  }

  /// This action is not allowed against this storage tier.
  factory ObjectAlreadyInactiveTierError.build(
          [void Function(ObjectAlreadyInactiveTierErrorBuilder) updates]) =
      _$ObjectAlreadyInactiveTierError;

  const ObjectAlreadyInactiveTierError._();

  /// Constructs a [ObjectAlreadyInactiveTierError] from a [payload] and [response].
  factory ObjectAlreadyInactiveTierError.fromResponse(
    ObjectAlreadyInactiveTierError payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    ObjectAlreadyInactiveTierErrorRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ObjectAlreadyInactiveTierErrorBuilder b) {}
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.s3',
        shape: 'ObjectAlreadyInActiveTierError',
      );
  @override
  String? get message => null;
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  @BuiltValueField(compare: false)
  int? get statusCode;
  @override
  @BuiltValueField(compare: false)
  Map<String, String>? get headers;
  @override
  Exception? get underlyingException => null;
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ObjectAlreadyInactiveTierError');
    return helper.toString();
  }
}

class ObjectAlreadyInactiveTierErrorRestXmlSerializer
    extends _i2.StructuredSmithySerializer<ObjectAlreadyInactiveTierError> {
  const ObjectAlreadyInactiveTierErrorRestXmlSerializer()
      : super('ObjectAlreadyInactiveTierError');

  @override
  Iterable<Type> get types => const [
        ObjectAlreadyInactiveTierError,
        _$ObjectAlreadyInactiveTierError,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  ObjectAlreadyInactiveTierError deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return ObjectAlreadyInactiveTierErrorBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      const _i2.XmlElementName(
        'ObjectAlreadyInactiveTierError',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    return result;
  }
}

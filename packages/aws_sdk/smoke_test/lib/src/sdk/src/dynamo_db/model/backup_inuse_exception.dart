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

library smoke_test.dynamo_db.model.backup_inuse_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'backup_inuse_exception.g.dart';

/// There is another ongoing conflicting backup control plane operation on the table. The backup is either being created, deleted or restored to a table.
abstract class BackupInuseException
    with _i1.AWSEquatable<BackupInuseException>
    implements
        Built<BackupInuseException, BackupInuseExceptionBuilder>,
        _i2.SmithyHttpException {
  /// There is another ongoing conflicting backup control plane operation on the table. The backup is either being created, deleted or restored to a table.
  factory BackupInuseException({String? message}) {
    return _$BackupInuseException._(message: message);
  }

  /// There is another ongoing conflicting backup control plane operation on the table. The backup is either being created, deleted or restored to a table.
  factory BackupInuseException.build(
          [void Function(BackupInuseExceptionBuilder) updates]) =
      _$BackupInuseException;

  const BackupInuseException._();

  /// Constructs a [BackupInuseException] from a [payload] and [response].
  factory BackupInuseException.fromResponse(
    BackupInuseException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    BackupInuseExceptionAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(BackupInuseExceptionBuilder b) {}
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.dynamodb',
        shape: 'BackupInUseException',
      );
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
  List<Object?> get props => [message];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('BackupInuseException');
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class BackupInuseExceptionAwsJson10Serializer
    extends _i2.StructuredSmithySerializer<BackupInuseException> {
  const BackupInuseExceptionAwsJson10Serializer()
      : super('BackupInuseException');

  @override
  Iterable<Type> get types => const [
        BackupInuseException,
        _$BackupInuseException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  BackupInuseException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BackupInuseExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'message':
          if (value != null) {
            result.message = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
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
    final payload = (object as BackupInuseException);
    final result = <Object?>[];
    if (payload.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(
          payload.message!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}

// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

library aws_kinesis_datastreams.kinesis.model.kms_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'kms_exception.g.dart';

/// A KMS exception.
abstract class KmsException
    with _i1.AWSEquatable<KmsException>
    implements
        Built<KmsException, KmsExceptionBuilder>,
        _i2.SmithyHttpException {
  /// A KMS exception.
  factory KmsException({String? message}) {
    return _$KmsException._(message: message);
  }

  /// A KMS exception.
  factory KmsException.build([
    void Function(KmsExceptionBuilder) updates,
  ]) = _$KmsException;

  const KmsException._();

  /// Constructs a [KmsException] from a [payload] and [response].
  factory KmsException.fromResponse(
    KmsException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<KmsException>> serializers = [
    KmsExceptionAwsJson11Serializer(),
  ];

  @override
  String? get message;

  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.kinesis',
        shape: 'KMSException',
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
    final helper = newBuiltValueToStringHelper('KmsException')
      ..add('message', message);
    return helper.toString();
  }
}

class KmsExceptionAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<KmsException> {
  const KmsExceptionAwsJson11Serializer() : super('KmsException');

  @override
  Iterable<Type> get types => const [
        KmsException,
        _$KmsException,
      ];

  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
      ];

  @override
  KmsException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KmsExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'message':
          result.message = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }
    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    KmsException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[];
    if (object.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(
          object.message,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}

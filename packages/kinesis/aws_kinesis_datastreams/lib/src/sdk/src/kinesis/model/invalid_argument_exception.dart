// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

library aws_kinesis_datastreams.kinesis.model.invalid_argument_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'invalid_argument_exception.g.dart';

/// A specified parameter exceeds its restrictions, is not supported, or can't be used.
abstract class InvalidArgumentException
    with _i1.AWSEquatable<InvalidArgumentException>
    implements
        Built<InvalidArgumentException, InvalidArgumentExceptionBuilder>,
        _i2.SmithyHttpException {
  /// A specified parameter exceeds its restrictions, is not supported, or can't be used.
  factory InvalidArgumentException({String? message}) {
    return _$InvalidArgumentException._(message: message);
  }

  /// A specified parameter exceeds its restrictions, is not supported, or can't be used.
  factory InvalidArgumentException.build([
    void Function(InvalidArgumentExceptionBuilder) updates,
  ]) = _$InvalidArgumentException;

  const InvalidArgumentException._();

  /// Constructs a [InvalidArgumentException] from a [payload] and [response].
  factory InvalidArgumentException.fromResponse(
    InvalidArgumentException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<InvalidArgumentException>>
      serializers = [InvalidArgumentExceptionAwsJson11Serializer()];

  @override
  String? get message;

  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.kinesis',
        shape: 'InvalidArgumentException',
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
    final helper = newBuiltValueToStringHelper('InvalidArgumentException')
      ..add('message', message);
    return helper.toString();
  }
}

class InvalidArgumentExceptionAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<InvalidArgumentException> {
  const InvalidArgumentExceptionAwsJson11Serializer()
      : super('InvalidArgumentException');

  @override
  Iterable<Type> get types => const [
        InvalidArgumentException,
        _$InvalidArgumentException,
      ];

  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
      ];

  @override
  InvalidArgumentException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InvalidArgumentExceptionBuilder();
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
    InvalidArgumentException object, {
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

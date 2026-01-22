// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

library aws_kinesis_datastreams.kinesis.model.provisioned_throughput_exceeded_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'provisioned_throughput_exceeded_exception.g.dart';

/// The request rate for the stream is too high, or the requested data is too
/// large for the available throughput.
abstract class ProvisionedThroughputExceededException
    with _i1.AWSEquatable<ProvisionedThroughputExceededException>
    implements
        Built<ProvisionedThroughputExceededException,
            ProvisionedThroughputExceededExceptionBuilder>,
        _i2.SmithyHttpException {
  /// The request rate for the stream is too high, or the requested data is too
  /// large for the available throughput.
  factory ProvisionedThroughputExceededException({String? message}) {
    return _$ProvisionedThroughputExceededException._(message: message);
  }

  /// The request rate for the stream is too high, or the requested data is too
  /// large for the available throughput.
  factory ProvisionedThroughputExceededException.build([
    void Function(ProvisionedThroughputExceededExceptionBuilder) updates,
  ]) = _$ProvisionedThroughputExceededException;

  const ProvisionedThroughputExceededException._();

  /// Constructs a [ProvisionedThroughputExceededException] from a [payload] and [response].
  factory ProvisionedThroughputExceededException.fromResponse(
    ProvisionedThroughputExceededException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<ProvisionedThroughputExceededException>>
      serializers = [ProvisionedThroughputExceededExceptionAwsJson11Serializer()];

  @override
  String? get message;

  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.kinesis',
        shape: 'ProvisionedThroughputExceededException',
      );

  @override
  _i2.RetryConfig? get retryConfig => const _i2.RetryConfig(isThrottlingError: true);

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
    final helper =
        newBuiltValueToStringHelper('ProvisionedThroughputExceededException')
          ..add('message', message);
    return helper.toString();
  }
}

class ProvisionedThroughputExceededExceptionAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<ProvisionedThroughputExceededException> {
  const ProvisionedThroughputExceededExceptionAwsJson11Serializer()
      : super('ProvisionedThroughputExceededException');

  @override
  Iterable<Type> get types => const [
        ProvisionedThroughputExceededException,
        _$ProvisionedThroughputExceededException,
      ];

  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
      ];

  @override
  ProvisionedThroughputExceededException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProvisionedThroughputExceededExceptionBuilder();
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
    ProvisionedThroughputExceededException object, {
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

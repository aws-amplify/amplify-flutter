// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.operation_in_progress_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'operation_in_progress_exception.g.dart';

/// Another operation is currently in progress for this stack set. Only one operation can be performed for a stack set at a given time.
abstract class OperationInProgressException
    with
        _i1.AWSEquatable<OperationInProgressException>
    implements
        Built<OperationInProgressException,
            OperationInProgressExceptionBuilder>,
        _i2.SmithyHttpException {
  /// Another operation is currently in progress for this stack set. Only one operation can be performed for a stack set at a given time.
  factory OperationInProgressException({String? message}) {
    return _$OperationInProgressException._(message: message);
  }

  /// Another operation is currently in progress for this stack set. Only one operation can be performed for a stack set at a given time.
  factory OperationInProgressException.build(
          [void Function(OperationInProgressExceptionBuilder) updates]) =
      _$OperationInProgressException;

  const OperationInProgressException._();

  /// Constructs a [OperationInProgressException] from a [payload] and [response].
  factory OperationInProgressException.fromResponse(
    OperationInProgressException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<OperationInProgressException>>
      serializers = [OperationInProgressExceptionAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(OperationInProgressExceptionBuilder b) {}
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.cloudformation',
        shape: 'OperationInProgressException',
      );
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  @BuiltValueField(compare: false)
  int get statusCode => 409;
  @override
  @BuiltValueField(compare: false)
  Map<String, String>? get headers;
  @override
  Exception? get underlyingException => null;
  @override
  List<Object?> get props => [message];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('OperationInProgressException')
      ..add(
        'message',
        message,
      );
    return helper.toString();
  }
}

class OperationInProgressExceptionAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<OperationInProgressException> {
  const OperationInProgressExceptionAwsQuerySerializer()
      : super('OperationInProgressException');

  @override
  Iterable<Type> get types => const [
        OperationInProgressException,
        _$OperationInProgressException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  OperationInProgressException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OperationInProgressExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Message':
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
    OperationInProgressException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'OperationInProgressExceptionResponse',
        _i2.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final OperationInProgressException(:message) = object;
    if (message != null) {
      result$
        ..add(const _i2.XmlElementName('Message'))
        ..add(serializers.serialize(
          message,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}

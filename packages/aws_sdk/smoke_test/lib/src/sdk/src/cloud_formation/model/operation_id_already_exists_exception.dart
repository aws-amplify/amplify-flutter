// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.operation_id_already_exists_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'operation_id_already_exists_exception.g.dart';

/// The specified operation ID already exists.
abstract class OperationIdAlreadyExistsException
    with
        _i1.AWSEquatable<OperationIdAlreadyExistsException>
    implements
        Built<OperationIdAlreadyExistsException,
            OperationIdAlreadyExistsExceptionBuilder>,
        _i2.SmithyHttpException {
  /// The specified operation ID already exists.
  factory OperationIdAlreadyExistsException({String? message}) {
    return _$OperationIdAlreadyExistsException._(message: message);
  }

  /// The specified operation ID already exists.
  factory OperationIdAlreadyExistsException.build(
          [void Function(OperationIdAlreadyExistsExceptionBuilder) updates]) =
      _$OperationIdAlreadyExistsException;

  const OperationIdAlreadyExistsException._();

  /// Constructs a [OperationIdAlreadyExistsException] from a [payload] and [response].
  factory OperationIdAlreadyExistsException.fromResponse(
    OperationIdAlreadyExistsException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<OperationIdAlreadyExistsException>>
      serializers = [OperationIdAlreadyExistsExceptionAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(OperationIdAlreadyExistsExceptionBuilder b) {}
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.cloudformation',
        shape: 'OperationIdAlreadyExistsException',
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
    final helper =
        newBuiltValueToStringHelper('OperationIdAlreadyExistsException')
          ..add(
            'message',
            message,
          );
    return helper.toString();
  }
}

class OperationIdAlreadyExistsExceptionAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<OperationIdAlreadyExistsException> {
  const OperationIdAlreadyExistsExceptionAwsQuerySerializer()
      : super('OperationIdAlreadyExistsException');

  @override
  Iterable<Type> get types => const [
        OperationIdAlreadyExistsException,
        _$OperationIdAlreadyExistsException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  OperationIdAlreadyExistsException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OperationIdAlreadyExistsExceptionBuilder();
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
    OperationIdAlreadyExistsException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'OperationIdAlreadyExistsExceptionResponse',
        _i2.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final OperationIdAlreadyExistsException(:message) = object;
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

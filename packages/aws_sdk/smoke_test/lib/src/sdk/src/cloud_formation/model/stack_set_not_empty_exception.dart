// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.cloud_formation.model.stack_set_not_empty_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'stack_set_not_empty_exception.g.dart';

/// You can't yet delete this stack set, because it still contains one or more stack instances. Delete all stack instances from the stack set before deleting the stack set.
abstract class StackSetNotEmptyException
    with _i1.AWSEquatable<StackSetNotEmptyException>
    implements
        Built<StackSetNotEmptyException, StackSetNotEmptyExceptionBuilder>,
        _i2.SmithyHttpException {
  /// You can't yet delete this stack set, because it still contains one or more stack instances. Delete all stack instances from the stack set before deleting the stack set.
  factory StackSetNotEmptyException({String? message}) {
    return _$StackSetNotEmptyException._(message: message);
  }

  /// You can't yet delete this stack set, because it still contains one or more stack instances. Delete all stack instances from the stack set before deleting the stack set.
  factory StackSetNotEmptyException.build(
          [void Function(StackSetNotEmptyExceptionBuilder) updates]) =
      _$StackSetNotEmptyException;

  const StackSetNotEmptyException._();

  /// Constructs a [StackSetNotEmptyException] from a [payload] and [response].
  factory StackSetNotEmptyException.fromResponse(
    StackSetNotEmptyException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    StackSetNotEmptyExceptionAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StackSetNotEmptyExceptionBuilder b) {}
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.cloudformation',
        shape: 'StackSetNotEmptyException',
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
    final helper = newBuiltValueToStringHelper('StackSetNotEmptyException');
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class StackSetNotEmptyExceptionAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<StackSetNotEmptyException> {
  const StackSetNotEmptyExceptionAwsQuerySerializer()
      : super('StackSetNotEmptyException');

  @override
  Iterable<Type> get types => const [
        StackSetNotEmptyException,
        _$StackSetNotEmptyException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  StackSetNotEmptyException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StackSetNotEmptyExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Message':
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
    final payload = (object as StackSetNotEmptyException);
    final result = <Object?>[
      const _i2.XmlElementName(
        'StackSetNotEmptyExceptionResponse',
        _i2.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    if (payload.message != null) {
      result
        ..add(const _i2.XmlElementName('Message'))
        ..add(serializers.serialize(
          payload.message!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}

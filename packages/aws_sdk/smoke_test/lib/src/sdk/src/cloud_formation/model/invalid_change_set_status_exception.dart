// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.invalid_change_set_status_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'invalid_change_set_status_exception.g.dart';

/// The specified change set can't be used to update the stack. For example, the change set status might be `CREATE\_IN\_PROGRESS`, or the stack status might be `UPDATE\_IN\_PROGRESS`.
abstract class InvalidChangeSetStatusException
    with
        _i1.AWSEquatable<InvalidChangeSetStatusException>
    implements
        Built<InvalidChangeSetStatusException,
            InvalidChangeSetStatusExceptionBuilder>,
        _i2.SmithyHttpException {
  /// The specified change set can't be used to update the stack. For example, the change set status might be `CREATE\_IN\_PROGRESS`, or the stack status might be `UPDATE\_IN\_PROGRESS`.
  factory InvalidChangeSetStatusException({String? message}) {
    return _$InvalidChangeSetStatusException._(message: message);
  }

  /// The specified change set can't be used to update the stack. For example, the change set status might be `CREATE\_IN\_PROGRESS`, or the stack status might be `UPDATE\_IN\_PROGRESS`.
  factory InvalidChangeSetStatusException.build(
          [void Function(InvalidChangeSetStatusExceptionBuilder) updates]) =
      _$InvalidChangeSetStatusException;

  const InvalidChangeSetStatusException._();

  /// Constructs a [InvalidChangeSetStatusException] from a [payload] and [response].
  factory InvalidChangeSetStatusException.fromResponse(
    InvalidChangeSetStatusException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<InvalidChangeSetStatusException>>
      serializers = [InvalidChangeSetStatusExceptionAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InvalidChangeSetStatusExceptionBuilder b) {}
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.cloudformation',
        shape: 'InvalidChangeSetStatusException',
      );
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  @BuiltValueField(compare: false)
  int get statusCode => 400;
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
        newBuiltValueToStringHelper('InvalidChangeSetStatusException')
          ..add(
            'message',
            message,
          );
    return helper.toString();
  }
}

class InvalidChangeSetStatusExceptionAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<InvalidChangeSetStatusException> {
  const InvalidChangeSetStatusExceptionAwsQuerySerializer()
      : super('InvalidChangeSetStatusException');

  @override
  Iterable<Type> get types => const [
        InvalidChangeSetStatusException,
        _$InvalidChangeSetStatusException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  InvalidChangeSetStatusException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InvalidChangeSetStatusExceptionBuilder();
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
    InvalidChangeSetStatusException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'InvalidChangeSetStatusExceptionResponse',
        _i2.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final InvalidChangeSetStatusException(:message) = object;
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

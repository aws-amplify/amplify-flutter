// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.operation_status_check_failed_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'operation_status_check_failed_exception.g.dart';

/// Error reserved for use by the [CloudFormation CLI](https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html). CloudFormation doesn't return this error to users.
abstract class OperationStatusCheckFailedException
    with
        _i1.AWSEquatable<OperationStatusCheckFailedException>
    implements
        Built<OperationStatusCheckFailedException,
            OperationStatusCheckFailedExceptionBuilder>,
        _i2.SmithyHttpException {
  /// Error reserved for use by the [CloudFormation CLI](https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html). CloudFormation doesn't return this error to users.
  factory OperationStatusCheckFailedException({String? message}) {
    return _$OperationStatusCheckFailedException._(message: message);
  }

  /// Error reserved for use by the [CloudFormation CLI](https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html). CloudFormation doesn't return this error to users.
  factory OperationStatusCheckFailedException.build(
          [void Function(OperationStatusCheckFailedExceptionBuilder) updates]) =
      _$OperationStatusCheckFailedException;

  const OperationStatusCheckFailedException._();

  /// Constructs a [OperationStatusCheckFailedException] from a [payload] and [response].
  factory OperationStatusCheckFailedException.fromResponse(
    OperationStatusCheckFailedException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<OperationStatusCheckFailedException>>
      serializers = [OperationStatusCheckFailedExceptionAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(OperationStatusCheckFailedExceptionBuilder b) {}
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.cloudformation',
        shape: 'OperationStatusCheckFailedException',
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
        newBuiltValueToStringHelper('OperationStatusCheckFailedException')
          ..add(
            'message',
            message,
          );
    return helper.toString();
  }
}

class OperationStatusCheckFailedExceptionAwsQuerySerializer extends _i2
    .StructuredSmithySerializer<OperationStatusCheckFailedException> {
  const OperationStatusCheckFailedExceptionAwsQuerySerializer()
      : super('OperationStatusCheckFailedException');

  @override
  Iterable<Type> get types => const [
        OperationStatusCheckFailedException,
        _$OperationStatusCheckFailedException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  OperationStatusCheckFailedException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OperationStatusCheckFailedExceptionBuilder();
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
    OperationStatusCheckFailedException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'OperationStatusCheckFailedExceptionResponse',
        _i2.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final OperationStatusCheckFailedException(:message) = object;
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

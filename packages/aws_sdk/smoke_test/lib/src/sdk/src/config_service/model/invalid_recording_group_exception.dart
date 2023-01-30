// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.invalid_recording_group_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'invalid_recording_group_exception.g.dart';

/// Config throws an exception if the recording group does not contain a valid list of resource types. Invalid values might also be incorrectly formatted.
abstract class InvalidRecordingGroupException
    with
        _i1.AWSEquatable<InvalidRecordingGroupException>
    implements
        Built<InvalidRecordingGroupException,
            InvalidRecordingGroupExceptionBuilder>,
        _i2.SmithyHttpException {
  /// Config throws an exception if the recording group does not contain a valid list of resource types. Invalid values might also be incorrectly formatted.
  factory InvalidRecordingGroupException({String? message}) {
    return _$InvalidRecordingGroupException._(message: message);
  }

  /// Config throws an exception if the recording group does not contain a valid list of resource types. Invalid values might also be incorrectly formatted.
  factory InvalidRecordingGroupException.build(
          [void Function(InvalidRecordingGroupExceptionBuilder) updates]) =
      _$InvalidRecordingGroupException;

  const InvalidRecordingGroupException._();

  /// Constructs a [InvalidRecordingGroupException] from a [payload] and [response].
  factory InvalidRecordingGroupException.fromResponse(
    InvalidRecordingGroupException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    InvalidRecordingGroupExceptionAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InvalidRecordingGroupExceptionBuilder b) {}

  /// Error executing the command
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.configservice',
        shape: 'InvalidRecordingGroupException',
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
    final helper =
        newBuiltValueToStringHelper('InvalidRecordingGroupException');
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class InvalidRecordingGroupExceptionAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<InvalidRecordingGroupException> {
  const InvalidRecordingGroupExceptionAwsJson11Serializer()
      : super('InvalidRecordingGroupException');

  @override
  Iterable<Type> get types => const [
        InvalidRecordingGroupException,
        _$InvalidRecordingGroupException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  InvalidRecordingGroupException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InvalidRecordingGroupExceptionBuilder();
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
    final payload = (object as InvalidRecordingGroupException);
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

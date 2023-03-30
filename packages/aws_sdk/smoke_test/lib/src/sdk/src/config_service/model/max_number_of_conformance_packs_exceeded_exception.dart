// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.max_number_of_conformance_packs_exceeded_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'max_number_of_conformance_packs_exceeded_exception.g.dart';

/// You have reached the limit (6) of the number of conformance packs in an account (6 conformance pack with 25 Config rules per pack).
abstract class MaxNumberOfConformancePacksExceededException
    with
        _i1.AWSEquatable<MaxNumberOfConformancePacksExceededException>
    implements
        Built<MaxNumberOfConformancePacksExceededException,
            MaxNumberOfConformancePacksExceededExceptionBuilder>,
        _i2.SmithyHttpException {
  /// You have reached the limit (6) of the number of conformance packs in an account (6 conformance pack with 25 Config rules per pack).
  factory MaxNumberOfConformancePacksExceededException({String? message}) {
    return _$MaxNumberOfConformancePacksExceededException._(message: message);
  }

  /// You have reached the limit (6) of the number of conformance packs in an account (6 conformance pack with 25 Config rules per pack).
  factory MaxNumberOfConformancePacksExceededException.build(
      [void Function(MaxNumberOfConformancePacksExceededExceptionBuilder)
          updates]) = _$MaxNumberOfConformancePacksExceededException;

  const MaxNumberOfConformancePacksExceededException._();

  /// Constructs a [MaxNumberOfConformancePacksExceededException] from a [payload] and [response].
  factory MaxNumberOfConformancePacksExceededException.fromResponse(
    MaxNumberOfConformancePacksExceededException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    MaxNumberOfConformancePacksExceededExceptionAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MaxNumberOfConformancePacksExceededExceptionBuilder b) {}

  /// Error executing the command
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.configservice',
        shape: 'MaxNumberOfConformancePacksExceededException',
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
    final helper = newBuiltValueToStringHelper(
        'MaxNumberOfConformancePacksExceededException');
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class MaxNumberOfConformancePacksExceededExceptionAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<
        MaxNumberOfConformancePacksExceededException> {
  const MaxNumberOfConformancePacksExceededExceptionAwsJson11Serializer()
      : super('MaxNumberOfConformancePacksExceededException');

  @override
  Iterable<Type> get types => const [
        MaxNumberOfConformancePacksExceededException,
        _$MaxNumberOfConformancePacksExceededException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  MaxNumberOfConformancePacksExceededException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MaxNumberOfConformancePacksExceededExceptionBuilder();
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
    final payload = (object as MaxNumberOfConformancePacksExceededException);
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

// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.config_service.model.no_such_conformance_pack_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'no_such_conformance_pack_exception.g.dart';

/// You specified one or more conformance packs that do not exist.
abstract class NoSuchConformancePackException
    with
        _i1.AWSEquatable<NoSuchConformancePackException>
    implements
        Built<NoSuchConformancePackException,
            NoSuchConformancePackExceptionBuilder>,
        _i2.SmithyHttpException {
  /// You specified one or more conformance packs that do not exist.
  factory NoSuchConformancePackException({String? message}) {
    return _$NoSuchConformancePackException._(message: message);
  }

  /// You specified one or more conformance packs that do not exist.
  factory NoSuchConformancePackException.build(
          [void Function(NoSuchConformancePackExceptionBuilder) updates]) =
      _$NoSuchConformancePackException;

  const NoSuchConformancePackException._();

  /// Constructs a [NoSuchConformancePackException] from a [payload] and [response].
  factory NoSuchConformancePackException.fromResponse(
    NoSuchConformancePackException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    NoSuchConformancePackExceptionAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NoSuchConformancePackExceptionBuilder b) {}

  /// Error executing the command
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.configservice',
        shape: 'NoSuchConformancePackException',
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
        newBuiltValueToStringHelper('NoSuchConformancePackException');
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class NoSuchConformancePackExceptionAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<NoSuchConformancePackException> {
  const NoSuchConformancePackExceptionAwsJson11Serializer()
      : super('NoSuchConformancePackException');

  @override
  Iterable<Type> get types => const [
        NoSuchConformancePackException,
        _$NoSuchConformancePackException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  NoSuchConformancePackException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NoSuchConformancePackExceptionBuilder();
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
    final payload = (object as NoSuchConformancePackException);
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

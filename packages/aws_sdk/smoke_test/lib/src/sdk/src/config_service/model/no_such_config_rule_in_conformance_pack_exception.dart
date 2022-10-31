// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.config_service.model.no_such_config_rule_in_conformance_pack_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'no_such_config_rule_in_conformance_pack_exception.g.dart';

/// Config rule that you passed in the filter does not exist.
abstract class NoSuchConfigRuleInConformancePackException
    with
        _i1.AWSEquatable<NoSuchConfigRuleInConformancePackException>
    implements
        Built<NoSuchConfigRuleInConformancePackException,
            NoSuchConfigRuleInConformancePackExceptionBuilder>,
        _i2.SmithyHttpException {
  /// Config rule that you passed in the filter does not exist.
  factory NoSuchConfigRuleInConformancePackException({String? message}) {
    return _$NoSuchConfigRuleInConformancePackException._(message: message);
  }

  /// Config rule that you passed in the filter does not exist.
  factory NoSuchConfigRuleInConformancePackException.build(
      [void Function(NoSuchConfigRuleInConformancePackExceptionBuilder)
          updates]) = _$NoSuchConfigRuleInConformancePackException;

  const NoSuchConfigRuleInConformancePackException._();

  /// Constructs a [NoSuchConfigRuleInConformancePackException] from a [payload] and [response].
  factory NoSuchConfigRuleInConformancePackException.fromResponse(
    NoSuchConfigRuleInConformancePackException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    NoSuchConfigRuleInConformancePackExceptionAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NoSuchConfigRuleInConformancePackExceptionBuilder b) {}

  /// Error executing the command
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.configservice',
        shape: 'NoSuchConfigRuleInConformancePackException',
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
        'NoSuchConfigRuleInConformancePackException');
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class NoSuchConfigRuleInConformancePackExceptionAwsJson11Serializer extends _i2
    .StructuredSmithySerializer<NoSuchConfigRuleInConformancePackException> {
  const NoSuchConfigRuleInConformancePackExceptionAwsJson11Serializer()
      : super('NoSuchConfigRuleInConformancePackException');

  @override
  Iterable<Type> get types => const [
        NoSuchConfigRuleInConformancePackException,
        _$NoSuchConfigRuleInConformancePackException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  NoSuchConfigRuleInConformancePackException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NoSuchConfigRuleInConformancePackExceptionBuilder();
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
    final payload = (object as NoSuchConfigRuleInConformancePackException);
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

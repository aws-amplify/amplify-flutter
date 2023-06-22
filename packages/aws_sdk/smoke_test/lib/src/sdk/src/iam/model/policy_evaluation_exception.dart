// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.policy_evaluation_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'policy_evaluation_exception.g.dart';

/// The request failed because a provided policy could not be successfully evaluated. An additional detailed message indicates the source of the failure.
abstract class PolicyEvaluationException
    with _i1.AWSEquatable<PolicyEvaluationException>
    implements
        Built<PolicyEvaluationException, PolicyEvaluationExceptionBuilder>,
        _i2.SmithyHttpException {
  /// The request failed because a provided policy could not be successfully evaluated. An additional detailed message indicates the source of the failure.
  factory PolicyEvaluationException({String? message}) {
    return _$PolicyEvaluationException._(message: message);
  }

  /// The request failed because a provided policy could not be successfully evaluated. An additional detailed message indicates the source of the failure.
  factory PolicyEvaluationException.build(
          [void Function(PolicyEvaluationExceptionBuilder) updates]) =
      _$PolicyEvaluationException;

  const PolicyEvaluationException._();

  /// Constructs a [PolicyEvaluationException] from a [payload] and [response].
  factory PolicyEvaluationException.fromResponse(
    PolicyEvaluationException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<PolicyEvaluationException>>
      serializers = [PolicyEvaluationExceptionAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PolicyEvaluationExceptionBuilder b) {}
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.iam',
        shape: 'PolicyEvaluationException',
      );
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  @BuiltValueField(compare: false)
  int get statusCode => 500;
  @override
  @BuiltValueField(compare: false)
  Map<String, String>? get headers;
  @override
  Exception? get underlyingException => null;
  @override
  List<Object?> get props => [message];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PolicyEvaluationException')
      ..add(
        'message',
        message,
      );
    return helper.toString();
  }
}

class PolicyEvaluationExceptionAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<PolicyEvaluationException> {
  const PolicyEvaluationExceptionAwsQuerySerializer()
      : super('PolicyEvaluationException');

  @override
  Iterable<Type> get types => const [
        PolicyEvaluationException,
        _$PolicyEvaluationException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  PolicyEvaluationException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PolicyEvaluationExceptionBuilder();
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
    PolicyEvaluationException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'PolicyEvaluationExceptionResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final PolicyEvaluationException(:message) = object;
    if (message != null) {
      result$
        ..add(const _i2.XmlElementName('message'))
        ..add(serializers.serialize(
          message,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}

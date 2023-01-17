// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.max_number_of_config_rules_exceeded_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'max_number_of_config_rules_exceeded_exception.g.dart';

/// Failed to add the Config rule because the account already contains the maximum number of 150 rules. Consider deleting any deactivated rules before you add new rules.
abstract class MaxNumberOfConfigRulesExceededException
    with
        _i1.AWSEquatable<MaxNumberOfConfigRulesExceededException>
    implements
        Built<MaxNumberOfConfigRulesExceededException,
            MaxNumberOfConfigRulesExceededExceptionBuilder>,
        _i2.SmithyHttpException {
  /// Failed to add the Config rule because the account already contains the maximum number of 150 rules. Consider deleting any deactivated rules before you add new rules.
  factory MaxNumberOfConfigRulesExceededException({String? message}) {
    return _$MaxNumberOfConfigRulesExceededException._(message: message);
  }

  /// Failed to add the Config rule because the account already contains the maximum number of 150 rules. Consider deleting any deactivated rules before you add new rules.
  factory MaxNumberOfConfigRulesExceededException.build(
      [void Function(MaxNumberOfConfigRulesExceededExceptionBuilder)
          updates]) = _$MaxNumberOfConfigRulesExceededException;

  const MaxNumberOfConfigRulesExceededException._();

  /// Constructs a [MaxNumberOfConfigRulesExceededException] from a [payload] and [response].
  factory MaxNumberOfConfigRulesExceededException.fromResponse(
    MaxNumberOfConfigRulesExceededException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    MaxNumberOfConfigRulesExceededExceptionAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MaxNumberOfConfigRulesExceededExceptionBuilder b) {}

  /// Error executing the command
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.configservice',
        shape: 'MaxNumberOfConfigRulesExceededException',
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
        newBuiltValueToStringHelper('MaxNumberOfConfigRulesExceededException');
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class MaxNumberOfConfigRulesExceededExceptionAwsJson11Serializer extends _i2
    .StructuredSmithySerializer<MaxNumberOfConfigRulesExceededException> {
  const MaxNumberOfConfigRulesExceededExceptionAwsJson11Serializer()
      : super('MaxNumberOfConfigRulesExceededException');

  @override
  Iterable<Type> get types => const [
        MaxNumberOfConfigRulesExceededException,
        _$MaxNumberOfConfigRulesExceededException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  MaxNumberOfConfigRulesExceededException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MaxNumberOfConfigRulesExceededExceptionBuilder();
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
    final payload = (object as MaxNumberOfConfigRulesExceededException);
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

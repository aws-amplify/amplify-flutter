// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.config_service.model.max_number_of_organization_config_rules_exceeded_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'max_number_of_organization_config_rules_exceeded_exception.g.dart';

/// You have reached the limit of the number of organization Config rules you can create. For more information, see see [**Service Limits**](https://docs.aws.amazon.com/config/latest/developerguide/configlimits.html) in the _Config Developer Guide_.
abstract class MaxNumberOfOrganizationConfigRulesExceededException
    with
        _i1.AWSEquatable<MaxNumberOfOrganizationConfigRulesExceededException>
    implements
        Built<MaxNumberOfOrganizationConfigRulesExceededException,
            MaxNumberOfOrganizationConfigRulesExceededExceptionBuilder>,
        _i2.SmithyHttpException {
  /// You have reached the limit of the number of organization Config rules you can create. For more information, see see [**Service Limits**](https://docs.aws.amazon.com/config/latest/developerguide/configlimits.html) in the _Config Developer Guide_.
  factory MaxNumberOfOrganizationConfigRulesExceededException(
      {String? message}) {
    return _$MaxNumberOfOrganizationConfigRulesExceededException._(
        message: message);
  }

  /// You have reached the limit of the number of organization Config rules you can create. For more information, see see [**Service Limits**](https://docs.aws.amazon.com/config/latest/developerguide/configlimits.html) in the _Config Developer Guide_.
  factory MaxNumberOfOrganizationConfigRulesExceededException.build(
      [void Function(MaxNumberOfOrganizationConfigRulesExceededExceptionBuilder)
          updates]) = _$MaxNumberOfOrganizationConfigRulesExceededException;

  const MaxNumberOfOrganizationConfigRulesExceededException._();

  /// Constructs a [MaxNumberOfOrganizationConfigRulesExceededException] from a [payload] and [response].
  factory MaxNumberOfOrganizationConfigRulesExceededException.fromResponse(
    MaxNumberOfOrganizationConfigRulesExceededException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<
      _i2.SmithySerializer<
          MaxNumberOfOrganizationConfigRulesExceededException>> serializers = [
    MaxNumberOfOrganizationConfigRulesExceededExceptionAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      MaxNumberOfOrganizationConfigRulesExceededExceptionBuilder b) {}

  /// Error executing the command
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.configservice',
        shape: 'MaxNumberOfOrganizationConfigRulesExceededException',
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
        'MaxNumberOfOrganizationConfigRulesExceededException')
      ..add(
        'message',
        message,
      );
    return helper.toString();
  }
}

class MaxNumberOfOrganizationConfigRulesExceededExceptionAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<
        MaxNumberOfOrganizationConfigRulesExceededException> {
  const MaxNumberOfOrganizationConfigRulesExceededExceptionAwsJson11Serializer()
      : super('MaxNumberOfOrganizationConfigRulesExceededException');

  @override
  Iterable<Type> get types => const [
        MaxNumberOfOrganizationConfigRulesExceededException,
        _$MaxNumberOfOrganizationConfigRulesExceededException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  MaxNumberOfOrganizationConfigRulesExceededException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MaxNumberOfOrganizationConfigRulesExceededExceptionBuilder();
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
    MaxNumberOfOrganizationConfigRulesExceededException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final MaxNumberOfOrganizationConfigRulesExceededException(:message) =
        object;
    if (message != null) {
      result$
        ..add('message')
        ..add(serializers.serialize(
          message,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}

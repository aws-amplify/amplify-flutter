// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.no_such_organization_config_rule_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'no_such_organization_config_rule_exception.g.dart';

/// The Config rule in the request is not valid. Verify that the rule is an organization Config Process Check rule, that the rule name is correct, and that valid Amazon Resouce Names (ARNs) are used before trying again.
abstract class NoSuchOrganizationConfigRuleException
    with
        _i1.AWSEquatable<NoSuchOrganizationConfigRuleException>
    implements
        Built<NoSuchOrganizationConfigRuleException,
            NoSuchOrganizationConfigRuleExceptionBuilder>,
        _i2.SmithyHttpException {
  /// The Config rule in the request is not valid. Verify that the rule is an organization Config Process Check rule, that the rule name is correct, and that valid Amazon Resouce Names (ARNs) are used before trying again.
  factory NoSuchOrganizationConfigRuleException({String? message}) {
    return _$NoSuchOrganizationConfigRuleException._(message: message);
  }

  /// The Config rule in the request is not valid. Verify that the rule is an organization Config Process Check rule, that the rule name is correct, and that valid Amazon Resouce Names (ARNs) are used before trying again.
  factory NoSuchOrganizationConfigRuleException.build(
      [void Function(NoSuchOrganizationConfigRuleExceptionBuilder)
          updates]) = _$NoSuchOrganizationConfigRuleException;

  const NoSuchOrganizationConfigRuleException._();

  /// Constructs a [NoSuchOrganizationConfigRuleException] from a [payload] and [response].
  factory NoSuchOrganizationConfigRuleException.fromResponse(
    NoSuchOrganizationConfigRuleException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    NoSuchOrganizationConfigRuleExceptionAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NoSuchOrganizationConfigRuleExceptionBuilder b) {}

  /// Error executing the command
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.configservice',
        shape: 'NoSuchOrganizationConfigRuleException',
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
        newBuiltValueToStringHelper('NoSuchOrganizationConfigRuleException');
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class NoSuchOrganizationConfigRuleExceptionAwsJson11Serializer extends _i2
    .StructuredSmithySerializer<NoSuchOrganizationConfigRuleException> {
  const NoSuchOrganizationConfigRuleExceptionAwsJson11Serializer()
      : super('NoSuchOrganizationConfigRuleException');

  @override
  Iterable<Type> get types => const [
        NoSuchOrganizationConfigRuleException,
        _$NoSuchOrganizationConfigRuleException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  NoSuchOrganizationConfigRuleException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NoSuchOrganizationConfigRuleExceptionBuilder();
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
    NoSuchOrganizationConfigRuleException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final NoSuchOrganizationConfigRuleException(:message) = object;
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

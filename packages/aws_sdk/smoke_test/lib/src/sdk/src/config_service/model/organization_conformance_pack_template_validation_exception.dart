// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.config_service.model.organization_conformance_pack_template_validation_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'organization_conformance_pack_template_validation_exception.g.dart';

/// You have specified a template that is not valid or supported.
abstract class OrganizationConformancePackTemplateValidationException
    with
        _i1.AWSEquatable<OrganizationConformancePackTemplateValidationException>
    implements
        Built<OrganizationConformancePackTemplateValidationException,
            OrganizationConformancePackTemplateValidationExceptionBuilder>,
        _i2.SmithyHttpException {
  /// You have specified a template that is not valid or supported.
  factory OrganizationConformancePackTemplateValidationException(
      {String? message}) {
    return _$OrganizationConformancePackTemplateValidationException._(
        message: message);
  }

  /// You have specified a template that is not valid or supported.
  factory OrganizationConformancePackTemplateValidationException.build(
      [void Function(
              OrganizationConformancePackTemplateValidationExceptionBuilder)
          updates]) = _$OrganizationConformancePackTemplateValidationException;

  const OrganizationConformancePackTemplateValidationException._();

  /// Constructs a [OrganizationConformancePackTemplateValidationException] from a [payload] and [response].
  factory OrganizationConformancePackTemplateValidationException.fromResponse(
    OrganizationConformancePackTemplateValidationException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<
          _i2.SmithySerializer<
              OrganizationConformancePackTemplateValidationException>>
      serializers = [
    OrganizationConformancePackTemplateValidationExceptionAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      OrganizationConformancePackTemplateValidationExceptionBuilder b) {}

  /// Error executing the command
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.configservice',
        shape: 'OrganizationConformancePackTemplateValidationException',
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
        'OrganizationConformancePackTemplateValidationException')
      ..add(
        'message',
        message,
      );
    return helper.toString();
  }
}

class OrganizationConformancePackTemplateValidationExceptionAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<
        OrganizationConformancePackTemplateValidationException> {
  const OrganizationConformancePackTemplateValidationExceptionAwsJson11Serializer()
      : super('OrganizationConformancePackTemplateValidationException');

  @override
  Iterable<Type> get types => const [
        OrganizationConformancePackTemplateValidationException,
        _$OrganizationConformancePackTemplateValidationException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  OrganizationConformancePackTemplateValidationException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        OrganizationConformancePackTemplateValidationExceptionBuilder();
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
    OrganizationConformancePackTemplateValidationException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final OrganizationConformancePackTemplateValidationException(:message) =
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

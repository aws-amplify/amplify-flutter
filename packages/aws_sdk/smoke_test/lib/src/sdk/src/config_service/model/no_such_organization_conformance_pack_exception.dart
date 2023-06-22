// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.no_such_organization_conformance_pack_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'no_such_organization_conformance_pack_exception.g.dart';

/// Config organization conformance pack that you passed in the filter does not exist.
///
/// For DeleteOrganizationConformancePack, you tried to delete an organization conformance pack that does not exist.
abstract class NoSuchOrganizationConformancePackException
    with
        _i1.AWSEquatable<NoSuchOrganizationConformancePackException>
    implements
        Built<NoSuchOrganizationConformancePackException,
            NoSuchOrganizationConformancePackExceptionBuilder>,
        _i2.SmithyHttpException {
  /// Config organization conformance pack that you passed in the filter does not exist.
  ///
  /// For DeleteOrganizationConformancePack, you tried to delete an organization conformance pack that does not exist.
  factory NoSuchOrganizationConformancePackException({String? message}) {
    return _$NoSuchOrganizationConformancePackException._(message: message);
  }

  /// Config organization conformance pack that you passed in the filter does not exist.
  ///
  /// For DeleteOrganizationConformancePack, you tried to delete an organization conformance pack that does not exist.
  factory NoSuchOrganizationConformancePackException.build(
      [void Function(NoSuchOrganizationConformancePackExceptionBuilder)
          updates]) = _$NoSuchOrganizationConformancePackException;

  const NoSuchOrganizationConformancePackException._();

  /// Constructs a [NoSuchOrganizationConformancePackException] from a [payload] and [response].
  factory NoSuchOrganizationConformancePackException.fromResponse(
    NoSuchOrganizationConformancePackException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<
          _i2.SmithySerializer<NoSuchOrganizationConformancePackException>>
      serializers = [
    NoSuchOrganizationConformancePackExceptionAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NoSuchOrganizationConformancePackExceptionBuilder b) {}

  /// Error executing the command
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.configservice',
        shape: 'NoSuchOrganizationConformancePackException',
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
        'NoSuchOrganizationConformancePackException')
      ..add(
        'message',
        message,
      );
    return helper.toString();
  }
}

class NoSuchOrganizationConformancePackExceptionAwsJson11Serializer extends _i2
    .StructuredSmithySerializer<NoSuchOrganizationConformancePackException> {
  const NoSuchOrganizationConformancePackExceptionAwsJson11Serializer()
      : super('NoSuchOrganizationConformancePackException');

  @override
  Iterable<Type> get types => const [
        NoSuchOrganizationConformancePackException,
        _$NoSuchOrganizationConformancePackException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  NoSuchOrganizationConformancePackException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NoSuchOrganizationConformancePackExceptionBuilder();
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
    NoSuchOrganizationConformancePackException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final NoSuchOrganizationConformancePackException(:message) = object;
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

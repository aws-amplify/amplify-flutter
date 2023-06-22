// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.max_number_of_organization_conformance_packs_exceeded_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'max_number_of_organization_conformance_packs_exceeded_exception.g.dart';

/// You have reached the limit of the number of organization conformance packs you can create in an account. For more information, see [**Service Limits**](https://docs.aws.amazon.com/config/latest/developerguide/configlimits.html) in the _Config Developer Guide_.
abstract class MaxNumberOfOrganizationConformancePacksExceededException
    with
        _i1.AWSEquatable<
            MaxNumberOfOrganizationConformancePacksExceededException>
    implements
        Built<MaxNumberOfOrganizationConformancePacksExceededException,
            MaxNumberOfOrganizationConformancePacksExceededExceptionBuilder>,
        _i2.SmithyHttpException {
  /// You have reached the limit of the number of organization conformance packs you can create in an account. For more information, see [**Service Limits**](https://docs.aws.amazon.com/config/latest/developerguide/configlimits.html) in the _Config Developer Guide_.
  factory MaxNumberOfOrganizationConformancePacksExceededException(
      {String? message}) {
    return _$MaxNumberOfOrganizationConformancePacksExceededException._(
        message: message);
  }

  /// You have reached the limit of the number of organization conformance packs you can create in an account. For more information, see [**Service Limits**](https://docs.aws.amazon.com/config/latest/developerguide/configlimits.html) in the _Config Developer Guide_.
  factory MaxNumberOfOrganizationConformancePacksExceededException.build(
      [void Function(
              MaxNumberOfOrganizationConformancePacksExceededExceptionBuilder)
          updates]) = _$MaxNumberOfOrganizationConformancePacksExceededException;

  const MaxNumberOfOrganizationConformancePacksExceededException._();

  /// Constructs a [MaxNumberOfOrganizationConformancePacksExceededException] from a [payload] and [response].
  factory MaxNumberOfOrganizationConformancePacksExceededException.fromResponse(
    MaxNumberOfOrganizationConformancePacksExceededException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<
          _i2.SmithySerializer<
              MaxNumberOfOrganizationConformancePacksExceededException>>
      serializers = [
    MaxNumberOfOrganizationConformancePacksExceededExceptionAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      MaxNumberOfOrganizationConformancePacksExceededExceptionBuilder b) {}

  /// Error executing the command
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.configservice',
        shape: 'MaxNumberOfOrganizationConformancePacksExceededException',
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
        'MaxNumberOfOrganizationConformancePacksExceededException')
      ..add(
        'message',
        message,
      );
    return helper.toString();
  }
}

class MaxNumberOfOrganizationConformancePacksExceededExceptionAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<
        MaxNumberOfOrganizationConformancePacksExceededException> {
  const MaxNumberOfOrganizationConformancePacksExceededExceptionAwsJson11Serializer()
      : super('MaxNumberOfOrganizationConformancePacksExceededException');

  @override
  Iterable<Type> get types => const [
        MaxNumberOfOrganizationConformancePacksExceededException,
        _$MaxNumberOfOrganizationConformancePacksExceededException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  MaxNumberOfOrganizationConformancePacksExceededException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        MaxNumberOfOrganizationConformancePacksExceededExceptionBuilder();
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
    MaxNumberOfOrganizationConformancePacksExceededException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final MaxNumberOfOrganizationConformancePacksExceededException(:message) =
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

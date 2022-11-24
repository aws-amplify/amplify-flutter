// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.config_service.model.max_number_of_organization_conformance_packs_exceeded_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'max_number_of_organization_conformance_packs_exceeded_exception.g.dart';

/// You have reached the limit (6) of the number of organization conformance packs in an account (6 conformance pack with 25 Config rules per pack per account).
abstract class MaxNumberOfOrganizationConformancePacksExceededException
    with
        _i1.AWSEquatable<
            MaxNumberOfOrganizationConformancePacksExceededException>
    implements
        Built<MaxNumberOfOrganizationConformancePacksExceededException,
            MaxNumberOfOrganizationConformancePacksExceededExceptionBuilder>,
        _i2.SmithyHttpException {
  /// You have reached the limit (6) of the number of organization conformance packs in an account (6 conformance pack with 25 Config rules per pack per account).
  factory MaxNumberOfOrganizationConformancePacksExceededException(
      {String? message}) {
    return _$MaxNumberOfOrganizationConformancePacksExceededException._(
        message: message);
  }

  /// You have reached the limit (6) of the number of organization conformance packs in an account (6 conformance pack with 25 Config rules per pack per account).
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

  static const List<_i2.SmithySerializer> serializers = [
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
        'MaxNumberOfOrganizationConformancePacksExceededException');
    helper.add(
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
    final payload =
        (object as MaxNumberOfOrganizationConformancePacksExceededException);
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

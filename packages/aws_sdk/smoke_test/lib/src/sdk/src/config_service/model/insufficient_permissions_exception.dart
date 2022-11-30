// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.config_service.model.insufficient_permissions_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'insufficient_permissions_exception.g.dart';

/// Indicates one of the following errors:
///
/// *   For PutConfigRule, the rule cannot be created because the IAM role assigned to Config lacks permissions to perform the config:Put* action.
///
/// *   For PutConfigRule, the Lambda function cannot be invoked. Check the function ARN, and check the function's permissions.
///
/// *   For PutOrganizationConfigRule, organization Config rule cannot be created because you do not have permissions to call IAM `GetRole` action or create a service-linked role.
///
/// *   For PutConformancePack and PutOrganizationConformancePack, a conformance pack cannot be created because you do not have permissions:
///
///     *   To call IAM `GetRole` action or create a service-linked role.
///
///     *   To read Amazon S3 bucket or call SSM:GetDocument.
abstract class InsufficientPermissionsException
    with
        _i1.AWSEquatable<InsufficientPermissionsException>
    implements
        Built<InsufficientPermissionsException,
            InsufficientPermissionsExceptionBuilder>,
        _i2.SmithyHttpException {
  /// Indicates one of the following errors:
  ///
  /// *   For PutConfigRule, the rule cannot be created because the IAM role assigned to Config lacks permissions to perform the config:Put* action.
  ///
  /// *   For PutConfigRule, the Lambda function cannot be invoked. Check the function ARN, and check the function's permissions.
  ///
  /// *   For PutOrganizationConfigRule, organization Config rule cannot be created because you do not have permissions to call IAM `GetRole` action or create a service-linked role.
  ///
  /// *   For PutConformancePack and PutOrganizationConformancePack, a conformance pack cannot be created because you do not have permissions:
  ///
  ///     *   To call IAM `GetRole` action or create a service-linked role.
  ///
  ///     *   To read Amazon S3 bucket or call SSM:GetDocument.
  factory InsufficientPermissionsException({String? message}) {
    return _$InsufficientPermissionsException._(message: message);
  }

  /// Indicates one of the following errors:
  ///
  /// *   For PutConfigRule, the rule cannot be created because the IAM role assigned to Config lacks permissions to perform the config:Put* action.
  ///
  /// *   For PutConfigRule, the Lambda function cannot be invoked. Check the function ARN, and check the function's permissions.
  ///
  /// *   For PutOrganizationConfigRule, organization Config rule cannot be created because you do not have permissions to call IAM `GetRole` action or create a service-linked role.
  ///
  /// *   For PutConformancePack and PutOrganizationConformancePack, a conformance pack cannot be created because you do not have permissions:
  ///
  ///     *   To call IAM `GetRole` action or create a service-linked role.
  ///
  ///     *   To read Amazon S3 bucket or call SSM:GetDocument.
  factory InsufficientPermissionsException.build(
          [void Function(InsufficientPermissionsExceptionBuilder) updates]) =
      _$InsufficientPermissionsException;

  const InsufficientPermissionsException._();

  /// Constructs a [InsufficientPermissionsException] from a [payload] and [response].
  factory InsufficientPermissionsException.fromResponse(
    InsufficientPermissionsException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    InsufficientPermissionsExceptionAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InsufficientPermissionsExceptionBuilder b) {}

  /// Error executing the command
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.configservice',
        shape: 'InsufficientPermissionsException',
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
        newBuiltValueToStringHelper('InsufficientPermissionsException');
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class InsufficientPermissionsExceptionAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<InsufficientPermissionsException> {
  const InsufficientPermissionsExceptionAwsJson11Serializer()
      : super('InsufficientPermissionsException');

  @override
  Iterable<Type> get types => const [
        InsufficientPermissionsException,
        _$InsufficientPermissionsException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  InsufficientPermissionsException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InsufficientPermissionsExceptionBuilder();
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
    final payload = (object as InsufficientPermissionsException);
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

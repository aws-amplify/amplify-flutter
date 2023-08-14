// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.cloud_formation.model.cfn_registry_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'cfn_registry_exception.g.dart';

/// An error occurred during a CloudFormation registry operation.
abstract class CfnRegistryException
    with _i1.AWSEquatable<CfnRegistryException>
    implements
        Built<CfnRegistryException, CfnRegistryExceptionBuilder>,
        _i2.SmithyHttpException {
  /// An error occurred during a CloudFormation registry operation.
  factory CfnRegistryException({String? message}) {
    return _$CfnRegistryException._(message: message);
  }

  /// An error occurred during a CloudFormation registry operation.
  factory CfnRegistryException.build(
          [void Function(CfnRegistryExceptionBuilder) updates]) =
      _$CfnRegistryException;

  const CfnRegistryException._();

  /// Constructs a [CfnRegistryException] from a [payload] and [response].
  factory CfnRegistryException.fromResponse(
    CfnRegistryException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<CfnRegistryException>> serializers = [
    CfnRegistryExceptionAwsQuerySerializer()
  ];

  /// An message with details about the error that occurred.
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.cloudformation',
        shape: 'CFNRegistryException',
      );
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  @BuiltValueField(compare: false)
  int get statusCode => 400;
  @override
  @BuiltValueField(compare: false)
  Map<String, String>? get headers;
  @override
  Exception? get underlyingException => null;
  @override
  List<Object?> get props => [message];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CfnRegistryException')
      ..add(
        'message',
        message,
      );
    return helper.toString();
  }
}

class CfnRegistryExceptionAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<CfnRegistryException> {
  const CfnRegistryExceptionAwsQuerySerializer()
      : super('CfnRegistryException');

  @override
  Iterable<Type> get types => const [
        CfnRegistryException,
        _$CfnRegistryException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  CfnRegistryException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CfnRegistryExceptionBuilder();
    final errorIterator = serialized.iterator;
    while (errorIterator.moveNext()) {
      final key = errorIterator.current;
      errorIterator.moveNext();
      if (key == 'Error') {
        serialized = errorIterator.current as Iterable;
      }
    }
    final responseIterator = serialized.iterator;
    while (responseIterator.moveNext()) {
      final key = responseIterator.current as String;
      responseIterator.moveNext();
      if (key.endsWith('Result')) {
        serialized = responseIterator.current as Iterable;
      }
    }
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Message':
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
    CfnRegistryException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CfnRegistryExceptionResponse',
        _i2.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final CfnRegistryException(:message) = object;
    if (message != null) {
      result$
        ..add(const _i2.XmlElementName('Message'))
        ..add(serializers.serialize(
          message,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}

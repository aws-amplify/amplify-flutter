// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.config_service.model.remediation_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'remediation_exception.g.dart';

/// An object that represents the details about the remediation exception. The details include the rule name, an explanation of an exception, the time when the exception will be deleted, the resource ID, and resource type.
abstract class RemediationException
    with _i1.AWSEquatable<RemediationException>
    implements Built<RemediationException, RemediationExceptionBuilder> {
  /// An object that represents the details about the remediation exception. The details include the rule name, an explanation of an exception, the time when the exception will be deleted, the resource ID, and resource type.
  factory RemediationException({
    required String configRuleName,
    DateTime? expirationTime,
    String? message,
    required String resourceId,
    required String resourceType,
  }) {
    return _$RemediationException._(
      configRuleName: configRuleName,
      expirationTime: expirationTime,
      message: message,
      resourceId: resourceId,
      resourceType: resourceType,
    );
  }

  /// An object that represents the details about the remediation exception. The details include the rule name, an explanation of an exception, the time when the exception will be deleted, the resource ID, and resource type.
  factory RemediationException.build(
          [void Function(RemediationExceptionBuilder) updates]) =
      _$RemediationException;

  const RemediationException._();

  static const List<_i2.SmithySerializer> serializers = [
    RemediationExceptionAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RemediationExceptionBuilder b) {}

  /// The name of the Config rule.
  String get configRuleName;

  /// The time when the remediation exception will be deleted.
  DateTime? get expirationTime;

  /// An explanation of an remediation exception.
  String? get message;

  /// The ID of the resource (for example., sg-xxxxxx).
  String get resourceId;

  /// The type of a resource.
  String get resourceType;
  @override
  List<Object?> get props => [
        configRuleName,
        expirationTime,
        message,
        resourceId,
        resourceType,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RemediationException');
    helper.add(
      'configRuleName',
      configRuleName,
    );
    helper.add(
      'expirationTime',
      expirationTime,
    );
    helper.add(
      'message',
      message,
    );
    helper.add(
      'resourceId',
      resourceId,
    );
    helper.add(
      'resourceType',
      resourceType,
    );
    return helper.toString();
  }
}

class RemediationExceptionAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<RemediationException> {
  const RemediationExceptionAwsJson11Serializer()
      : super('RemediationException');

  @override
  Iterable<Type> get types => const [
        RemediationException,
        _$RemediationException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  RemediationException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RemediationExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ConfigRuleName':
          result.configRuleName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'ExpirationTime':
          if (value != null) {
            result.expirationTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'Message':
          if (value != null) {
            result.message = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ResourceId':
          result.resourceId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'ResourceType':
          result.resourceType = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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
    final payload = (object as RemediationException);
    final result = <Object?>[
      'ConfigRuleName',
      serializers.serialize(
        payload.configRuleName,
        specifiedType: const FullType(String),
      ),
      'ResourceId',
      serializers.serialize(
        payload.resourceId,
        specifiedType: const FullType(String),
      ),
      'ResourceType',
      serializers.serialize(
        payload.resourceType,
        specifiedType: const FullType(String),
      ),
    ];
    if (payload.expirationTime != null) {
      result
        ..add('ExpirationTime')
        ..add(serializers.serialize(
          payload.expirationTime!,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (payload.message != null) {
      result
        ..add('Message')
        ..add(serializers.serialize(
          payload.message!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}

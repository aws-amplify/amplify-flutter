// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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
    required String resourceType,
    required String resourceId,
    String? message,
    DateTime? expirationTime,
  }) {
    return _$RemediationException._(
      configRuleName: configRuleName,
      resourceType: resourceType,
      resourceId: resourceId,
      message: message,
      expirationTime: expirationTime,
    );
  }

  /// An object that represents the details about the remediation exception. The details include the rule name, an explanation of an exception, the time when the exception will be deleted, the resource ID, and resource type.
  factory RemediationException.build(
          [void Function(RemediationExceptionBuilder) updates]) =
      _$RemediationException;

  const RemediationException._();

  static const List<_i2.SmithySerializer<RemediationException>> serializers = [
    RemediationExceptionAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RemediationExceptionBuilder b) {}

  /// The name of the Config rule.
  String get configRuleName;

  /// The type of a resource.
  String get resourceType;

  /// The ID of the resource (for example., sg-xxxxxx).
  String get resourceId;

  /// An explanation of an remediation exception.
  String? get message;

  /// The time when the remediation exception will be deleted.
  DateTime? get expirationTime;
  @override
  List<Object?> get props => [
        configRuleName,
        resourceType,
        resourceId,
        message,
        expirationTime,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RemediationException')
      ..add(
        'configRuleName',
        configRuleName,
      )
      ..add(
        'resourceType',
        resourceType,
      )
      ..add(
        'resourceId',
        resourceId,
      )
      ..add(
        'message',
        message,
      )
      ..add(
        'expirationTime',
        expirationTime,
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ConfigRuleName':
          result.configRuleName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ResourceType':
          result.resourceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ResourceId':
          result.resourceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Message':
          result.message = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ExpirationTime':
          result.expirationTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    RemediationException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final RemediationException(
      :configRuleName,
      :resourceType,
      :resourceId,
      :message,
      :expirationTime
    ) = object;
    result$.addAll([
      'ConfigRuleName',
      serializers.serialize(
        configRuleName,
        specifiedType: const FullType(String),
      ),
      'ResourceType',
      serializers.serialize(
        resourceType,
        specifiedType: const FullType(String),
      ),
      'ResourceId',
      serializers.serialize(
        resourceId,
        specifiedType: const FullType(String),
      ),
    ]);
    if (message != null) {
      result$
        ..add('Message')
        ..add(serializers.serialize(
          message,
          specifiedType: const FullType(String),
        ));
    }
    if (expirationTime != null) {
      result$
        ..add('ExpirationTime')
        ..add(serializers.serialize(
          expirationTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    return result$;
  }
}

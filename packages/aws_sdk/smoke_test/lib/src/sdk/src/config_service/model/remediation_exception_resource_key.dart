// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.remediation_exception_resource_key; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'remediation_exception_resource_key.g.dart';

/// The details that identify a resource within Config, including the resource type and resource ID.
abstract class RemediationExceptionResourceKey
    with
        _i1.AWSEquatable<RemediationExceptionResourceKey>
    implements
        Built<RemediationExceptionResourceKey,
            RemediationExceptionResourceKeyBuilder> {
  /// The details that identify a resource within Config, including the resource type and resource ID.
  factory RemediationExceptionResourceKey({
    String? resourceType,
    String? resourceId,
  }) {
    return _$RemediationExceptionResourceKey._(
      resourceType: resourceType,
      resourceId: resourceId,
    );
  }

  /// The details that identify a resource within Config, including the resource type and resource ID.
  factory RemediationExceptionResourceKey.build(
          [void Function(RemediationExceptionResourceKeyBuilder) updates]) =
      _$RemediationExceptionResourceKey;

  const RemediationExceptionResourceKey._();

  static const List<_i2.SmithySerializer<RemediationExceptionResourceKey>>
      serializers = [RemediationExceptionResourceKeyAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RemediationExceptionResourceKeyBuilder b) {}

  /// The type of a resource.
  String? get resourceType;

  /// The ID of the resource (for example., sg-xxxxxx).
  String? get resourceId;
  @override
  List<Object?> get props => [
        resourceType,
        resourceId,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('RemediationExceptionResourceKey')
          ..add(
            'resourceType',
            resourceType,
          )
          ..add(
            'resourceId',
            resourceId,
          );
    return helper.toString();
  }
}

class RemediationExceptionResourceKeyAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<RemediationExceptionResourceKey> {
  const RemediationExceptionResourceKeyAwsJson11Serializer()
      : super('RemediationExceptionResourceKey');

  @override
  Iterable<Type> get types => const [
        RemediationExceptionResourceKey,
        _$RemediationExceptionResourceKey,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  RemediationExceptionResourceKey deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RemediationExceptionResourceKeyBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    RemediationExceptionResourceKey object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final RemediationExceptionResourceKey(:resourceType, :resourceId) = object;
    if (resourceType != null) {
      result$
        ..add('ResourceType')
        ..add(serializers.serialize(
          resourceType,
          specifiedType: const FullType(String),
        ));
    }
    if (resourceId != null) {
      result$
        ..add('ResourceId')
        ..add(serializers.serialize(
          resourceId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}

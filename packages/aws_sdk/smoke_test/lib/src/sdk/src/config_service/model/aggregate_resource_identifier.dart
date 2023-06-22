// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.aggregate_resource_identifier; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/resource_type.dart'
    as _i2;

part 'aggregate_resource_identifier.g.dart';

/// The details that identify a resource that is collected by Config aggregator, including the resource type, ID, (if available) the custom resource name, the source account, and source region.
abstract class AggregateResourceIdentifier
    with _i1.AWSEquatable<AggregateResourceIdentifier>
    implements
        Built<AggregateResourceIdentifier, AggregateResourceIdentifierBuilder> {
  /// The details that identify a resource that is collected by Config aggregator, including the resource type, ID, (if available) the custom resource name, the source account, and source region.
  factory AggregateResourceIdentifier({
    required String sourceAccountId,
    required String sourceRegion,
    required String resourceId,
    required _i2.ResourceType resourceType,
    String? resourceName,
  }) {
    return _$AggregateResourceIdentifier._(
      sourceAccountId: sourceAccountId,
      sourceRegion: sourceRegion,
      resourceId: resourceId,
      resourceType: resourceType,
      resourceName: resourceName,
    );
  }

  /// The details that identify a resource that is collected by Config aggregator, including the resource type, ID, (if available) the custom resource name, the source account, and source region.
  factory AggregateResourceIdentifier.build(
          [void Function(AggregateResourceIdentifierBuilder) updates]) =
      _$AggregateResourceIdentifier;

  const AggregateResourceIdentifier._();

  static const List<_i3.SmithySerializer<AggregateResourceIdentifier>>
      serializers = [AggregateResourceIdentifierAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AggregateResourceIdentifierBuilder b) {}

  /// The 12-digit account ID of the source account.
  String get sourceAccountId;

  /// The source region where data is aggregated.
  String get sourceRegion;

  /// The ID of the Amazon Web Services resource.
  String get resourceId;

  /// The type of the Amazon Web Services resource.
  _i2.ResourceType get resourceType;

  /// The name of the Amazon Web Services resource.
  String? get resourceName;
  @override
  List<Object?> get props => [
        sourceAccountId,
        sourceRegion,
        resourceId,
        resourceType,
        resourceName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AggregateResourceIdentifier')
      ..add(
        'sourceAccountId',
        sourceAccountId,
      )
      ..add(
        'sourceRegion',
        sourceRegion,
      )
      ..add(
        'resourceId',
        resourceId,
      )
      ..add(
        'resourceType',
        resourceType,
      )
      ..add(
        'resourceName',
        resourceName,
      );
    return helper.toString();
  }
}

class AggregateResourceIdentifierAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<AggregateResourceIdentifier> {
  const AggregateResourceIdentifierAwsJson11Serializer()
      : super('AggregateResourceIdentifier');

  @override
  Iterable<Type> get types => const [
        AggregateResourceIdentifier,
        _$AggregateResourceIdentifier,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  AggregateResourceIdentifier deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AggregateResourceIdentifierBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'SourceAccountId':
          result.sourceAccountId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'SourceRegion':
          result.sourceRegion = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ResourceId':
          result.resourceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ResourceType':
          result.resourceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.ResourceType),
          ) as _i2.ResourceType);
        case 'ResourceName':
          result.resourceName = (serializers.deserialize(
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
    AggregateResourceIdentifier object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final AggregateResourceIdentifier(
      :sourceAccountId,
      :sourceRegion,
      :resourceId,
      :resourceType,
      :resourceName
    ) = object;
    result$.addAll([
      'SourceAccountId',
      serializers.serialize(
        sourceAccountId,
        specifiedType: const FullType(String),
      ),
      'SourceRegion',
      serializers.serialize(
        sourceRegion,
        specifiedType: const FullType(String),
      ),
      'ResourceId',
      serializers.serialize(
        resourceId,
        specifiedType: const FullType(String),
      ),
      'ResourceType',
      serializers.serialize(
        resourceType,
        specifiedType: const FullType(_i2.ResourceType),
      ),
    ]);
    if (resourceName != null) {
      result$
        ..add('ResourceName')
        ..add(serializers.serialize(
          resourceName,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}

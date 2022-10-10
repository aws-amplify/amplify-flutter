// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

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
    required String resourceId,
    String? resourceName,
    required _i2.ResourceType resourceType,
    required String sourceAccountId,
    required String sourceRegion,
  }) {
    return _$AggregateResourceIdentifier._(
      resourceId: resourceId,
      resourceName: resourceName,
      resourceType: resourceType,
      sourceAccountId: sourceAccountId,
      sourceRegion: sourceRegion,
    );
  }

  /// The details that identify a resource that is collected by Config aggregator, including the resource type, ID, (if available) the custom resource name, the source account, and source region.
  factory AggregateResourceIdentifier.build(
          [void Function(AggregateResourceIdentifierBuilder) updates]) =
      _$AggregateResourceIdentifier;

  const AggregateResourceIdentifier._();

  static const List<_i3.SmithySerializer> serializers = [
    AggregateResourceIdentifierAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AggregateResourceIdentifierBuilder b) {}

  /// The ID of the Amazon Web Services resource.
  String get resourceId;

  /// The name of the Amazon Web Services resource.
  String? get resourceName;

  /// The type of the Amazon Web Services resource.
  _i2.ResourceType get resourceType;

  /// The 12-digit account ID of the source account.
  String get sourceAccountId;

  /// The source region where data is aggregated.
  String get sourceRegion;
  @override
  List<Object?> get props => [
        resourceId,
        resourceName,
        resourceType,
        sourceAccountId,
        sourceRegion,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AggregateResourceIdentifier');
    helper.add(
      'resourceId',
      resourceId,
    );
    helper.add(
      'resourceName',
      resourceName,
    );
    helper.add(
      'resourceType',
      resourceType,
    );
    helper.add(
      'sourceAccountId',
      sourceAccountId,
    );
    helper.add(
      'sourceRegion',
      sourceRegion,
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
      switch (key) {
        case 'ResourceId':
          result.resourceId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'ResourceName':
          if (value != null) {
            result.resourceName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ResourceType':
          result.resourceType = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i2.ResourceType),
          ) as _i2.ResourceType);
          break;
        case 'SourceAccountId':
          result.sourceAccountId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'SourceRegion':
          result.sourceRegion = (serializers.deserialize(
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
    final payload = (object as AggregateResourceIdentifier);
    final result = <Object?>[
      'ResourceId',
      serializers.serialize(
        payload.resourceId,
        specifiedType: const FullType(String),
      ),
      'ResourceType',
      serializers.serialize(
        payload.resourceType,
        specifiedType: const FullType(_i2.ResourceType),
      ),
      'SourceAccountId',
      serializers.serialize(
        payload.sourceAccountId,
        specifiedType: const FullType(String),
      ),
      'SourceRegion',
      serializers.serialize(
        payload.sourceRegion,
        specifiedType: const FullType(String),
      ),
    ];
    if (payload.resourceName != null) {
      result
        ..add('ResourceName')
        ..add(serializers.serialize(
          payload.resourceName!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}

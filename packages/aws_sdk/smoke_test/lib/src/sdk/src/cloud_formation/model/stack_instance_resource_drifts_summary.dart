// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.cloud_formation.model.stack_instance_resource_drifts_summary; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/physical_resource_id_context_key_value_pair.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/property_difference.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_resource_drift_status.dart';

part 'stack_instance_resource_drifts_summary.g.dart';

/// The structure containing summary information about resource drifts for a stack instance.
abstract class StackInstanceResourceDriftsSummary
    with
        _i1.AWSEquatable<StackInstanceResourceDriftsSummary>
    implements
        Built<StackInstanceResourceDriftsSummary,
            StackInstanceResourceDriftsSummaryBuilder> {
  /// The structure containing summary information about resource drifts for a stack instance.
  factory StackInstanceResourceDriftsSummary({
    required String stackId,
    required String logicalResourceId,
    String? physicalResourceId,
    List<PhysicalResourceIdContextKeyValuePair>? physicalResourceIdContext,
    required String resourceType,
    List<PropertyDifference>? propertyDifferences,
    required StackResourceDriftStatus stackResourceDriftStatus,
    required DateTime timestamp,
  }) {
    return _$StackInstanceResourceDriftsSummary._(
      stackId: stackId,
      logicalResourceId: logicalResourceId,
      physicalResourceId: physicalResourceId,
      physicalResourceIdContext: physicalResourceIdContext == null
          ? null
          : _i2.BuiltList(physicalResourceIdContext),
      resourceType: resourceType,
      propertyDifferences: propertyDifferences == null
          ? null
          : _i2.BuiltList(propertyDifferences),
      stackResourceDriftStatus: stackResourceDriftStatus,
      timestamp: timestamp,
    );
  }

  /// The structure containing summary information about resource drifts for a stack instance.
  factory StackInstanceResourceDriftsSummary.build(
          [void Function(StackInstanceResourceDriftsSummaryBuilder) updates]) =
      _$StackInstanceResourceDriftsSummary;

  const StackInstanceResourceDriftsSummary._();

  static const List<_i3.SmithySerializer<StackInstanceResourceDriftsSummary>>
      serializers = [StackInstanceResourceDriftsSummaryAwsQuerySerializer()];

  /// The ID of the stack instance.
  String get stackId;

  /// The logical name of the resource specified in the template.
  String get logicalResourceId;

  /// The name or unique identifier that corresponds to a physical instance ID of a resource supported by CloudFormation.
  String? get physicalResourceId;

  /// Context information that enables CloudFormation to uniquely identify a resource. CloudFormation uses context key-value pairs in cases where a resource's logical and physical IDs aren't enough to uniquely identify that resource. Each context key-value pair specifies a unique resource that contains the targeted resource.
  _i2.BuiltList<PhysicalResourceIdContextKeyValuePair>?
      get physicalResourceIdContext;

  /// Type of resource. For more information, go to [Amazon Web Services Resource Types Reference](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html) in the CloudFormation User Guide.
  String get resourceType;

  /// Status of the actual configuration of the resource compared to its expected configuration. These will be present only for resources whose `StackInstanceResourceDriftStatus` is `MODIFIED`.
  _i2.BuiltList<PropertyDifference>? get propertyDifferences;

  /// The drift status of the resource in a stack instance.
  ///
  /// *   `DELETED`: The resource differs from its expected template configuration in that the resource has been deleted.
  ///
  /// *   `MODIFIED`: One or more resource properties differ from their expected template values.
  ///
  /// *   `IN_SYNC`: The resource's actual configuration matches its expected template configuration.
  ///
  /// *   `NOT_CHECKED`: CloudFormation doesn't currently return this value.
  StackResourceDriftStatus get stackResourceDriftStatus;

  /// Time at which the stack instance drift detection operation was initiated.
  DateTime get timestamp;
  @override
  List<Object?> get props => [
        stackId,
        logicalResourceId,
        physicalResourceId,
        physicalResourceIdContext,
        resourceType,
        propertyDifferences,
        stackResourceDriftStatus,
        timestamp,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('StackInstanceResourceDriftsSummary')
          ..add(
            'stackId',
            stackId,
          )
          ..add(
            'logicalResourceId',
            logicalResourceId,
          )
          ..add(
            'physicalResourceId',
            physicalResourceId,
          )
          ..add(
            'physicalResourceIdContext',
            physicalResourceIdContext,
          )
          ..add(
            'resourceType',
            resourceType,
          )
          ..add(
            'propertyDifferences',
            propertyDifferences,
          )
          ..add(
            'stackResourceDriftStatus',
            stackResourceDriftStatus,
          )
          ..add(
            'timestamp',
            timestamp,
          );
    return helper.toString();
  }
}

class StackInstanceResourceDriftsSummaryAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<StackInstanceResourceDriftsSummary> {
  const StackInstanceResourceDriftsSummaryAwsQuerySerializer()
      : super('StackInstanceResourceDriftsSummary');

  @override
  Iterable<Type> get types => const [
        StackInstanceResourceDriftsSummary,
        _$StackInstanceResourceDriftsSummary,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  StackInstanceResourceDriftsSummary deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StackInstanceResourceDriftsSummaryBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'StackId':
          result.stackId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'LogicalResourceId':
          result.logicalResourceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'PhysicalResourceId':
          result.physicalResourceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'PhysicalResourceIdContext':
          result.physicalResourceIdContext.replace(
              (const _i3.XmlBuiltListSerializer(
                      indexer: _i3.XmlIndexer.awsQueryList)
                  .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(PhysicalResourceIdContextKeyValuePair)],
            ),
          ) as _i2.BuiltList<PhysicalResourceIdContextKeyValuePair>));
        case 'ResourceType':
          result.resourceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'PropertyDifferences':
          result.propertyDifferences.replace((const _i3.XmlBuiltListSerializer(
                  indexer: _i3.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(PropertyDifference)],
            ),
          ) as _i2.BuiltList<PropertyDifference>));
        case 'StackResourceDriftStatus':
          result.stackResourceDriftStatus = (serializers.deserialize(
            value,
            specifiedType: const FullType(StackResourceDriftStatus),
          ) as StackResourceDriftStatus);
        case 'Timestamp':
          result.timestamp = (serializers.deserialize(
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
    StackInstanceResourceDriftsSummary object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'StackInstanceResourceDriftsSummaryResponse',
        _i3.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final StackInstanceResourceDriftsSummary(
      :stackId,
      :logicalResourceId,
      :physicalResourceId,
      :physicalResourceIdContext,
      :resourceType,
      :propertyDifferences,
      :stackResourceDriftStatus,
      :timestamp
    ) = object;
    result$
      ..add(const _i3.XmlElementName('StackId'))
      ..add(serializers.serialize(
        stackId,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i3.XmlElementName('LogicalResourceId'))
      ..add(serializers.serialize(
        logicalResourceId,
        specifiedType: const FullType(String),
      ));
    if (physicalResourceId != null) {
      result$
        ..add(const _i3.XmlElementName('PhysicalResourceId'))
        ..add(serializers.serialize(
          physicalResourceId,
          specifiedType: const FullType(String),
        ));
    }
    if (physicalResourceIdContext != null) {
      result$
        ..add(const _i3.XmlElementName('PhysicalResourceIdContext'))
        ..add(const _i3.XmlBuiltListSerializer(
                indexer: _i3.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          physicalResourceIdContext,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(PhysicalResourceIdContextKeyValuePair)],
          ),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('ResourceType'))
      ..add(serializers.serialize(
        resourceType,
        specifiedType: const FullType(String),
      ));
    if (propertyDifferences != null) {
      result$
        ..add(const _i3.XmlElementName('PropertyDifferences'))
        ..add(const _i3.XmlBuiltListSerializer(
                indexer: _i3.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          propertyDifferences,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(PropertyDifference)],
          ),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('StackResourceDriftStatus'))
      ..add(serializers.serialize(
        stackResourceDriftStatus,
        specifiedType: const FullType.nullable(StackResourceDriftStatus),
      ));
    result$
      ..add(const _i3.XmlElementName('Timestamp'))
      ..add(serializers.serialize(
        timestamp,
        specifiedType: const FullType.nullable(DateTime),
      ));
    return result$;
  }
}

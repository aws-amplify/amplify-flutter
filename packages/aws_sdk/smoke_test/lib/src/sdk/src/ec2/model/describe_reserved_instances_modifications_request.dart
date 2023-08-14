// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_reserved_instances_modifications_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart';

part 'describe_reserved_instances_modifications_request.g.dart';

/// Contains the parameters for DescribeReservedInstancesModifications.
abstract class DescribeReservedInstancesModificationsRequest
    with
        _i1.HttpInput<DescribeReservedInstancesModificationsRequest>,
        _i2.AWSEquatable<DescribeReservedInstancesModificationsRequest>
    implements
        Built<DescribeReservedInstancesModificationsRequest,
            DescribeReservedInstancesModificationsRequestBuilder> {
  /// Contains the parameters for DescribeReservedInstancesModifications.
  factory DescribeReservedInstancesModificationsRequest({
    List<Filter>? filters,
    List<String>? reservedInstancesModificationIds,
    String? nextToken,
  }) {
    return _$DescribeReservedInstancesModificationsRequest._(
      filters: filters == null ? null : _i3.BuiltList(filters),
      reservedInstancesModificationIds: reservedInstancesModificationIds == null
          ? null
          : _i3.BuiltList(reservedInstancesModificationIds),
      nextToken: nextToken,
    );
  }

  /// Contains the parameters for DescribeReservedInstancesModifications.
  factory DescribeReservedInstancesModificationsRequest.build(
      [void Function(DescribeReservedInstancesModificationsRequestBuilder)
          updates]) = _$DescribeReservedInstancesModificationsRequest;

  const DescribeReservedInstancesModificationsRequest._();

  factory DescribeReservedInstancesModificationsRequest.fromRequest(
    DescribeReservedInstancesModificationsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<DescribeReservedInstancesModificationsRequest>>
      serializers = [
    DescribeReservedInstancesModificationsRequestEc2QuerySerializer()
  ];

  /// One or more filters.
  ///
  /// *   `client-token` \- The idempotency token for the modification request.
  ///
  /// *   `create-date` \- The time when the modification request was created.
  ///
  /// *   `effective-date` \- The time when the modification becomes effective.
  ///
  /// *   `modification-result.reserved-instances-id` \- The ID for the Reserved Instances created as part of the modification request. This ID is only available when the status of the modification is `fulfilled`.
  ///
  /// *   `modification-result.target-configuration.availability-zone` \- The Availability Zone for the new Reserved Instances.
  ///
  /// *   `modification-result.target-configuration.instance-count` \- The number of new Reserved Instances.
  ///
  /// *   `modification-result.target-configuration.instance-type` \- The instance type of the new Reserved Instances.
  ///
  /// *   `reserved-instances-id` \- The ID of the Reserved Instances modified.
  ///
  /// *   `reserved-instances-modification-id` \- The ID of the modification request.
  ///
  /// *   `status` \- The status of the Reserved Instances modification request (`processing` | `fulfilled` | `failed`).
  ///
  /// *   `status-message` \- The reason for the status.
  ///
  /// *   `update-date` \- The time when the modification request was last updated.
  _i3.BuiltList<Filter>? get filters;

  /// IDs for the submitted modification request.
  _i3.BuiltList<String>? get reservedInstancesModificationIds;

  /// The token to retrieve the next page of results.
  String? get nextToken;
  @override
  DescribeReservedInstancesModificationsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        filters,
        reservedInstancesModificationIds,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeReservedInstancesModificationsRequest')
      ..add(
        'filters',
        filters,
      )
      ..add(
        'reservedInstancesModificationIds',
        reservedInstancesModificationIds,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class DescribeReservedInstancesModificationsRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<
        DescribeReservedInstancesModificationsRequest> {
  const DescribeReservedInstancesModificationsRequestEc2QuerySerializer()
      : super('DescribeReservedInstancesModificationsRequest');

  @override
  Iterable<Type> get types => const [
        DescribeReservedInstancesModificationsRequest,
        _$DescribeReservedInstancesModificationsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeReservedInstancesModificationsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeReservedInstancesModificationsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Filter':
          result.filters.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'Filter',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(Filter)],
            ),
          ) as _i3.BuiltList<Filter>));
        case 'ReservedInstancesModificationId':
          result.reservedInstancesModificationIds
              .replace((const _i1.XmlBuiltListSerializer(
            memberName: 'ReservedInstancesModificationId',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'nextToken':
          result.nextToken = (serializers.deserialize(
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
    DescribeReservedInstancesModificationsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeReservedInstancesModificationsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeReservedInstancesModificationsRequest(
      :filters,
      :reservedInstancesModificationIds,
      :nextToken
    ) = object;
    if (filters != null) {
      result$
        ..add(const _i1.XmlElementName('Filter'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'Filter',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          filters,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(Filter)],
          ),
        ));
    }
    if (reservedInstancesModificationIds != null) {
      result$
        ..add(const _i1.XmlElementName('ReservedInstancesModificationId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'ReservedInstancesModificationId',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          reservedInstancesModificationIds,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (nextToken != null) {
      result$
        ..add(const _i1.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}

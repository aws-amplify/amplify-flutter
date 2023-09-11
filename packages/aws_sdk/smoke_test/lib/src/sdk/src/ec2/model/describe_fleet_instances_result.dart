// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_fleet_instances_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/active_instance.dart';

part 'describe_fleet_instances_result.g.dart';

abstract class DescribeFleetInstancesResult
    with
        _i1.AWSEquatable<DescribeFleetInstancesResult>
    implements
        Built<DescribeFleetInstancesResult,
            DescribeFleetInstancesResultBuilder> {
  factory DescribeFleetInstancesResult({
    List<ActiveInstance>? activeInstances,
    String? nextToken,
    String? fleetId,
  }) {
    return _$DescribeFleetInstancesResult._(
      activeInstances:
          activeInstances == null ? null : _i2.BuiltList(activeInstances),
      nextToken: nextToken,
      fleetId: fleetId,
    );
  }

  factory DescribeFleetInstancesResult.build(
          [void Function(DescribeFleetInstancesResultBuilder) updates]) =
      _$DescribeFleetInstancesResult;

  const DescribeFleetInstancesResult._();

  /// Constructs a [DescribeFleetInstancesResult] from a [payload] and [response].
  factory DescribeFleetInstancesResult.fromResponse(
    DescribeFleetInstancesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeFleetInstancesResult>>
      serializers = [DescribeFleetInstancesResultEc2QuerySerializer()];

  /// The running instances. This list is refreshed periodically and might be out of date.
  _i2.BuiltList<ActiveInstance>? get activeInstances;

  /// The token to include in another request to get the next page of items. This value is `null` when there are no more items to return.
  String? get nextToken;

  /// The ID of the EC2 Fleet.
  String? get fleetId;
  @override
  List<Object?> get props => [
        activeInstances,
        nextToken,
        fleetId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeFleetInstancesResult')
      ..add(
        'activeInstances',
        activeInstances,
      )
      ..add(
        'nextToken',
        nextToken,
      )
      ..add(
        'fleetId',
        fleetId,
      );
    return helper.toString();
  }
}

class DescribeFleetInstancesResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeFleetInstancesResult> {
  const DescribeFleetInstancesResultEc2QuerySerializer()
      : super('DescribeFleetInstancesResult');

  @override
  Iterable<Type> get types => const [
        DescribeFleetInstancesResult,
        _$DescribeFleetInstancesResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeFleetInstancesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeFleetInstancesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'activeInstanceSet':
          result.activeInstances.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(ActiveInstance)],
            ),
          ) as _i2.BuiltList<ActiveInstance>));
        case 'nextToken':
          result.nextToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'fleetId':
          result.fleetId = (serializers.deserialize(
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
    DescribeFleetInstancesResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeFleetInstancesResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeFleetInstancesResult(:activeInstances, :nextToken, :fleetId) =
        object;
    if (activeInstances != null) {
      result$
        ..add(const _i3.XmlElementName('ActiveInstanceSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          activeInstances,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(ActiveInstance)],
          ),
        ));
    }
    if (nextToken != null) {
      result$
        ..add(const _i3.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    if (fleetId != null) {
      result$
        ..add(const _i3.XmlElementName('FleetId'))
        ..add(serializers.serialize(
          fleetId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}

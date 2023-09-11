// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_scheduled_instances_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/scheduled_instance.dart';

part 'describe_scheduled_instances_result.g.dart';

/// Contains the output of DescribeScheduledInstances.
abstract class DescribeScheduledInstancesResult
    with
        _i1.AWSEquatable<DescribeScheduledInstancesResult>
    implements
        Built<DescribeScheduledInstancesResult,
            DescribeScheduledInstancesResultBuilder> {
  /// Contains the output of DescribeScheduledInstances.
  factory DescribeScheduledInstancesResult({
    String? nextToken,
    List<ScheduledInstance>? scheduledInstanceSet,
  }) {
    return _$DescribeScheduledInstancesResult._(
      nextToken: nextToken,
      scheduledInstanceSet: scheduledInstanceSet == null
          ? null
          : _i2.BuiltList(scheduledInstanceSet),
    );
  }

  /// Contains the output of DescribeScheduledInstances.
  factory DescribeScheduledInstancesResult.build(
          [void Function(DescribeScheduledInstancesResultBuilder) updates]) =
      _$DescribeScheduledInstancesResult;

  const DescribeScheduledInstancesResult._();

  /// Constructs a [DescribeScheduledInstancesResult] from a [payload] and [response].
  factory DescribeScheduledInstancesResult.fromResponse(
    DescribeScheduledInstancesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeScheduledInstancesResult>>
      serializers = [DescribeScheduledInstancesResultEc2QuerySerializer()];

  /// The token required to retrieve the next set of results. This value is `null` when there are no more results to return.
  String? get nextToken;

  /// Information about the Scheduled Instances.
  _i2.BuiltList<ScheduledInstance>? get scheduledInstanceSet;
  @override
  List<Object?> get props => [
        nextToken,
        scheduledInstanceSet,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeScheduledInstancesResult')
          ..add(
            'nextToken',
            nextToken,
          )
          ..add(
            'scheduledInstanceSet',
            scheduledInstanceSet,
          );
    return helper.toString();
  }
}

class DescribeScheduledInstancesResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeScheduledInstancesResult> {
  const DescribeScheduledInstancesResultEc2QuerySerializer()
      : super('DescribeScheduledInstancesResult');

  @override
  Iterable<Type> get types => const [
        DescribeScheduledInstancesResult,
        _$DescribeScheduledInstancesResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeScheduledInstancesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeScheduledInstancesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'nextToken':
          result.nextToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'scheduledInstanceSet':
          result.scheduledInstanceSet.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(ScheduledInstance)],
            ),
          ) as _i2.BuiltList<ScheduledInstance>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeScheduledInstancesResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeScheduledInstancesResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeScheduledInstancesResult(:nextToken, :scheduledInstanceSet) =
        object;
    if (nextToken != null) {
      result$
        ..add(const _i3.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    if (scheduledInstanceSet != null) {
      result$
        ..add(const _i3.XmlElementName('ScheduledInstanceSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          scheduledInstanceSet,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(ScheduledInstance)],
          ),
        ));
    }
    return result$;
  }
}

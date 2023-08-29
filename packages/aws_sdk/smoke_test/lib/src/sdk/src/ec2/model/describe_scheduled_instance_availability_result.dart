// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_scheduled_instance_availability_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/scheduled_instance_availability.dart';

part 'describe_scheduled_instance_availability_result.g.dart';

/// Contains the output of DescribeScheduledInstanceAvailability.
abstract class DescribeScheduledInstanceAvailabilityResult
    with
        _i1.AWSEquatable<DescribeScheduledInstanceAvailabilityResult>
    implements
        Built<DescribeScheduledInstanceAvailabilityResult,
            DescribeScheduledInstanceAvailabilityResultBuilder> {
  /// Contains the output of DescribeScheduledInstanceAvailability.
  factory DescribeScheduledInstanceAvailabilityResult({
    String? nextToken,
    List<ScheduledInstanceAvailability>? scheduledInstanceAvailabilitySet,
  }) {
    return _$DescribeScheduledInstanceAvailabilityResult._(
      nextToken: nextToken,
      scheduledInstanceAvailabilitySet: scheduledInstanceAvailabilitySet == null
          ? null
          : _i2.BuiltList(scheduledInstanceAvailabilitySet),
    );
  }

  /// Contains the output of DescribeScheduledInstanceAvailability.
  factory DescribeScheduledInstanceAvailabilityResult.build(
      [void Function(DescribeScheduledInstanceAvailabilityResultBuilder)
          updates]) = _$DescribeScheduledInstanceAvailabilityResult;

  const DescribeScheduledInstanceAvailabilityResult._();

  /// Constructs a [DescribeScheduledInstanceAvailabilityResult] from a [payload] and [response].
  factory DescribeScheduledInstanceAvailabilityResult.fromResponse(
    DescribeScheduledInstanceAvailabilityResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i3.SmithySerializer<DescribeScheduledInstanceAvailabilityResult>>
      serializers = [
    DescribeScheduledInstanceAvailabilityResultEc2QuerySerializer()
  ];

  /// The token required to retrieve the next set of results. This value is `null` when there are no more results to return.
  String? get nextToken;

  /// Information about the available Scheduled Instances.
  _i2.BuiltList<ScheduledInstanceAvailability>?
      get scheduledInstanceAvailabilitySet;
  @override
  List<Object?> get props => [
        nextToken,
        scheduledInstanceAvailabilitySet,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeScheduledInstanceAvailabilityResult')
      ..add(
        'nextToken',
        nextToken,
      )
      ..add(
        'scheduledInstanceAvailabilitySet',
        scheduledInstanceAvailabilitySet,
      );
    return helper.toString();
  }
}

class DescribeScheduledInstanceAvailabilityResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<DescribeScheduledInstanceAvailabilityResult> {
  const DescribeScheduledInstanceAvailabilityResultEc2QuerySerializer()
      : super('DescribeScheduledInstanceAvailabilityResult');

  @override
  Iterable<Type> get types => const [
        DescribeScheduledInstanceAvailabilityResult,
        _$DescribeScheduledInstanceAvailabilityResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeScheduledInstanceAvailabilityResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeScheduledInstanceAvailabilityResultBuilder();
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
        case 'scheduledInstanceAvailabilitySet':
          result.scheduledInstanceAvailabilitySet
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(ScheduledInstanceAvailability)],
            ),
          ) as _i2.BuiltList<ScheduledInstanceAvailability>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeScheduledInstanceAvailabilityResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeScheduledInstanceAvailabilityResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeScheduledInstanceAvailabilityResult(
      :nextToken,
      :scheduledInstanceAvailabilitySet
    ) = object;
    if (nextToken != null) {
      result$
        ..add(const _i3.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    if (scheduledInstanceAvailabilitySet != null) {
      result$
        ..add(const _i3.XmlElementName('ScheduledInstanceAvailabilitySet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          scheduledInstanceAvailabilitySet,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(ScheduledInstanceAvailability)],
          ),
        ));
    }
    return result$;
  }
}

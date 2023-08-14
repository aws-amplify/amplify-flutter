// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_reserved_instances_modifications_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/reserved_instances_modification.dart';

part 'describe_reserved_instances_modifications_result.g.dart';

/// Contains the output of DescribeReservedInstancesModifications.
abstract class DescribeReservedInstancesModificationsResult
    with
        _i1.AWSEquatable<DescribeReservedInstancesModificationsResult>
    implements
        Built<DescribeReservedInstancesModificationsResult,
            DescribeReservedInstancesModificationsResultBuilder> {
  /// Contains the output of DescribeReservedInstancesModifications.
  factory DescribeReservedInstancesModificationsResult({
    String? nextToken,
    List<ReservedInstancesModification>? reservedInstancesModifications,
  }) {
    return _$DescribeReservedInstancesModificationsResult._(
      nextToken: nextToken,
      reservedInstancesModifications: reservedInstancesModifications == null
          ? null
          : _i2.BuiltList(reservedInstancesModifications),
    );
  }

  /// Contains the output of DescribeReservedInstancesModifications.
  factory DescribeReservedInstancesModificationsResult.build(
      [void Function(DescribeReservedInstancesModificationsResultBuilder)
          updates]) = _$DescribeReservedInstancesModificationsResult;

  const DescribeReservedInstancesModificationsResult._();

  /// Constructs a [DescribeReservedInstancesModificationsResult] from a [payload] and [response].
  factory DescribeReservedInstancesModificationsResult.fromResponse(
    DescribeReservedInstancesModificationsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i3.SmithySerializer<DescribeReservedInstancesModificationsResult>>
      serializers = [
    DescribeReservedInstancesModificationsResultEc2QuerySerializer()
  ];

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;

  /// The Reserved Instance modification information.
  _i2.BuiltList<ReservedInstancesModification>?
      get reservedInstancesModifications;
  @override
  List<Object?> get props => [
        nextToken,
        reservedInstancesModifications,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeReservedInstancesModificationsResult')
      ..add(
        'nextToken',
        nextToken,
      )
      ..add(
        'reservedInstancesModifications',
        reservedInstancesModifications,
      );
    return helper.toString();
  }
}

class DescribeReservedInstancesModificationsResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<DescribeReservedInstancesModificationsResult> {
  const DescribeReservedInstancesModificationsResultEc2QuerySerializer()
      : super('DescribeReservedInstancesModificationsResult');

  @override
  Iterable<Type> get types => const [
        DescribeReservedInstancesModificationsResult,
        _$DescribeReservedInstancesModificationsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeReservedInstancesModificationsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeReservedInstancesModificationsResultBuilder();
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
        case 'reservedInstancesModificationsSet':
          result.reservedInstancesModifications
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(ReservedInstancesModification)],
            ),
          ) as _i2.BuiltList<ReservedInstancesModification>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeReservedInstancesModificationsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeReservedInstancesModificationsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeReservedInstancesModificationsResult(
      :nextToken,
      :reservedInstancesModifications
    ) = object;
    if (nextToken != null) {
      result$
        ..add(const _i3.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    if (reservedInstancesModifications != null) {
      result$
        ..add(const _i3.XmlElementName('ReservedInstancesModificationsSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          reservedInstancesModifications,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(ReservedInstancesModification)],
          ),
        ));
    }
    return result$;
  }
}

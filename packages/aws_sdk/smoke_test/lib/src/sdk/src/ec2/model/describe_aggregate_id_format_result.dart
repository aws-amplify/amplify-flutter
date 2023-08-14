// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_aggregate_id_format_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/id_format.dart';

part 'describe_aggregate_id_format_result.g.dart';

abstract class DescribeAggregateIdFormatResult
    with
        _i1.AWSEquatable<DescribeAggregateIdFormatResult>
    implements
        Built<DescribeAggregateIdFormatResult,
            DescribeAggregateIdFormatResultBuilder> {
  factory DescribeAggregateIdFormatResult({
    bool? useLongIdsAggregated,
    List<IdFormat>? statuses,
  }) {
    useLongIdsAggregated ??= false;
    return _$DescribeAggregateIdFormatResult._(
      useLongIdsAggregated: useLongIdsAggregated,
      statuses: statuses == null ? null : _i2.BuiltList(statuses),
    );
  }

  factory DescribeAggregateIdFormatResult.build(
          [void Function(DescribeAggregateIdFormatResultBuilder) updates]) =
      _$DescribeAggregateIdFormatResult;

  const DescribeAggregateIdFormatResult._();

  /// Constructs a [DescribeAggregateIdFormatResult] from a [payload] and [response].
  factory DescribeAggregateIdFormatResult.fromResponse(
    DescribeAggregateIdFormatResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeAggregateIdFormatResult>>
      serializers = [DescribeAggregateIdFormatResultEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeAggregateIdFormatResultBuilder b) {
    b.useLongIdsAggregated = false;
  }

  /// Indicates whether all resource types in the Region are configured to use longer IDs. This value is only `true` if all users are configured to use longer IDs for all resources types in the Region.
  bool get useLongIdsAggregated;

  /// Information about each resource's ID format.
  _i2.BuiltList<IdFormat>? get statuses;
  @override
  List<Object?> get props => [
        useLongIdsAggregated,
        statuses,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeAggregateIdFormatResult')
          ..add(
            'useLongIdsAggregated',
            useLongIdsAggregated,
          )
          ..add(
            'statuses',
            statuses,
          );
    return helper.toString();
  }
}

class DescribeAggregateIdFormatResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeAggregateIdFormatResult> {
  const DescribeAggregateIdFormatResultEc2QuerySerializer()
      : super('DescribeAggregateIdFormatResult');

  @override
  Iterable<Type> get types => const [
        DescribeAggregateIdFormatResult,
        _$DescribeAggregateIdFormatResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeAggregateIdFormatResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeAggregateIdFormatResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'useLongIdsAggregated':
          result.useLongIdsAggregated = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'statusSet':
          result.statuses.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(IdFormat)],
            ),
          ) as _i2.BuiltList<IdFormat>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeAggregateIdFormatResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeAggregateIdFormatResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeAggregateIdFormatResult(:useLongIdsAggregated, :statuses) =
        object;
    result$
      ..add(const _i3.XmlElementName('UseLongIdsAggregated'))
      ..add(serializers.serialize(
        useLongIdsAggregated,
        specifiedType: const FullType(bool),
      ));
    if (statuses != null) {
      result$
        ..add(const _i3.XmlElementName('StatusSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          statuses,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(IdFormat)],
          ),
        ));
    }
    return result$;
  }
}

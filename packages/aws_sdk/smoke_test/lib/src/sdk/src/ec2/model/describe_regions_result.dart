// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_regions_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/region.dart';

part 'describe_regions_result.g.dart';

abstract class DescribeRegionsResult
    with _i1.AWSEquatable<DescribeRegionsResult>
    implements Built<DescribeRegionsResult, DescribeRegionsResultBuilder> {
  factory DescribeRegionsResult({List<Region>? regions}) {
    return _$DescribeRegionsResult._(
        regions: regions == null ? null : _i2.BuiltList(regions));
  }

  factory DescribeRegionsResult.build(
          [void Function(DescribeRegionsResultBuilder) updates]) =
      _$DescribeRegionsResult;

  const DescribeRegionsResult._();

  /// Constructs a [DescribeRegionsResult] from a [payload] and [response].
  factory DescribeRegionsResult.fromResponse(
    DescribeRegionsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeRegionsResult>> serializers = [
    DescribeRegionsResultEc2QuerySerializer()
  ];

  /// Information about the Regions.
  _i2.BuiltList<Region>? get regions;
  @override
  List<Object?> get props => [regions];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeRegionsResult')
      ..add(
        'regions',
        regions,
      );
    return helper.toString();
  }
}

class DescribeRegionsResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeRegionsResult> {
  const DescribeRegionsResultEc2QuerySerializer()
      : super('DescribeRegionsResult');

  @override
  Iterable<Type> get types => const [
        DescribeRegionsResult,
        _$DescribeRegionsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeRegionsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeRegionsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'regionInfo':
          result.regions.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Region)],
            ),
          ) as _i2.BuiltList<Region>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeRegionsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeRegionsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeRegionsResult(:regions) = object;
    if (regions != null) {
      result$
        ..add(const _i3.XmlElementName('RegionInfo'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          regions,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(Region)],
          ),
        ));
    }
    return result$;
  }
}

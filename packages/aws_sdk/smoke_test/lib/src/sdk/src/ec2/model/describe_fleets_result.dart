// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_fleets_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_data.dart';

part 'describe_fleets_result.g.dart';

abstract class DescribeFleetsResult
    with _i1.AWSEquatable<DescribeFleetsResult>
    implements Built<DescribeFleetsResult, DescribeFleetsResultBuilder> {
  factory DescribeFleetsResult({
    String? nextToken,
    List<FleetData>? fleets,
  }) {
    return _$DescribeFleetsResult._(
      nextToken: nextToken,
      fleets: fleets == null ? null : _i2.BuiltList(fleets),
    );
  }

  factory DescribeFleetsResult.build(
          [void Function(DescribeFleetsResultBuilder) updates]) =
      _$DescribeFleetsResult;

  const DescribeFleetsResult._();

  /// Constructs a [DescribeFleetsResult] from a [payload] and [response].
  factory DescribeFleetsResult.fromResponse(
    DescribeFleetsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeFleetsResult>> serializers = [
    DescribeFleetsResultEc2QuerySerializer()
  ];

  /// The token to include in another request to get the next page of items. This value is `null` when there are no more items to return.
  String? get nextToken;

  /// Information about the EC2 Fleets.
  _i2.BuiltList<FleetData>? get fleets;
  @override
  List<Object?> get props => [
        nextToken,
        fleets,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeFleetsResult')
      ..add(
        'nextToken',
        nextToken,
      )
      ..add(
        'fleets',
        fleets,
      );
    return helper.toString();
  }
}

class DescribeFleetsResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeFleetsResult> {
  const DescribeFleetsResultEc2QuerySerializer()
      : super('DescribeFleetsResult');

  @override
  Iterable<Type> get types => const [
        DescribeFleetsResult,
        _$DescribeFleetsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeFleetsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeFleetsResultBuilder();
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
        case 'fleetSet':
          result.fleets.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(FleetData)],
            ),
          ) as _i2.BuiltList<FleetData>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeFleetsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeFleetsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeFleetsResult(:nextToken, :fleets) = object;
    if (nextToken != null) {
      result$
        ..add(const _i3.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    if (fleets != null) {
      result$
        ..add(const _i3.XmlElementName('FleetSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          fleets,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(FleetData)],
          ),
        ));
    }
    return result$;
  }
}

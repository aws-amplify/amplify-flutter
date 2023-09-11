// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_regions_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart';

part 'describe_regions_request.g.dart';

abstract class DescribeRegionsRequest
    with
        _i1.HttpInput<DescribeRegionsRequest>,
        _i2.AWSEquatable<DescribeRegionsRequest>
    implements Built<DescribeRegionsRequest, DescribeRegionsRequestBuilder> {
  factory DescribeRegionsRequest({
    List<Filter>? filters,
    List<String>? regionNames,
    bool? dryRun,
    bool? allRegions,
  }) {
    dryRun ??= false;
    allRegions ??= false;
    return _$DescribeRegionsRequest._(
      filters: filters == null ? null : _i3.BuiltList(filters),
      regionNames: regionNames == null ? null : _i3.BuiltList(regionNames),
      dryRun: dryRun,
      allRegions: allRegions,
    );
  }

  factory DescribeRegionsRequest.build(
          [void Function(DescribeRegionsRequestBuilder) updates]) =
      _$DescribeRegionsRequest;

  const DescribeRegionsRequest._();

  factory DescribeRegionsRequest.fromRequest(
    DescribeRegionsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DescribeRegionsRequest>> serializers =
      [DescribeRegionsRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeRegionsRequestBuilder b) {
    b
      ..dryRun = false
      ..allRegions = false;
  }

  /// The filters.
  ///
  /// *   `endpoint` \- The endpoint of the Region (for example, `ec2.us-east-1.amazonaws.com`).
  ///
  /// *   `opt-in-status` \- The opt-in status of the Region (`opt-in-not-required` | `opted-in` | `not-opted-in`).
  ///
  /// *   `region-name` \- The name of the Region (for example, `us-east-1`).
  _i3.BuiltList<Filter>? get filters;

  /// The names of the Regions. You can specify any Regions, whether they are enabled and disabled for your account.
  _i3.BuiltList<String>? get regionNames;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// Indicates whether to display all Regions, including Regions that are disabled for your account.
  bool get allRegions;
  @override
  DescribeRegionsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        filters,
        regionNames,
        dryRun,
        allRegions,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeRegionsRequest')
      ..add(
        'filters',
        filters,
      )
      ..add(
        'regionNames',
        regionNames,
      )
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'allRegions',
        allRegions,
      );
    return helper.toString();
  }
}

class DescribeRegionsRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeRegionsRequest> {
  const DescribeRegionsRequestEc2QuerySerializer()
      : super('DescribeRegionsRequest');

  @override
  Iterable<Type> get types => const [
        DescribeRegionsRequest,
        _$DescribeRegionsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeRegionsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeRegionsRequestBuilder();
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
        case 'RegionName':
          result.regionNames.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'RegionName',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'AllRegions':
          result.allRegions = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeRegionsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeRegionsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeRegionsRequest(:filters, :regionNames, :dryRun, :allRegions) =
        object;
    if (filters != null) {
      result$
        ..add(const _i1.XmlElementName('Filter'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'Filter',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          filters,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(Filter)],
          ),
        ));
    }
    if (regionNames != null) {
      result$
        ..add(const _i1.XmlElementName('RegionName'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'RegionName',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          regionNames,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i1.XmlElementName('AllRegions'))
      ..add(serializers.serialize(
        allRegions,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}

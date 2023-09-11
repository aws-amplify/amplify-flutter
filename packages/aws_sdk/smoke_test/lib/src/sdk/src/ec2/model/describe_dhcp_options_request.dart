// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_dhcp_options_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart';

part 'describe_dhcp_options_request.g.dart';

abstract class DescribeDhcpOptionsRequest
    with
        _i1.HttpInput<DescribeDhcpOptionsRequest>,
        _i2.AWSEquatable<DescribeDhcpOptionsRequest>
    implements
        Built<DescribeDhcpOptionsRequest, DescribeDhcpOptionsRequestBuilder> {
  factory DescribeDhcpOptionsRequest({
    List<String>? dhcpOptionsIds,
    List<Filter>? filters,
    bool? dryRun,
    String? nextToken,
    int? maxResults,
  }) {
    dryRun ??= false;
    maxResults ??= 0;
    return _$DescribeDhcpOptionsRequest._(
      dhcpOptionsIds:
          dhcpOptionsIds == null ? null : _i3.BuiltList(dhcpOptionsIds),
      filters: filters == null ? null : _i3.BuiltList(filters),
      dryRun: dryRun,
      nextToken: nextToken,
      maxResults: maxResults,
    );
  }

  factory DescribeDhcpOptionsRequest.build(
          [void Function(DescribeDhcpOptionsRequestBuilder) updates]) =
      _$DescribeDhcpOptionsRequest;

  const DescribeDhcpOptionsRequest._();

  factory DescribeDhcpOptionsRequest.fromRequest(
    DescribeDhcpOptionsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DescribeDhcpOptionsRequest>>
      serializers = [DescribeDhcpOptionsRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeDhcpOptionsRequestBuilder b) {
    b
      ..dryRun = false
      ..maxResults = 0;
  }

  /// The IDs of one or more DHCP options sets.
  ///
  /// Default: Describes all your DHCP options sets.
  _i3.BuiltList<String>? get dhcpOptionsIds;

  /// The filters.
  ///
  /// *   `dhcp-options-id` \- The ID of a DHCP options set.
  ///
  /// *   `key` \- The key for one of the options (for example, `domain-name`).
  ///
  /// *   `value` \- The value for one of the options.
  ///
  /// *   `owner-id` \- The ID of the Amazon Web Services account that owns the DHCP options set.
  ///
  /// *   `tag`: \- The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
  ///
  /// *   `tag-key` \- The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
  _i3.BuiltList<Filter>? get filters;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The token returned from a previous paginated request. Pagination continues from the end of the items returned by the previous request.
  String? get nextToken;

  /// The maximum number of items to return for this request. To get the next page of items, make another request with the token returned in the output. For more information, see [Pagination](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination).
  int get maxResults;
  @override
  DescribeDhcpOptionsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dhcpOptionsIds,
        filters,
        dryRun,
        nextToken,
        maxResults,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeDhcpOptionsRequest')
      ..add(
        'dhcpOptionsIds',
        dhcpOptionsIds,
      )
      ..add(
        'filters',
        filters,
      )
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'nextToken',
        nextToken,
      )
      ..add(
        'maxResults',
        maxResults,
      );
    return helper.toString();
  }
}

class DescribeDhcpOptionsRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeDhcpOptionsRequest> {
  const DescribeDhcpOptionsRequestEc2QuerySerializer()
      : super('DescribeDhcpOptionsRequest');

  @override
  Iterable<Type> get types => const [
        DescribeDhcpOptionsRequest,
        _$DescribeDhcpOptionsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeDhcpOptionsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeDhcpOptionsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DhcpOptionsId':
          result.dhcpOptionsIds.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'DhcpOptionsId',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
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
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'NextToken':
          result.nextToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'MaxResults':
          result.maxResults = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeDhcpOptionsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeDhcpOptionsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeDhcpOptionsRequest(
      :dhcpOptionsIds,
      :filters,
      :dryRun,
      :nextToken,
      :maxResults
    ) = object;
    if (dhcpOptionsIds != null) {
      result$
        ..add(const _i1.XmlElementName('DhcpOptionsId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'DhcpOptionsId',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          dhcpOptionsIds,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
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
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (nextToken != null) {
      result$
        ..add(const _i1.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('MaxResults'))
      ..add(serializers.serialize(
        maxResults,
        specifiedType: const FullType(int),
      ));
    return result$;
  }
}

// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_addresses_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart';

part 'describe_addresses_request.g.dart';

abstract class DescribeAddressesRequest
    with
        _i1.HttpInput<DescribeAddressesRequest>,
        _i2.AWSEquatable<DescribeAddressesRequest>
    implements
        Built<DescribeAddressesRequest, DescribeAddressesRequestBuilder> {
  factory DescribeAddressesRequest({
    List<Filter>? filters,
    List<String>? publicIps,
    List<String>? allocationIds,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$DescribeAddressesRequest._(
      filters: filters == null ? null : _i3.BuiltList(filters),
      publicIps: publicIps == null ? null : _i3.BuiltList(publicIps),
      allocationIds:
          allocationIds == null ? null : _i3.BuiltList(allocationIds),
      dryRun: dryRun,
    );
  }

  factory DescribeAddressesRequest.build(
          [void Function(DescribeAddressesRequestBuilder) updates]) =
      _$DescribeAddressesRequest;

  const DescribeAddressesRequest._();

  factory DescribeAddressesRequest.fromRequest(
    DescribeAddressesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DescribeAddressesRequest>>
      serializers = [DescribeAddressesRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeAddressesRequestBuilder b) {
    b.dryRun = false;
  }

  /// One or more filters. Filter names and values are case-sensitive.
  ///
  /// *   `allocation-id` \- The allocation ID for the address.
  ///
  /// *   `association-id` \- The association ID for the address.
  ///
  /// *   `instance-id` \- The ID of the instance the address is associated with, if any.
  ///
  /// *   `network-border-group` \- A unique set of Availability Zones, Local Zones, or Wavelength Zones from where Amazon Web Services advertises IP addresses.
  ///
  /// *   `network-interface-id` \- The ID of the network interface that the address is associated with, if any.
  ///
  /// *   `network-interface-owner-id` \- The Amazon Web Services account ID of the owner.
  ///
  /// *   `private-ip-address` \- The private IP address associated with the Elastic IP address.
  ///
  /// *   `public-ip` \- The Elastic IP address, or the carrier IP address.
  ///
  /// *   `tag`: \- The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
  ///
  /// *   `tag-key` \- The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
  _i3.BuiltList<Filter>? get filters;

  /// One or more Elastic IP addresses.
  ///
  /// Default: Describes all your Elastic IP addresses.
  _i3.BuiltList<String>? get publicIps;

  /// Information about the allocation IDs.
  _i3.BuiltList<String>? get allocationIds;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DescribeAddressesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        filters,
        publicIps,
        allocationIds,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeAddressesRequest')
      ..add(
        'filters',
        filters,
      )
      ..add(
        'publicIps',
        publicIps,
      )
      ..add(
        'allocationIds',
        allocationIds,
      )
      ..add(
        'dryRun',
        dryRun,
      );
    return helper.toString();
  }
}

class DescribeAddressesRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeAddressesRequest> {
  const DescribeAddressesRequestEc2QuerySerializer()
      : super('DescribeAddressesRequest');

  @override
  Iterable<Type> get types => const [
        DescribeAddressesRequest,
        _$DescribeAddressesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeAddressesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeAddressesRequestBuilder();
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
        case 'PublicIp':
          result.publicIps.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'PublicIp',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'AllocationId':
          result.allocationIds.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'AllocationId',
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeAddressesRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeAddressesRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeAddressesRequest(
      :filters,
      :publicIps,
      :allocationIds,
      :dryRun
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
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(Filter)],
          ),
        ));
    }
    if (publicIps != null) {
      result$
        ..add(const _i1.XmlElementName('PublicIp'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'PublicIp',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          publicIps,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (allocationIds != null) {
      result$
        ..add(const _i1.XmlElementName('AllocationId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'AllocationId',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          allocationIds,
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
    return result$;
  }
}

// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_customer_gateways_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart';

part 'describe_customer_gateways_request.g.dart';

/// Contains the parameters for DescribeCustomerGateways.
abstract class DescribeCustomerGatewaysRequest
    with
        _i1.HttpInput<DescribeCustomerGatewaysRequest>,
        _i2.AWSEquatable<DescribeCustomerGatewaysRequest>
    implements
        Built<DescribeCustomerGatewaysRequest,
            DescribeCustomerGatewaysRequestBuilder> {
  /// Contains the parameters for DescribeCustomerGateways.
  factory DescribeCustomerGatewaysRequest({
    List<String>? customerGatewayIds,
    List<Filter>? filters,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$DescribeCustomerGatewaysRequest._(
      customerGatewayIds:
          customerGatewayIds == null ? null : _i3.BuiltList(customerGatewayIds),
      filters: filters == null ? null : _i3.BuiltList(filters),
      dryRun: dryRun,
    );
  }

  /// Contains the parameters for DescribeCustomerGateways.
  factory DescribeCustomerGatewaysRequest.build(
          [void Function(DescribeCustomerGatewaysRequestBuilder) updates]) =
      _$DescribeCustomerGatewaysRequest;

  const DescribeCustomerGatewaysRequest._();

  factory DescribeCustomerGatewaysRequest.fromRequest(
    DescribeCustomerGatewaysRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DescribeCustomerGatewaysRequest>>
      serializers = [DescribeCustomerGatewaysRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeCustomerGatewaysRequestBuilder b) {
    b.dryRun = false;
  }

  /// One or more customer gateway IDs.
  ///
  /// Default: Describes all your customer gateways.
  _i3.BuiltList<String>? get customerGatewayIds;

  /// One or more filters.
  ///
  /// *   `bgp-asn` \- The customer gateway's Border Gateway Protocol (BGP) Autonomous System Number (ASN).
  ///
  /// *   `customer-gateway-id` \- The ID of the customer gateway.
  ///
  /// *   `ip-address` \- The IP address of the customer gateway device's external interface.
  ///
  /// *   `state` \- The state of the customer gateway (`pending` | `available` | `deleting` | `deleted`).
  ///
  /// *   `type` \- The type of customer gateway. Currently, the only supported type is `ipsec.1`.
  ///
  /// *   `tag`: \- The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
  ///
  /// *   `tag-key` \- The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
  _i3.BuiltList<Filter>? get filters;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DescribeCustomerGatewaysRequest getPayload() => this;
  @override
  List<Object?> get props => [
        customerGatewayIds,
        filters,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeCustomerGatewaysRequest')
          ..add(
            'customerGatewayIds',
            customerGatewayIds,
          )
          ..add(
            'filters',
            filters,
          )
          ..add(
            'dryRun',
            dryRun,
          );
    return helper.toString();
  }
}

class DescribeCustomerGatewaysRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeCustomerGatewaysRequest> {
  const DescribeCustomerGatewaysRequestEc2QuerySerializer()
      : super('DescribeCustomerGatewaysRequest');

  @override
  Iterable<Type> get types => const [
        DescribeCustomerGatewaysRequest,
        _$DescribeCustomerGatewaysRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeCustomerGatewaysRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeCustomerGatewaysRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'CustomerGatewayId':
          result.customerGatewayIds.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'CustomerGatewayId',
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeCustomerGatewaysRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeCustomerGatewaysRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeCustomerGatewaysRequest(
      :customerGatewayIds,
      :filters,
      :dryRun
    ) = object;
    if (customerGatewayIds != null) {
      result$
        ..add(const _i1.XmlElementName('CustomerGatewayId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'CustomerGatewayId',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          customerGatewayIds,
          specifiedType: const FullType.nullable(
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
          specifiedType: const FullType.nullable(
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
    return result$;
  }
}

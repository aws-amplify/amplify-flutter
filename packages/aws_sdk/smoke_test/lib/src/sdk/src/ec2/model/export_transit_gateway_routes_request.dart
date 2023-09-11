// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.export_transit_gateway_routes_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart';

part 'export_transit_gateway_routes_request.g.dart';

abstract class ExportTransitGatewayRoutesRequest
    with
        _i1.HttpInput<ExportTransitGatewayRoutesRequest>,
        _i2.AWSEquatable<ExportTransitGatewayRoutesRequest>
    implements
        Built<ExportTransitGatewayRoutesRequest,
            ExportTransitGatewayRoutesRequestBuilder> {
  factory ExportTransitGatewayRoutesRequest({
    String? transitGatewayRouteTableId,
    List<Filter>? filters,
    String? s3Bucket,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$ExportTransitGatewayRoutesRequest._(
      transitGatewayRouteTableId: transitGatewayRouteTableId,
      filters: filters == null ? null : _i3.BuiltList(filters),
      s3Bucket: s3Bucket,
      dryRun: dryRun,
    );
  }

  factory ExportTransitGatewayRoutesRequest.build(
          [void Function(ExportTransitGatewayRoutesRequestBuilder) updates]) =
      _$ExportTransitGatewayRoutesRequest;

  const ExportTransitGatewayRoutesRequest._();

  factory ExportTransitGatewayRoutesRequest.fromRequest(
    ExportTransitGatewayRoutesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ExportTransitGatewayRoutesRequest>>
      serializers = [ExportTransitGatewayRoutesRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ExportTransitGatewayRoutesRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the route table.
  String? get transitGatewayRouteTableId;

  /// One or more filters. The possible values are:
  ///
  /// *   `attachment.transit-gateway-attachment-id` \- The id of the transit gateway attachment.
  ///
  /// *   `attachment.resource-id` \- The resource id of the transit gateway attachment.
  ///
  /// *   `route-search.exact-match` \- The exact match of the specified filter.
  ///
  /// *   `route-search.longest-prefix-match` \- The longest prefix that matches the route.
  ///
  /// *   `route-search.subnet-of-match` \- The routes with a subnet that match the specified CIDR filter.
  ///
  /// *   `route-search.supernet-of-match` \- The routes with a CIDR that encompass the CIDR filter. For example, if you have 10.0.1.0/29 and 10.0.1.0/31 routes in your route table and you specify supernet-of-match as 10.0.1.0/30, then the result returns 10.0.1.0/29.
  ///
  /// *   `state` \- The state of the route (`active` | `blackhole`).
  ///
  /// *   `transit-gateway-route-destination-cidr-block` \- The CIDR range.
  ///
  /// *   `type` \- The type of route (`propagated` | `static`).
  _i3.BuiltList<Filter>? get filters;

  /// The name of the S3 bucket.
  String? get s3Bucket;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  ExportTransitGatewayRoutesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        transitGatewayRouteTableId,
        filters,
        s3Bucket,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ExportTransitGatewayRoutesRequest')
          ..add(
            'transitGatewayRouteTableId',
            transitGatewayRouteTableId,
          )
          ..add(
            'filters',
            filters,
          )
          ..add(
            's3Bucket',
            s3Bucket,
          )
          ..add(
            'dryRun',
            dryRun,
          );
    return helper.toString();
  }
}

class ExportTransitGatewayRoutesRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ExportTransitGatewayRoutesRequest> {
  const ExportTransitGatewayRoutesRequestEc2QuerySerializer()
      : super('ExportTransitGatewayRoutesRequest');

  @override
  Iterable<Type> get types => const [
        ExportTransitGatewayRoutesRequest,
        _$ExportTransitGatewayRoutesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ExportTransitGatewayRoutesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExportTransitGatewayRoutesRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'TransitGatewayRouteTableId':
          result.transitGatewayRouteTableId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
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
        case 'S3Bucket':
          result.s3Bucket = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DryRun':
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
    ExportTransitGatewayRoutesRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ExportTransitGatewayRoutesRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ExportTransitGatewayRoutesRequest(
      :transitGatewayRouteTableId,
      :filters,
      :s3Bucket,
      :dryRun
    ) = object;
    if (transitGatewayRouteTableId != null) {
      result$
        ..add(const _i1.XmlElementName('TransitGatewayRouteTableId'))
        ..add(serializers.serialize(
          transitGatewayRouteTableId,
          specifiedType: const FullType(String),
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
    if (s3Bucket != null) {
      result$
        ..add(const _i1.XmlElementName('S3Bucket'))
        ..add(serializers.serialize(
          s3Bucket,
          specifiedType: const FullType(String),
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

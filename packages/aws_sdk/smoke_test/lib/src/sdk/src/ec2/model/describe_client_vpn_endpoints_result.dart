// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_client_vpn_endpoints_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/client_vpn_endpoint.dart';

part 'describe_client_vpn_endpoints_result.g.dart';

abstract class DescribeClientVpnEndpointsResult
    with
        _i1.AWSEquatable<DescribeClientVpnEndpointsResult>
    implements
        Built<DescribeClientVpnEndpointsResult,
            DescribeClientVpnEndpointsResultBuilder> {
  factory DescribeClientVpnEndpointsResult({
    List<ClientVpnEndpoint>? clientVpnEndpoints,
    String? nextToken,
  }) {
    return _$DescribeClientVpnEndpointsResult._(
      clientVpnEndpoints:
          clientVpnEndpoints == null ? null : _i2.BuiltList(clientVpnEndpoints),
      nextToken: nextToken,
    );
  }

  factory DescribeClientVpnEndpointsResult.build(
          [void Function(DescribeClientVpnEndpointsResultBuilder) updates]) =
      _$DescribeClientVpnEndpointsResult;

  const DescribeClientVpnEndpointsResult._();

  /// Constructs a [DescribeClientVpnEndpointsResult] from a [payload] and [response].
  factory DescribeClientVpnEndpointsResult.fromResponse(
    DescribeClientVpnEndpointsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeClientVpnEndpointsResult>>
      serializers = [DescribeClientVpnEndpointsResultEc2QuerySerializer()];

  /// Information about the Client VPN endpoints.
  _i2.BuiltList<ClientVpnEndpoint>? get clientVpnEndpoints;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        clientVpnEndpoints,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeClientVpnEndpointsResult')
          ..add(
            'clientVpnEndpoints',
            clientVpnEndpoints,
          )
          ..add(
            'nextToken',
            nextToken,
          );
    return helper.toString();
  }
}

class DescribeClientVpnEndpointsResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeClientVpnEndpointsResult> {
  const DescribeClientVpnEndpointsResultEc2QuerySerializer()
      : super('DescribeClientVpnEndpointsResult');

  @override
  Iterable<Type> get types => const [
        DescribeClientVpnEndpointsResult,
        _$DescribeClientVpnEndpointsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeClientVpnEndpointsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeClientVpnEndpointsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'clientVpnEndpoint':
          result.clientVpnEndpoints.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(ClientVpnEndpoint)],
            ),
          ) as _i2.BuiltList<ClientVpnEndpoint>));
        case 'nextToken':
          result.nextToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeClientVpnEndpointsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeClientVpnEndpointsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeClientVpnEndpointsResult(:clientVpnEndpoints, :nextToken) =
        object;
    if (clientVpnEndpoints != null) {
      result$
        ..add(const _i3.XmlElementName('ClientVpnEndpoint'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          clientVpnEndpoints,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(ClientVpnEndpoint)],
          ),
        ));
    }
    if (nextToken != null) {
      result$
        ..add(const _i3.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}

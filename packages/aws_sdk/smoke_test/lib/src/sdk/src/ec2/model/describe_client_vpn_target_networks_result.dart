// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_client_vpn_target_networks_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/target_network.dart';

part 'describe_client_vpn_target_networks_result.g.dart';

abstract class DescribeClientVpnTargetNetworksResult
    with
        _i1.AWSEquatable<DescribeClientVpnTargetNetworksResult>
    implements
        Built<DescribeClientVpnTargetNetworksResult,
            DescribeClientVpnTargetNetworksResultBuilder> {
  factory DescribeClientVpnTargetNetworksResult({
    List<TargetNetwork>? clientVpnTargetNetworks,
    String? nextToken,
  }) {
    return _$DescribeClientVpnTargetNetworksResult._(
      clientVpnTargetNetworks: clientVpnTargetNetworks == null
          ? null
          : _i2.BuiltList(clientVpnTargetNetworks),
      nextToken: nextToken,
    );
  }

  factory DescribeClientVpnTargetNetworksResult.build(
      [void Function(DescribeClientVpnTargetNetworksResultBuilder)
          updates]) = _$DescribeClientVpnTargetNetworksResult;

  const DescribeClientVpnTargetNetworksResult._();

  /// Constructs a [DescribeClientVpnTargetNetworksResult] from a [payload] and [response].
  factory DescribeClientVpnTargetNetworksResult.fromResponse(
    DescribeClientVpnTargetNetworksResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeClientVpnTargetNetworksResult>>
      serializers = [DescribeClientVpnTargetNetworksResultEc2QuerySerializer()];

  /// Information about the associated target networks.
  _i2.BuiltList<TargetNetwork>? get clientVpnTargetNetworks;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        clientVpnTargetNetworks,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeClientVpnTargetNetworksResult')
          ..add(
            'clientVpnTargetNetworks',
            clientVpnTargetNetworks,
          )
          ..add(
            'nextToken',
            nextToken,
          );
    return helper.toString();
  }
}

class DescribeClientVpnTargetNetworksResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<DescribeClientVpnTargetNetworksResult> {
  const DescribeClientVpnTargetNetworksResultEc2QuerySerializer()
      : super('DescribeClientVpnTargetNetworksResult');

  @override
  Iterable<Type> get types => const [
        DescribeClientVpnTargetNetworksResult,
        _$DescribeClientVpnTargetNetworksResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeClientVpnTargetNetworksResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeClientVpnTargetNetworksResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'clientVpnTargetNetworks':
          result.clientVpnTargetNetworks
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(TargetNetwork)],
            ),
          ) as _i2.BuiltList<TargetNetwork>));
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
    DescribeClientVpnTargetNetworksResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeClientVpnTargetNetworksResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeClientVpnTargetNetworksResult(
      :clientVpnTargetNetworks,
      :nextToken
    ) = object;
    if (clientVpnTargetNetworks != null) {
      result$
        ..add(const _i3.XmlElementName('ClientVpnTargetNetworks'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          clientVpnTargetNetworks,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(TargetNetwork)],
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

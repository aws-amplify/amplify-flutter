// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.get_transit_gateway_multicast_domain_associations_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_multicast_domain_association.dart';

part 'get_transit_gateway_multicast_domain_associations_result.g.dart';

abstract class GetTransitGatewayMulticastDomainAssociationsResult
    with
        _i1.AWSEquatable<GetTransitGatewayMulticastDomainAssociationsResult>
    implements
        Built<GetTransitGatewayMulticastDomainAssociationsResult,
            GetTransitGatewayMulticastDomainAssociationsResultBuilder> {
  factory GetTransitGatewayMulticastDomainAssociationsResult({
    List<TransitGatewayMulticastDomainAssociation>? multicastDomainAssociations,
    String? nextToken,
  }) {
    return _$GetTransitGatewayMulticastDomainAssociationsResult._(
      multicastDomainAssociations: multicastDomainAssociations == null
          ? null
          : _i2.BuiltList(multicastDomainAssociations),
      nextToken: nextToken,
    );
  }

  factory GetTransitGatewayMulticastDomainAssociationsResult.build(
      [void Function(GetTransitGatewayMulticastDomainAssociationsResultBuilder)
          updates]) = _$GetTransitGatewayMulticastDomainAssociationsResult;

  const GetTransitGatewayMulticastDomainAssociationsResult._();

  /// Constructs a [GetTransitGatewayMulticastDomainAssociationsResult] from a [payload] and [response].
  factory GetTransitGatewayMulticastDomainAssociationsResult.fromResponse(
    GetTransitGatewayMulticastDomainAssociationsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
      _i3.SmithySerializer<
          GetTransitGatewayMulticastDomainAssociationsResult>> serializers = [
    GetTransitGatewayMulticastDomainAssociationsResultEc2QuerySerializer()
  ];

  /// Information about the multicast domain associations.
  _i2.BuiltList<TransitGatewayMulticastDomainAssociation>?
      get multicastDomainAssociations;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        multicastDomainAssociations,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'GetTransitGatewayMulticastDomainAssociationsResult')
      ..add(
        'multicastDomainAssociations',
        multicastDomainAssociations,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class GetTransitGatewayMulticastDomainAssociationsResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<
        GetTransitGatewayMulticastDomainAssociationsResult> {
  const GetTransitGatewayMulticastDomainAssociationsResultEc2QuerySerializer()
      : super('GetTransitGatewayMulticastDomainAssociationsResult');

  @override
  Iterable<Type> get types => const [
        GetTransitGatewayMulticastDomainAssociationsResult,
        _$GetTransitGatewayMulticastDomainAssociationsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetTransitGatewayMulticastDomainAssociationsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetTransitGatewayMulticastDomainAssociationsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'multicastDomainAssociations':
          result.multicastDomainAssociations
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(TransitGatewayMulticastDomainAssociation)],
            ),
          ) as _i2.BuiltList<TransitGatewayMulticastDomainAssociation>));
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
    GetTransitGatewayMulticastDomainAssociationsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'GetTransitGatewayMulticastDomainAssociationsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final GetTransitGatewayMulticastDomainAssociationsResult(
      :multicastDomainAssociations,
      :nextToken
    ) = object;
    if (multicastDomainAssociations != null) {
      result$
        ..add(const _i3.XmlElementName('MulticastDomainAssociations'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          multicastDomainAssociations,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(TransitGatewayMulticastDomainAssociation)],
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

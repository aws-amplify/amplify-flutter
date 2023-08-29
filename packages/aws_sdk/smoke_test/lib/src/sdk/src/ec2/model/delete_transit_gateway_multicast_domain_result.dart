// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_transit_gateway_multicast_domain_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_multicast_domain.dart';

part 'delete_transit_gateway_multicast_domain_result.g.dart';

abstract class DeleteTransitGatewayMulticastDomainResult
    with
        _i1.AWSEquatable<DeleteTransitGatewayMulticastDomainResult>
    implements
        Built<DeleteTransitGatewayMulticastDomainResult,
            DeleteTransitGatewayMulticastDomainResultBuilder> {
  factory DeleteTransitGatewayMulticastDomainResult(
      {TransitGatewayMulticastDomain? transitGatewayMulticastDomain}) {
    return _$DeleteTransitGatewayMulticastDomainResult._(
        transitGatewayMulticastDomain: transitGatewayMulticastDomain);
  }

  factory DeleteTransitGatewayMulticastDomainResult.build(
      [void Function(DeleteTransitGatewayMulticastDomainResultBuilder)
          updates]) = _$DeleteTransitGatewayMulticastDomainResult;

  const DeleteTransitGatewayMulticastDomainResult._();

  /// Constructs a [DeleteTransitGatewayMulticastDomainResult] from a [payload] and [response].
  factory DeleteTransitGatewayMulticastDomainResult.fromResponse(
    DeleteTransitGatewayMulticastDomainResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i2.SmithySerializer<DeleteTransitGatewayMulticastDomainResult>>
      serializers = [
    DeleteTransitGatewayMulticastDomainResultEc2QuerySerializer()
  ];

  /// Information about the deleted transit gateway multicast domain.
  TransitGatewayMulticastDomain? get transitGatewayMulticastDomain;
  @override
  List<Object?> get props => [transitGatewayMulticastDomain];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteTransitGatewayMulticastDomainResult')
          ..add(
            'transitGatewayMulticastDomain',
            transitGatewayMulticastDomain,
          );
    return helper.toString();
  }
}

class DeleteTransitGatewayMulticastDomainResultEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<DeleteTransitGatewayMulticastDomainResult> {
  const DeleteTransitGatewayMulticastDomainResultEc2QuerySerializer()
      : super('DeleteTransitGatewayMulticastDomainResult');

  @override
  Iterable<Type> get types => const [
        DeleteTransitGatewayMulticastDomainResult,
        _$DeleteTransitGatewayMulticastDomainResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteTransitGatewayMulticastDomainResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteTransitGatewayMulticastDomainResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'transitGatewayMulticastDomain':
          result.transitGatewayMulticastDomain.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(TransitGatewayMulticastDomain),
          ) as TransitGatewayMulticastDomain));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeleteTransitGatewayMulticastDomainResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DeleteTransitGatewayMulticastDomainResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteTransitGatewayMulticastDomainResult(
      :transitGatewayMulticastDomain
    ) = object;
    if (transitGatewayMulticastDomain != null) {
      result$
        ..add(const _i2.XmlElementName('TransitGatewayMulticastDomain'))
        ..add(serializers.serialize(
          transitGatewayMulticastDomain,
          specifiedType: const FullType(TransitGatewayMulticastDomain),
        ));
    }
    return result$;
  }
}

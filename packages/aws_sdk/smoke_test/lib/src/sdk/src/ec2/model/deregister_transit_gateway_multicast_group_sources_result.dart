// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.deregister_transit_gateway_multicast_group_sources_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_multicast_deregistered_group_sources.dart';

part 'deregister_transit_gateway_multicast_group_sources_result.g.dart';

abstract class DeregisterTransitGatewayMulticastGroupSourcesResult
    with
        _i1.AWSEquatable<DeregisterTransitGatewayMulticastGroupSourcesResult>
    implements
        Built<DeregisterTransitGatewayMulticastGroupSourcesResult,
            DeregisterTransitGatewayMulticastGroupSourcesResultBuilder> {
  factory DeregisterTransitGatewayMulticastGroupSourcesResult(
      {TransitGatewayMulticastDeregisteredGroupSources?
          deregisteredMulticastGroupSources}) {
    return _$DeregisterTransitGatewayMulticastGroupSourcesResult._(
        deregisteredMulticastGroupSources: deregisteredMulticastGroupSources);
  }

  factory DeregisterTransitGatewayMulticastGroupSourcesResult.build(
      [void Function(DeregisterTransitGatewayMulticastGroupSourcesResultBuilder)
          updates]) = _$DeregisterTransitGatewayMulticastGroupSourcesResult;

  const DeregisterTransitGatewayMulticastGroupSourcesResult._();

  /// Constructs a [DeregisterTransitGatewayMulticastGroupSourcesResult] from a [payload] and [response].
  factory DeregisterTransitGatewayMulticastGroupSourcesResult.fromResponse(
    DeregisterTransitGatewayMulticastGroupSourcesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
      _i2.SmithySerializer<
          DeregisterTransitGatewayMulticastGroupSourcesResult>> serializers = [
    DeregisterTransitGatewayMulticastGroupSourcesResultEc2QuerySerializer()
  ];

  /// Information about the deregistered group sources.
  TransitGatewayMulticastDeregisteredGroupSources?
      get deregisteredMulticastGroupSources;
  @override
  List<Object?> get props => [deregisteredMulticastGroupSources];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DeregisterTransitGatewayMulticastGroupSourcesResult')
      ..add(
        'deregisteredMulticastGroupSources',
        deregisteredMulticastGroupSources,
      );
    return helper.toString();
  }
}

class DeregisterTransitGatewayMulticastGroupSourcesResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<
        DeregisterTransitGatewayMulticastGroupSourcesResult> {
  const DeregisterTransitGatewayMulticastGroupSourcesResultEc2QuerySerializer()
      : super('DeregisterTransitGatewayMulticastGroupSourcesResult');

  @override
  Iterable<Type> get types => const [
        DeregisterTransitGatewayMulticastGroupSourcesResult,
        _$DeregisterTransitGatewayMulticastGroupSourcesResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeregisterTransitGatewayMulticastGroupSourcesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeregisterTransitGatewayMulticastGroupSourcesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'deregisteredMulticastGroupSources':
          result.deregisteredMulticastGroupSources
              .replace((serializers.deserialize(
            value,
            specifiedType:
                const FullType(TransitGatewayMulticastDeregisteredGroupSources),
          ) as TransitGatewayMulticastDeregisteredGroupSources));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeregisterTransitGatewayMulticastGroupSourcesResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DeregisterTransitGatewayMulticastGroupSourcesResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeregisterTransitGatewayMulticastGroupSourcesResult(
      :deregisteredMulticastGroupSources
    ) = object;
    if (deregisteredMulticastGroupSources != null) {
      result$
        ..add(const _i2.XmlElementName('DeregisteredMulticastGroupSources'))
        ..add(serializers.serialize(
          deregisteredMulticastGroupSources,
          specifiedType:
              const FullType(TransitGatewayMulticastDeregisteredGroupSources),
        ));
    }
    return result$;
  }
}

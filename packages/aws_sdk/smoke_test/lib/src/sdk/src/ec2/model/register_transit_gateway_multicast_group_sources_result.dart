// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.register_transit_gateway_multicast_group_sources_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_multicast_registered_group_sources.dart';

part 'register_transit_gateway_multicast_group_sources_result.g.dart';

abstract class RegisterTransitGatewayMulticastGroupSourcesResult
    with
        _i1.AWSEquatable<RegisterTransitGatewayMulticastGroupSourcesResult>
    implements
        Built<RegisterTransitGatewayMulticastGroupSourcesResult,
            RegisterTransitGatewayMulticastGroupSourcesResultBuilder> {
  factory RegisterTransitGatewayMulticastGroupSourcesResult(
      {TransitGatewayMulticastRegisteredGroupSources?
          registeredMulticastGroupSources}) {
    return _$RegisterTransitGatewayMulticastGroupSourcesResult._(
        registeredMulticastGroupSources: registeredMulticastGroupSources);
  }

  factory RegisterTransitGatewayMulticastGroupSourcesResult.build(
      [void Function(RegisterTransitGatewayMulticastGroupSourcesResultBuilder)
          updates]) = _$RegisterTransitGatewayMulticastGroupSourcesResult;

  const RegisterTransitGatewayMulticastGroupSourcesResult._();

  /// Constructs a [RegisterTransitGatewayMulticastGroupSourcesResult] from a [payload] and [response].
  factory RegisterTransitGatewayMulticastGroupSourcesResult.fromResponse(
    RegisterTransitGatewayMulticastGroupSourcesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
      _i2.SmithySerializer<
          RegisterTransitGatewayMulticastGroupSourcesResult>> serializers = [
    RegisterTransitGatewayMulticastGroupSourcesResultEc2QuerySerializer()
  ];

  /// Information about the transit gateway multicast group sources.
  TransitGatewayMulticastRegisteredGroupSources?
      get registeredMulticastGroupSources;
  @override
  List<Object?> get props => [registeredMulticastGroupSources];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'RegisterTransitGatewayMulticastGroupSourcesResult')
      ..add(
        'registeredMulticastGroupSources',
        registeredMulticastGroupSources,
      );
    return helper.toString();
  }
}

class RegisterTransitGatewayMulticastGroupSourcesResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<
        RegisterTransitGatewayMulticastGroupSourcesResult> {
  const RegisterTransitGatewayMulticastGroupSourcesResultEc2QuerySerializer()
      : super('RegisterTransitGatewayMulticastGroupSourcesResult');

  @override
  Iterable<Type> get types => const [
        RegisterTransitGatewayMulticastGroupSourcesResult,
        _$RegisterTransitGatewayMulticastGroupSourcesResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  RegisterTransitGatewayMulticastGroupSourcesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RegisterTransitGatewayMulticastGroupSourcesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'registeredMulticastGroupSources':
          result.registeredMulticastGroupSources
              .replace((serializers.deserialize(
            value,
            specifiedType:
                const FullType(TransitGatewayMulticastRegisteredGroupSources),
          ) as TransitGatewayMulticastRegisteredGroupSources));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    RegisterTransitGatewayMulticastGroupSourcesResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'RegisterTransitGatewayMulticastGroupSourcesResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final RegisterTransitGatewayMulticastGroupSourcesResult(
      :registeredMulticastGroupSources
    ) = object;
    if (registeredMulticastGroupSources != null) {
      result$
        ..add(const _i2.XmlElementName('RegisteredMulticastGroupSources'))
        ..add(serializers.serialize(
          registeredMulticastGroupSources,
          specifiedType:
              const FullType(TransitGatewayMulticastRegisteredGroupSources),
        ));
    }
    return result$;
  }
}

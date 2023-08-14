// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.instance_market_options_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/market_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/spot_market_options.dart';

part 'instance_market_options_request.g.dart';

/// Describes the market (purchasing) option for the instances.
abstract class InstanceMarketOptionsRequest
    with
        _i1.AWSEquatable<InstanceMarketOptionsRequest>
    implements
        Built<InstanceMarketOptionsRequest,
            InstanceMarketOptionsRequestBuilder> {
  /// Describes the market (purchasing) option for the instances.
  factory InstanceMarketOptionsRequest({
    MarketType? marketType,
    SpotMarketOptions? spotOptions,
  }) {
    return _$InstanceMarketOptionsRequest._(
      marketType: marketType,
      spotOptions: spotOptions,
    );
  }

  /// Describes the market (purchasing) option for the instances.
  factory InstanceMarketOptionsRequest.build(
          [void Function(InstanceMarketOptionsRequestBuilder) updates]) =
      _$InstanceMarketOptionsRequest;

  const InstanceMarketOptionsRequest._();

  static const List<_i2.SmithySerializer<InstanceMarketOptionsRequest>>
      serializers = [InstanceMarketOptionsRequestEc2QuerySerializer()];

  /// The market type.
  MarketType? get marketType;

  /// The options for Spot Instances.
  SpotMarketOptions? get spotOptions;
  @override
  List<Object?> get props => [
        marketType,
        spotOptions,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InstanceMarketOptionsRequest')
      ..add(
        'marketType',
        marketType,
      )
      ..add(
        'spotOptions',
        spotOptions,
      );
    return helper.toString();
  }
}

class InstanceMarketOptionsRequestEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<InstanceMarketOptionsRequest> {
  const InstanceMarketOptionsRequestEc2QuerySerializer()
      : super('InstanceMarketOptionsRequest');

  @override
  Iterable<Type> get types => const [
        InstanceMarketOptionsRequest,
        _$InstanceMarketOptionsRequest,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InstanceMarketOptionsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceMarketOptionsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'MarketType':
          result.marketType = (serializers.deserialize(
            value,
            specifiedType: const FullType(MarketType),
          ) as MarketType);
        case 'SpotOptions':
          result.spotOptions.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(SpotMarketOptions),
          ) as SpotMarketOptions));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    InstanceMarketOptionsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'InstanceMarketOptionsRequestResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final InstanceMarketOptionsRequest(:marketType, :spotOptions) = object;
    if (marketType != null) {
      result$
        ..add(const _i2.XmlElementName('MarketType'))
        ..add(serializers.serialize(
          marketType,
          specifiedType: const FullType.nullable(MarketType),
        ));
    }
    if (spotOptions != null) {
      result$
        ..add(const _i2.XmlElementName('SpotOptions'))
        ..add(serializers.serialize(
          spotOptions,
          specifiedType: const FullType(SpotMarketOptions),
        ));
    }
    return result$;
  }
}

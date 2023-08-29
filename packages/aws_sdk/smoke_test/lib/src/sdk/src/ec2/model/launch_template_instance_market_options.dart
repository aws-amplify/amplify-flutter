// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.launch_template_instance_market_options; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_spot_market_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/market_type.dart';

part 'launch_template_instance_market_options.g.dart';

/// The market (purchasing) option for the instances.
abstract class LaunchTemplateInstanceMarketOptions
    with
        _i1.AWSEquatable<LaunchTemplateInstanceMarketOptions>
    implements
        Built<LaunchTemplateInstanceMarketOptions,
            LaunchTemplateInstanceMarketOptionsBuilder> {
  /// The market (purchasing) option for the instances.
  factory LaunchTemplateInstanceMarketOptions({
    MarketType? marketType,
    LaunchTemplateSpotMarketOptions? spotOptions,
  }) {
    return _$LaunchTemplateInstanceMarketOptions._(
      marketType: marketType,
      spotOptions: spotOptions,
    );
  }

  /// The market (purchasing) option for the instances.
  factory LaunchTemplateInstanceMarketOptions.build(
          [void Function(LaunchTemplateInstanceMarketOptionsBuilder) updates]) =
      _$LaunchTemplateInstanceMarketOptions;

  const LaunchTemplateInstanceMarketOptions._();

  static const List<_i2.SmithySerializer<LaunchTemplateInstanceMarketOptions>>
      serializers = [LaunchTemplateInstanceMarketOptionsEc2QuerySerializer()];

  /// The market type.
  MarketType? get marketType;

  /// The options for Spot Instances.
  LaunchTemplateSpotMarketOptions? get spotOptions;
  @override
  List<Object?> get props => [
        marketType,
        spotOptions,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('LaunchTemplateInstanceMarketOptions')
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

class LaunchTemplateInstanceMarketOptionsEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<LaunchTemplateInstanceMarketOptions> {
  const LaunchTemplateInstanceMarketOptionsEc2QuerySerializer()
      : super('LaunchTemplateInstanceMarketOptions');

  @override
  Iterable<Type> get types => const [
        LaunchTemplateInstanceMarketOptions,
        _$LaunchTemplateInstanceMarketOptions,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LaunchTemplateInstanceMarketOptions deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LaunchTemplateInstanceMarketOptionsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'marketType':
          result.marketType = (serializers.deserialize(
            value,
            specifiedType: const FullType(MarketType),
          ) as MarketType);
        case 'spotOptions':
          result.spotOptions.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(LaunchTemplateSpotMarketOptions),
          ) as LaunchTemplateSpotMarketOptions));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    LaunchTemplateInstanceMarketOptions object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'LaunchTemplateInstanceMarketOptionsResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final LaunchTemplateInstanceMarketOptions(:marketType, :spotOptions) =
        object;
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
          specifiedType: const FullType(LaunchTemplateSpotMarketOptions),
        ));
    }
    return result$;
  }
}

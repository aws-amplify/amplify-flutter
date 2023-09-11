// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.launch_template_spot_market_options; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_interruption_behavior.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/spot_instance_type.dart';

part 'launch_template_spot_market_options.g.dart';

/// The options for Spot Instances.
abstract class LaunchTemplateSpotMarketOptions
    with
        _i1.AWSEquatable<LaunchTemplateSpotMarketOptions>
    implements
        Built<LaunchTemplateSpotMarketOptions,
            LaunchTemplateSpotMarketOptionsBuilder> {
  /// The options for Spot Instances.
  factory LaunchTemplateSpotMarketOptions({
    String? maxPrice,
    SpotInstanceType? spotInstanceType,
    int? blockDurationMinutes,
    DateTime? validUntil,
    InstanceInterruptionBehavior? instanceInterruptionBehavior,
  }) {
    blockDurationMinutes ??= 0;
    return _$LaunchTemplateSpotMarketOptions._(
      maxPrice: maxPrice,
      spotInstanceType: spotInstanceType,
      blockDurationMinutes: blockDurationMinutes,
      validUntil: validUntil,
      instanceInterruptionBehavior: instanceInterruptionBehavior,
    );
  }

  /// The options for Spot Instances.
  factory LaunchTemplateSpotMarketOptions.build(
          [void Function(LaunchTemplateSpotMarketOptionsBuilder) updates]) =
      _$LaunchTemplateSpotMarketOptions;

  const LaunchTemplateSpotMarketOptions._();

  static const List<_i2.SmithySerializer<LaunchTemplateSpotMarketOptions>>
      serializers = [LaunchTemplateSpotMarketOptionsEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LaunchTemplateSpotMarketOptionsBuilder b) {
    b.blockDurationMinutes = 0;
  }

  /// The maximum hourly price you're willing to pay for the Spot Instances. We do not recommend using this parameter because it can lead to increased interruptions. If you do not specify this parameter, you will pay the current Spot price.
  ///
  /// If you specify a maximum price, your Spot Instances will be interrupted more frequently than if you do not specify this parameter.
  String? get maxPrice;

  /// The Spot Instance request type.
  SpotInstanceType? get spotInstanceType;

  /// The required duration for the Spot Instances (also known as Spot blocks), in minutes. This value must be a multiple of 60 (60, 120, 180, 240, 300, or 360).
  int get blockDurationMinutes;

  /// The end date of the request. For a one-time request, the request remains active until all instances launch, the request is canceled, or this date is reached. If the request is persistent, it remains active until it is canceled or this date and time is reached.
  DateTime? get validUntil;

  /// The behavior when a Spot Instance is interrupted.
  InstanceInterruptionBehavior? get instanceInterruptionBehavior;
  @override
  List<Object?> get props => [
        maxPrice,
        spotInstanceType,
        blockDurationMinutes,
        validUntil,
        instanceInterruptionBehavior,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('LaunchTemplateSpotMarketOptions')
          ..add(
            'maxPrice',
            maxPrice,
          )
          ..add(
            'spotInstanceType',
            spotInstanceType,
          )
          ..add(
            'blockDurationMinutes',
            blockDurationMinutes,
          )
          ..add(
            'validUntil',
            validUntil,
          )
          ..add(
            'instanceInterruptionBehavior',
            instanceInterruptionBehavior,
          );
    return helper.toString();
  }
}

class LaunchTemplateSpotMarketOptionsEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<LaunchTemplateSpotMarketOptions> {
  const LaunchTemplateSpotMarketOptionsEc2QuerySerializer()
      : super('LaunchTemplateSpotMarketOptions');

  @override
  Iterable<Type> get types => const [
        LaunchTemplateSpotMarketOptions,
        _$LaunchTemplateSpotMarketOptions,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LaunchTemplateSpotMarketOptions deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LaunchTemplateSpotMarketOptionsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'maxPrice':
          result.maxPrice = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'spotInstanceType':
          result.spotInstanceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(SpotInstanceType),
          ) as SpotInstanceType);
        case 'blockDurationMinutes':
          result.blockDurationMinutes = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'validUntil':
          result.validUntil = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'instanceInterruptionBehavior':
          result.instanceInterruptionBehavior = (serializers.deserialize(
            value,
            specifiedType: const FullType(InstanceInterruptionBehavior),
          ) as InstanceInterruptionBehavior);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    LaunchTemplateSpotMarketOptions object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'LaunchTemplateSpotMarketOptionsResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final LaunchTemplateSpotMarketOptions(
      :maxPrice,
      :spotInstanceType,
      :blockDurationMinutes,
      :validUntil,
      :instanceInterruptionBehavior
    ) = object;
    if (maxPrice != null) {
      result$
        ..add(const _i2.XmlElementName('MaxPrice'))
        ..add(serializers.serialize(
          maxPrice,
          specifiedType: const FullType(String),
        ));
    }
    if (spotInstanceType != null) {
      result$
        ..add(const _i2.XmlElementName('SpotInstanceType'))
        ..add(serializers.serialize(
          spotInstanceType,
          specifiedType: const FullType(SpotInstanceType),
        ));
    }
    result$
      ..add(const _i2.XmlElementName('BlockDurationMinutes'))
      ..add(serializers.serialize(
        blockDurationMinutes,
        specifiedType: const FullType(int),
      ));
    if (validUntil != null) {
      result$
        ..add(const _i2.XmlElementName('ValidUntil'))
        ..add(serializers.serialize(
          validUntil,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (instanceInterruptionBehavior != null) {
      result$
        ..add(const _i2.XmlElementName('InstanceInterruptionBehavior'))
        ..add(serializers.serialize(
          instanceInterruptionBehavior,
          specifiedType: const FullType(InstanceInterruptionBehavior),
        ));
    }
    return result$;
  }
}

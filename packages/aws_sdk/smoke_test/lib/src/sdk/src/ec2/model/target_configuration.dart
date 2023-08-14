// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.target_configuration; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'target_configuration.g.dart';

/// Information about the Convertible Reserved Instance offering.
abstract class TargetConfiguration
    with _i1.AWSEquatable<TargetConfiguration>
    implements Built<TargetConfiguration, TargetConfigurationBuilder> {
  /// Information about the Convertible Reserved Instance offering.
  factory TargetConfiguration({
    int? instanceCount,
    String? offeringId,
  }) {
    instanceCount ??= 0;
    return _$TargetConfiguration._(
      instanceCount: instanceCount,
      offeringId: offeringId,
    );
  }

  /// Information about the Convertible Reserved Instance offering.
  factory TargetConfiguration.build(
          [void Function(TargetConfigurationBuilder) updates]) =
      _$TargetConfiguration;

  const TargetConfiguration._();

  static const List<_i2.SmithySerializer<TargetConfiguration>> serializers = [
    TargetConfigurationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TargetConfigurationBuilder b) {
    b.instanceCount = 0;
  }

  /// The number of instances the Convertible Reserved Instance offering can be applied to. This parameter is reserved and cannot be specified in a request
  int get instanceCount;

  /// The ID of the Convertible Reserved Instance offering.
  String? get offeringId;
  @override
  List<Object?> get props => [
        instanceCount,
        offeringId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TargetConfiguration')
      ..add(
        'instanceCount',
        instanceCount,
      )
      ..add(
        'offeringId',
        offeringId,
      );
    return helper.toString();
  }
}

class TargetConfigurationEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<TargetConfiguration> {
  const TargetConfigurationEc2QuerySerializer() : super('TargetConfiguration');

  @override
  Iterable<Type> get types => const [
        TargetConfiguration,
        _$TargetConfiguration,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TargetConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TargetConfigurationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'instanceCount':
          result.instanceCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'offeringId':
          result.offeringId = (serializers.deserialize(
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
    TargetConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'TargetConfigurationResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final TargetConfiguration(:instanceCount, :offeringId) = object;
    result$
      ..add(const _i2.XmlElementName('InstanceCount'))
      ..add(serializers.serialize(
        instanceCount,
        specifiedType: const FullType(int),
      ));
    if (offeringId != null) {
      result$
        ..add(const _i2.XmlElementName('OfferingId'))
        ..add(serializers.serialize(
          offeringId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}

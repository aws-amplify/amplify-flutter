// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.target_configuration_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'target_configuration_request.g.dart';

/// Details about the target configuration.
abstract class TargetConfigurationRequest
    with _i1.AWSEquatable<TargetConfigurationRequest>
    implements
        Built<TargetConfigurationRequest, TargetConfigurationRequestBuilder> {
  /// Details about the target configuration.
  factory TargetConfigurationRequest({
    int? instanceCount,
    String? offeringId,
  }) {
    instanceCount ??= 0;
    return _$TargetConfigurationRequest._(
      instanceCount: instanceCount,
      offeringId: offeringId,
    );
  }

  /// Details about the target configuration.
  factory TargetConfigurationRequest.build(
          [void Function(TargetConfigurationRequestBuilder) updates]) =
      _$TargetConfigurationRequest;

  const TargetConfigurationRequest._();

  static const List<_i2.SmithySerializer<TargetConfigurationRequest>>
      serializers = [TargetConfigurationRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TargetConfigurationRequestBuilder b) {
    b.instanceCount = 0;
  }

  /// The number of instances the Convertible Reserved Instance offering can be applied to. This parameter is reserved and cannot be specified in a request
  int get instanceCount;

  /// The Convertible Reserved Instance offering ID.
  String? get offeringId;
  @override
  List<Object?> get props => [
        instanceCount,
        offeringId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TargetConfigurationRequest')
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

class TargetConfigurationRequestEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<TargetConfigurationRequest> {
  const TargetConfigurationRequestEc2QuerySerializer()
      : super('TargetConfigurationRequest');

  @override
  Iterable<Type> get types => const [
        TargetConfigurationRequest,
        _$TargetConfigurationRequest,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TargetConfigurationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TargetConfigurationRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'InstanceCount':
          result.instanceCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'OfferingId':
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
    TargetConfigurationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'TargetConfigurationRequestResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final TargetConfigurationRequest(:instanceCount, :offeringId) = object;
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

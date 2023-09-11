// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_spot_fleet_request_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/excess_capacity_termination_policy.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_config.dart';

part 'modify_spot_fleet_request_request.g.dart';

/// Contains the parameters for ModifySpotFleetRequest.
abstract class ModifySpotFleetRequestRequest
    with
        _i1.HttpInput<ModifySpotFleetRequestRequest>,
        _i2.AWSEquatable<ModifySpotFleetRequestRequest>
    implements
        Built<ModifySpotFleetRequestRequest,
            ModifySpotFleetRequestRequestBuilder> {
  /// Contains the parameters for ModifySpotFleetRequest.
  factory ModifySpotFleetRequestRequest({
    ExcessCapacityTerminationPolicy? excessCapacityTerminationPolicy,
    List<LaunchTemplateConfig>? launchTemplateConfigs,
    String? spotFleetRequestId,
    int? targetCapacity,
    int? onDemandTargetCapacity,
    String? context,
  }) {
    targetCapacity ??= 0;
    onDemandTargetCapacity ??= 0;
    return _$ModifySpotFleetRequestRequest._(
      excessCapacityTerminationPolicy: excessCapacityTerminationPolicy,
      launchTemplateConfigs: launchTemplateConfigs == null
          ? null
          : _i3.BuiltList(launchTemplateConfigs),
      spotFleetRequestId: spotFleetRequestId,
      targetCapacity: targetCapacity,
      onDemandTargetCapacity: onDemandTargetCapacity,
      context: context,
    );
  }

  /// Contains the parameters for ModifySpotFleetRequest.
  factory ModifySpotFleetRequestRequest.build(
          [void Function(ModifySpotFleetRequestRequestBuilder) updates]) =
      _$ModifySpotFleetRequestRequest;

  const ModifySpotFleetRequestRequest._();

  factory ModifySpotFleetRequestRequest.fromRequest(
    ModifySpotFleetRequestRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ModifySpotFleetRequestRequest>>
      serializers = [ModifySpotFleetRequestRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifySpotFleetRequestRequestBuilder b) {
    b
      ..targetCapacity = 0
      ..onDemandTargetCapacity = 0;
  }

  /// Indicates whether running instances should be terminated if the target capacity of the Spot Fleet request is decreased below the current size of the Spot Fleet.
  ///
  /// Supported only for fleets of type `maintain`.
  ExcessCapacityTerminationPolicy? get excessCapacityTerminationPolicy;

  /// The launch template and overrides. You can only use this parameter if you specified a launch template (`LaunchTemplateConfigs`) in your Spot Fleet request. If you specified `LaunchSpecifications` in your Spot Fleet request, then omit this parameter.
  _i3.BuiltList<LaunchTemplateConfig>? get launchTemplateConfigs;

  /// The ID of the Spot Fleet request.
  String? get spotFleetRequestId;

  /// The size of the fleet.
  int get targetCapacity;

  /// The number of On-Demand Instances in the fleet.
  int get onDemandTargetCapacity;

  /// Reserved.
  String? get context;
  @override
  ModifySpotFleetRequestRequest getPayload() => this;
  @override
  List<Object?> get props => [
        excessCapacityTerminationPolicy,
        launchTemplateConfigs,
        spotFleetRequestId,
        targetCapacity,
        onDemandTargetCapacity,
        context,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ModifySpotFleetRequestRequest')
      ..add(
        'excessCapacityTerminationPolicy',
        excessCapacityTerminationPolicy,
      )
      ..add(
        'launchTemplateConfigs',
        launchTemplateConfigs,
      )
      ..add(
        'spotFleetRequestId',
        spotFleetRequestId,
      )
      ..add(
        'targetCapacity',
        targetCapacity,
      )
      ..add(
        'onDemandTargetCapacity',
        onDemandTargetCapacity,
      )
      ..add(
        'context',
        context,
      );
    return helper.toString();
  }
}

class ModifySpotFleetRequestRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ModifySpotFleetRequestRequest> {
  const ModifySpotFleetRequestRequestEc2QuerySerializer()
      : super('ModifySpotFleetRequestRequest');

  @override
  Iterable<Type> get types => const [
        ModifySpotFleetRequestRequest,
        _$ModifySpotFleetRequestRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifySpotFleetRequestRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifySpotFleetRequestRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'excessCapacityTerminationPolicy':
          result.excessCapacityTerminationPolicy = (serializers.deserialize(
            value,
            specifiedType: const FullType(ExcessCapacityTerminationPolicy),
          ) as ExcessCapacityTerminationPolicy);
        case 'LaunchTemplateConfig':
          result.launchTemplateConfigs
              .replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(LaunchTemplateConfig)],
            ),
          ) as _i3.BuiltList<LaunchTemplateConfig>));
        case 'spotFleetRequestId':
          result.spotFleetRequestId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'targetCapacity':
          result.targetCapacity = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'OnDemandTargetCapacity':
          result.onDemandTargetCapacity = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'Context':
          result.context = (serializers.deserialize(
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
    ModifySpotFleetRequestRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ModifySpotFleetRequestRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifySpotFleetRequestRequest(
      :excessCapacityTerminationPolicy,
      :launchTemplateConfigs,
      :spotFleetRequestId,
      :targetCapacity,
      :onDemandTargetCapacity,
      :context
    ) = object;
    if (excessCapacityTerminationPolicy != null) {
      result$
        ..add(const _i1.XmlElementName('ExcessCapacityTerminationPolicy'))
        ..add(serializers.serialize(
          excessCapacityTerminationPolicy,
          specifiedType: const FullType(ExcessCapacityTerminationPolicy),
        ));
    }
    if (launchTemplateConfigs != null) {
      result$
        ..add(const _i1.XmlElementName('LaunchTemplateConfig'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          launchTemplateConfigs,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(LaunchTemplateConfig)],
          ),
        ));
    }
    if (spotFleetRequestId != null) {
      result$
        ..add(const _i1.XmlElementName('SpotFleetRequestId'))
        ..add(serializers.serialize(
          spotFleetRequestId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('TargetCapacity'))
      ..add(serializers.serialize(
        targetCapacity,
        specifiedType: const FullType(int),
      ));
    result$
      ..add(const _i1.XmlElementName('OnDemandTargetCapacity'))
      ..add(serializers.serialize(
        onDemandTargetCapacity,
        specifiedType: const FullType(int),
      ));
    if (context != null) {
      result$
        ..add(const _i1.XmlElementName('Context'))
        ..add(serializers.serialize(
          context,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}

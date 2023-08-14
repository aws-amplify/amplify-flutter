// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_fleet_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_excess_capacity_termination_policy.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_launch_template_config_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/target_capacity_specification_request.dart';

part 'modify_fleet_request.g.dart';

abstract class ModifyFleetRequest
    with _i1.HttpInput<ModifyFleetRequest>, _i2.AWSEquatable<ModifyFleetRequest>
    implements Built<ModifyFleetRequest, ModifyFleetRequestBuilder> {
  factory ModifyFleetRequest({
    bool? dryRun,
    FleetExcessCapacityTerminationPolicy? excessCapacityTerminationPolicy,
    List<FleetLaunchTemplateConfigRequest>? launchTemplateConfigs,
    String? fleetId,
    TargetCapacitySpecificationRequest? targetCapacitySpecification,
    String? context,
  }) {
    dryRun ??= false;
    return _$ModifyFleetRequest._(
      dryRun: dryRun,
      excessCapacityTerminationPolicy: excessCapacityTerminationPolicy,
      launchTemplateConfigs: launchTemplateConfigs == null
          ? null
          : _i3.BuiltList(launchTemplateConfigs),
      fleetId: fleetId,
      targetCapacitySpecification: targetCapacitySpecification,
      context: context,
    );
  }

  factory ModifyFleetRequest.build(
          [void Function(ModifyFleetRequestBuilder) updates]) =
      _$ModifyFleetRequest;

  const ModifyFleetRequest._();

  factory ModifyFleetRequest.fromRequest(
    ModifyFleetRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ModifyFleetRequest>> serializers = [
    ModifyFleetRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyFleetRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// Indicates whether running instances should be terminated if the total target capacity of the EC2 Fleet is decreased below the current size of the EC2 Fleet.
  ///
  /// Supported only for fleets of type `maintain`.
  FleetExcessCapacityTerminationPolicy? get excessCapacityTerminationPolicy;

  /// The launch template and overrides.
  _i3.BuiltList<FleetLaunchTemplateConfigRequest>? get launchTemplateConfigs;

  /// The ID of the EC2 Fleet.
  String? get fleetId;

  /// The size of the EC2 Fleet.
  TargetCapacitySpecificationRequest? get targetCapacitySpecification;

  /// Reserved.
  String? get context;
  @override
  ModifyFleetRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        excessCapacityTerminationPolicy,
        launchTemplateConfigs,
        fleetId,
        targetCapacitySpecification,
        context,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ModifyFleetRequest')
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'excessCapacityTerminationPolicy',
        excessCapacityTerminationPolicy,
      )
      ..add(
        'launchTemplateConfigs',
        launchTemplateConfigs,
      )
      ..add(
        'fleetId',
        fleetId,
      )
      ..add(
        'targetCapacitySpecification',
        targetCapacitySpecification,
      )
      ..add(
        'context',
        context,
      );
    return helper.toString();
  }
}

class ModifyFleetRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ModifyFleetRequest> {
  const ModifyFleetRequestEc2QuerySerializer() : super('ModifyFleetRequest');

  @override
  Iterable<Type> get types => const [
        ModifyFleetRequest,
        _$ModifyFleetRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyFleetRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyFleetRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'ExcessCapacityTerminationPolicy':
          result.excessCapacityTerminationPolicy = (serializers.deserialize(
            value,
            specifiedType: const FullType(FleetExcessCapacityTerminationPolicy),
          ) as FleetExcessCapacityTerminationPolicy);
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
              [FullType(FleetLaunchTemplateConfigRequest)],
            ),
          ) as _i3.BuiltList<FleetLaunchTemplateConfigRequest>));
        case 'FleetId':
          result.fleetId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TargetCapacitySpecification':
          result.targetCapacitySpecification.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(TargetCapacitySpecificationRequest),
          ) as TargetCapacitySpecificationRequest));
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
    ModifyFleetRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ModifyFleetRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyFleetRequest(
      :dryRun,
      :excessCapacityTerminationPolicy,
      :launchTemplateConfigs,
      :fleetId,
      :targetCapacitySpecification,
      :context
    ) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (excessCapacityTerminationPolicy != null) {
      result$
        ..add(const _i1.XmlElementName('ExcessCapacityTerminationPolicy'))
        ..add(serializers.serialize(
          excessCapacityTerminationPolicy,
          specifiedType:
              const FullType.nullable(FleetExcessCapacityTerminationPolicy),
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
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(FleetLaunchTemplateConfigRequest)],
          ),
        ));
    }
    if (fleetId != null) {
      result$
        ..add(const _i1.XmlElementName('FleetId'))
        ..add(serializers.serialize(
          fleetId,
          specifiedType: const FullType(String),
        ));
    }
    if (targetCapacitySpecification != null) {
      result$
        ..add(const _i1.XmlElementName('TargetCapacitySpecification'))
        ..add(serializers.serialize(
          targetCapacitySpecification,
          specifiedType: const FullType(TargetCapacitySpecificationRequest),
        ));
    }
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

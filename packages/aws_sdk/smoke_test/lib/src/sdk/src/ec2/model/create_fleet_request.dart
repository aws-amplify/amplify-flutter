// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_fleet_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_excess_capacity_termination_policy.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_launch_template_config_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/on_demand_options_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/spot_options_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/target_capacity_specification_request.dart';

part 'create_fleet_request.g.dart';

abstract class CreateFleetRequest
    with _i1.HttpInput<CreateFleetRequest>, _i2.AWSEquatable<CreateFleetRequest>
    implements Built<CreateFleetRequest, CreateFleetRequestBuilder> {
  factory CreateFleetRequest({
    bool? dryRun,
    String? clientToken,
    SpotOptionsRequest? spotOptions,
    OnDemandOptionsRequest? onDemandOptions,
    FleetExcessCapacityTerminationPolicy? excessCapacityTerminationPolicy,
    List<FleetLaunchTemplateConfigRequest>? launchTemplateConfigs,
    TargetCapacitySpecificationRequest? targetCapacitySpecification,
    bool? terminateInstancesWithExpiration,
    FleetType? type,
    DateTime? validFrom,
    DateTime? validUntil,
    bool? replaceUnhealthyInstances,
    List<TagSpecification>? tagSpecifications,
    String? context,
  }) {
    dryRun ??= false;
    terminateInstancesWithExpiration ??= false;
    replaceUnhealthyInstances ??= false;
    return _$CreateFleetRequest._(
      dryRun: dryRun,
      clientToken: clientToken,
      spotOptions: spotOptions,
      onDemandOptions: onDemandOptions,
      excessCapacityTerminationPolicy: excessCapacityTerminationPolicy,
      launchTemplateConfigs: launchTemplateConfigs == null
          ? null
          : _i3.BuiltList(launchTemplateConfigs),
      targetCapacitySpecification: targetCapacitySpecification,
      terminateInstancesWithExpiration: terminateInstancesWithExpiration,
      type: type,
      validFrom: validFrom,
      validUntil: validUntil,
      replaceUnhealthyInstances: replaceUnhealthyInstances,
      tagSpecifications:
          tagSpecifications == null ? null : _i3.BuiltList(tagSpecifications),
      context: context,
    );
  }

  factory CreateFleetRequest.build(
          [void Function(CreateFleetRequestBuilder) updates]) =
      _$CreateFleetRequest;

  const CreateFleetRequest._();

  factory CreateFleetRequest.fromRequest(
    CreateFleetRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CreateFleetRequest>> serializers = [
    CreateFleetRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateFleetRequestBuilder b) {
    b
      ..dryRun = false
      ..terminateInstancesWithExpiration = false
      ..replaceUnhealthyInstances = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see [Ensuring idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  String? get clientToken;

  /// Describes the configuration of Spot Instances in an EC2 Fleet.
  SpotOptionsRequest? get spotOptions;

  /// Describes the configuration of On-Demand Instances in an EC2 Fleet.
  OnDemandOptionsRequest? get onDemandOptions;

  /// Indicates whether running instances should be terminated if the total target capacity of the EC2 Fleet is decreased below the current size of the EC2 Fleet.
  ///
  /// Supported only for fleets of type `maintain`.
  FleetExcessCapacityTerminationPolicy? get excessCapacityTerminationPolicy;

  /// The configuration for the EC2 Fleet.
  _i3.BuiltList<FleetLaunchTemplateConfigRequest>? get launchTemplateConfigs;

  /// The number of units to request.
  TargetCapacitySpecificationRequest? get targetCapacitySpecification;

  /// Indicates whether running instances should be terminated when the EC2 Fleet expires.
  bool get terminateInstancesWithExpiration;

  /// The fleet type. The default value is `maintain`.
  ///
  /// *   `maintain` \- The EC2 Fleet places an asynchronous request for your desired capacity, and continues to maintain your desired Spot capacity by replenishing interrupted Spot Instances.
  ///
  /// *   `request` \- The EC2 Fleet places an asynchronous one-time request for your desired capacity, but does submit Spot requests in alternative capacity pools if Spot capacity is unavailable, and does not maintain Spot capacity if Spot Instances are interrupted.
  ///
  /// *   `instant` \- The EC2 Fleet places a synchronous one-time request for your desired capacity, and returns errors for any instances that could not be launched.
  ///
  ///
  /// For more information, see [EC2 Fleet request types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-fleet-request-type.html) in the _Amazon EC2 User Guide_.
  FleetType? get type;

  /// The start date and time of the request, in UTC format (for example, _YYYY_-_MM_-_DD_T_HH_:_MM_:_SS_Z). The default is to start fulfilling the request immediately.
  DateTime? get validFrom;

  /// The end date and time of the request, in UTC format (for example, _YYYY_-_MM_-_DD_T_HH_:_MM_:_SS_Z). At this point, no new EC2 Fleet requests are placed or able to fulfill the request. If no value is specified, the request remains until you cancel it.
  DateTime? get validUntil;

  /// Indicates whether EC2 Fleet should replace unhealthy Spot Instances. Supported only for fleets of type `maintain`. For more information, see [EC2 Fleet health checks](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/manage-ec2-fleet.html#ec2-fleet-health-checks) in the _Amazon EC2 User Guide_.
  bool get replaceUnhealthyInstances;

  /// The key-value pair for tagging the EC2 Fleet request on creation. For more information, see [Tagging your resources](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html#tag-resources).
  ///
  /// If the fleet type is `instant`, specify a resource type of `fleet` to tag the fleet or `instance` to tag the instances at launch.
  ///
  /// If the fleet type is `maintain` or `request`, specify a resource type of `fleet` to tag the fleet. You cannot specify a resource type of `instance`. To tag instances at launch, specify the tags in a [launch template](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html#create-launch-template).
  _i3.BuiltList<TagSpecification>? get tagSpecifications;

  /// Reserved.
  String? get context;
  @override
  CreateFleetRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        clientToken,
        spotOptions,
        onDemandOptions,
        excessCapacityTerminationPolicy,
        launchTemplateConfigs,
        targetCapacitySpecification,
        terminateInstancesWithExpiration,
        type,
        validFrom,
        validUntil,
        replaceUnhealthyInstances,
        tagSpecifications,
        context,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateFleetRequest')
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'clientToken',
        clientToken,
      )
      ..add(
        'spotOptions',
        spotOptions,
      )
      ..add(
        'onDemandOptions',
        onDemandOptions,
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
        'targetCapacitySpecification',
        targetCapacitySpecification,
      )
      ..add(
        'terminateInstancesWithExpiration',
        terminateInstancesWithExpiration,
      )
      ..add(
        'type',
        type,
      )
      ..add(
        'validFrom',
        validFrom,
      )
      ..add(
        'validUntil',
        validUntil,
      )
      ..add(
        'replaceUnhealthyInstances',
        replaceUnhealthyInstances,
      )
      ..add(
        'tagSpecifications',
        tagSpecifications,
      )
      ..add(
        'context',
        context,
      );
    return helper.toString();
  }
}

class CreateFleetRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CreateFleetRequest> {
  const CreateFleetRequestEc2QuerySerializer() : super('CreateFleetRequest');

  @override
  Iterable<Type> get types => const [
        CreateFleetRequest,
        _$CreateFleetRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateFleetRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateFleetRequestBuilder();
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
        case 'ClientToken':
          result.clientToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'SpotOptions':
          result.spotOptions.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(SpotOptionsRequest),
          ) as SpotOptionsRequest));
        case 'OnDemandOptions':
          result.onDemandOptions.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(OnDemandOptionsRequest),
          ) as OnDemandOptionsRequest));
        case 'ExcessCapacityTerminationPolicy':
          result.excessCapacityTerminationPolicy = (serializers.deserialize(
            value,
            specifiedType: const FullType(FleetExcessCapacityTerminationPolicy),
          ) as FleetExcessCapacityTerminationPolicy);
        case 'LaunchTemplateConfigs':
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
        case 'TargetCapacitySpecification':
          result.targetCapacitySpecification.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(TargetCapacitySpecificationRequest),
          ) as TargetCapacitySpecificationRequest));
        case 'TerminateInstancesWithExpiration':
          result.terminateInstancesWithExpiration = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'Type':
          result.type = (serializers.deserialize(
            value,
            specifiedType: const FullType(FleetType),
          ) as FleetType);
        case 'ValidFrom':
          result.validFrom = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'ValidUntil':
          result.validUntil = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'ReplaceUnhealthyInstances':
          result.replaceUnhealthyInstances = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'TagSpecification':
          result.tagSpecifications.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(TagSpecification)],
            ),
          ) as _i3.BuiltList<TagSpecification>));
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
    CreateFleetRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateFleetRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateFleetRequest(
      :dryRun,
      :clientToken,
      :spotOptions,
      :onDemandOptions,
      :excessCapacityTerminationPolicy,
      :launchTemplateConfigs,
      :targetCapacitySpecification,
      :terminateInstancesWithExpiration,
      :type,
      :validFrom,
      :validUntil,
      :replaceUnhealthyInstances,
      :tagSpecifications,
      :context
    ) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (clientToken != null) {
      result$
        ..add(const _i1.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          clientToken,
          specifiedType: const FullType(String),
        ));
    }
    if (spotOptions != null) {
      result$
        ..add(const _i1.XmlElementName('SpotOptions'))
        ..add(serializers.serialize(
          spotOptions,
          specifiedType: const FullType(SpotOptionsRequest),
        ));
    }
    if (onDemandOptions != null) {
      result$
        ..add(const _i1.XmlElementName('OnDemandOptions'))
        ..add(serializers.serialize(
          onDemandOptions,
          specifiedType: const FullType(OnDemandOptionsRequest),
        ));
    }
    if (excessCapacityTerminationPolicy != null) {
      result$
        ..add(const _i1.XmlElementName('ExcessCapacityTerminationPolicy'))
        ..add(serializers.serialize(
          excessCapacityTerminationPolicy,
          specifiedType: const FullType(FleetExcessCapacityTerminationPolicy),
        ));
    }
    if (launchTemplateConfigs != null) {
      result$
        ..add(const _i1.XmlElementName('LaunchTemplateConfigs'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          launchTemplateConfigs,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(FleetLaunchTemplateConfigRequest)],
          ),
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
    result$
      ..add(const _i1.XmlElementName('TerminateInstancesWithExpiration'))
      ..add(serializers.serialize(
        terminateInstancesWithExpiration,
        specifiedType: const FullType(bool),
      ));
    if (type != null) {
      result$
        ..add(const _i1.XmlElementName('Type'))
        ..add(serializers.serialize(
          type,
          specifiedType: const FullType(FleetType),
        ));
    }
    if (validFrom != null) {
      result$
        ..add(const _i1.XmlElementName('ValidFrom'))
        ..add(serializers.serialize(
          validFrom,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (validUntil != null) {
      result$
        ..add(const _i1.XmlElementName('ValidUntil'))
        ..add(serializers.serialize(
          validUntil,
          specifiedType: const FullType(DateTime),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('ReplaceUnhealthyInstances'))
      ..add(serializers.serialize(
        replaceUnhealthyInstances,
        specifiedType: const FullType(bool),
      ));
    if (tagSpecifications != null) {
      result$
        ..add(const _i1.XmlElementName('TagSpecification'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tagSpecifications,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(TagSpecification)],
          ),
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

// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.spot_instance_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_interruption_behavior.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ri_product_description.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/spot_instance_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/spot_instance_state_fault.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/spot_instance_status.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/spot_instance_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';

part 'spot_instance_request.g.dart';

/// Describes a Spot Instance request.
abstract class SpotInstanceRequest
    with _i1.AWSEquatable<SpotInstanceRequest>
    implements Built<SpotInstanceRequest, SpotInstanceRequestBuilder> {
  /// Describes a Spot Instance request.
  factory SpotInstanceRequest({
    String? actualBlockHourlyPrice,
    String? availabilityZoneGroup,
    int? blockDurationMinutes,
    DateTime? createTime,
    SpotInstanceStateFault? fault,
    String? instanceId,
    String? launchGroup,
    LaunchSpecification? launchSpecification,
    String? launchedAvailabilityZone,
    RiProductDescription? productDescription,
    String? spotInstanceRequestId,
    String? spotPrice,
    SpotInstanceState? state,
    SpotInstanceStatus? status,
    List<Tag>? tags,
    SpotInstanceType? type,
    DateTime? validFrom,
    DateTime? validUntil,
    InstanceInterruptionBehavior? instanceInterruptionBehavior,
  }) {
    blockDurationMinutes ??= 0;
    return _$SpotInstanceRequest._(
      actualBlockHourlyPrice: actualBlockHourlyPrice,
      availabilityZoneGroup: availabilityZoneGroup,
      blockDurationMinutes: blockDurationMinutes,
      createTime: createTime,
      fault: fault,
      instanceId: instanceId,
      launchGroup: launchGroup,
      launchSpecification: launchSpecification,
      launchedAvailabilityZone: launchedAvailabilityZone,
      productDescription: productDescription,
      spotInstanceRequestId: spotInstanceRequestId,
      spotPrice: spotPrice,
      state: state,
      status: status,
      tags: tags == null ? null : _i2.BuiltList(tags),
      type: type,
      validFrom: validFrom,
      validUntil: validUntil,
      instanceInterruptionBehavior: instanceInterruptionBehavior,
    );
  }

  /// Describes a Spot Instance request.
  factory SpotInstanceRequest.build(
          [void Function(SpotInstanceRequestBuilder) updates]) =
      _$SpotInstanceRequest;

  const SpotInstanceRequest._();

  static const List<_i3.SmithySerializer<SpotInstanceRequest>> serializers = [
    SpotInstanceRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SpotInstanceRequestBuilder b) {
    b.blockDurationMinutes = 0;
  }

  /// Deprecated.
  String? get actualBlockHourlyPrice;

  /// The Availability Zone group. If you specify the same Availability Zone group for all Spot Instance requests, all Spot Instances are launched in the same Availability Zone.
  String? get availabilityZoneGroup;

  /// Deprecated.
  int get blockDurationMinutes;

  /// The date and time when the Spot Instance request was created, in UTC format (for example, _YYYY_-_MM_-_DD_T_HH_:_MM_:_SS_Z).
  DateTime? get createTime;

  /// The fault codes for the Spot Instance request, if any.
  SpotInstanceStateFault? get fault;

  /// The instance ID, if an instance has been launched to fulfill the Spot Instance request.
  String? get instanceId;

  /// The instance launch group. Launch groups are Spot Instances that launch together and terminate together.
  String? get launchGroup;

  /// Additional information for launching instances.
  LaunchSpecification? get launchSpecification;

  /// The Availability Zone in which the request is launched.
  String? get launchedAvailabilityZone;

  /// The product description associated with the Spot Instance.
  RiProductDescription? get productDescription;

  /// The ID of the Spot Instance request.
  String? get spotInstanceRequestId;

  /// The maximum price per unit hour that you are willing to pay for a Spot Instance. We do not recommend using this parameter because it can lead to increased interruptions. If you do not specify this parameter, you will pay the current Spot price.
  ///
  /// If you specify a maximum price, your instances will be interrupted more frequently than if you do not specify this parameter.
  String? get spotPrice;

  /// The state of the Spot Instance request. Spot request status information helps track your Spot Instance requests. For more information, see [Spot request status](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-request-status.html) in the _Amazon EC2 User Guide for Linux Instances_.
  SpotInstanceState? get state;

  /// The status code and status message describing the Spot Instance request.
  SpotInstanceStatus? get status;

  /// Any tags assigned to the resource.
  _i2.BuiltList<Tag>? get tags;

  /// The Spot Instance request type.
  SpotInstanceType? get type;

  /// The start date of the request, in UTC format (for example, _YYYY_-_MM_-_DD_T_HH_:_MM_:_SS_Z). The request becomes active at this date and time.
  DateTime? get validFrom;

  /// The end date of the request, in UTC format (_YYYY_-_MM_-_DD_T_HH_:_MM_:_SS_Z).
  ///
  /// *   For a persistent request, the request remains active until the `validUntil` date and time is reached. Otherwise, the request remains active until you cancel it.
  ///
  /// *   For a one-time request, the request remains active until all instances launch, the request is canceled, or the `validUntil` date and time is reached. By default, the request is valid for 7 days from the date the request was created.
  DateTime? get validUntil;

  /// The behavior when a Spot Instance is interrupted.
  InstanceInterruptionBehavior? get instanceInterruptionBehavior;
  @override
  List<Object?> get props => [
        actualBlockHourlyPrice,
        availabilityZoneGroup,
        blockDurationMinutes,
        createTime,
        fault,
        instanceId,
        launchGroup,
        launchSpecification,
        launchedAvailabilityZone,
        productDescription,
        spotInstanceRequestId,
        spotPrice,
        state,
        status,
        tags,
        type,
        validFrom,
        validUntil,
        instanceInterruptionBehavior,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SpotInstanceRequest')
      ..add(
        'actualBlockHourlyPrice',
        actualBlockHourlyPrice,
      )
      ..add(
        'availabilityZoneGroup',
        availabilityZoneGroup,
      )
      ..add(
        'blockDurationMinutes',
        blockDurationMinutes,
      )
      ..add(
        'createTime',
        createTime,
      )
      ..add(
        'fault',
        fault,
      )
      ..add(
        'instanceId',
        instanceId,
      )
      ..add(
        'launchGroup',
        launchGroup,
      )
      ..add(
        'launchSpecification',
        launchSpecification,
      )
      ..add(
        'launchedAvailabilityZone',
        launchedAvailabilityZone,
      )
      ..add(
        'productDescription',
        productDescription,
      )
      ..add(
        'spotInstanceRequestId',
        spotInstanceRequestId,
      )
      ..add(
        'spotPrice',
        spotPrice,
      )
      ..add(
        'state',
        state,
      )
      ..add(
        'status',
        status,
      )
      ..add(
        'tags',
        tags,
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
        'instanceInterruptionBehavior',
        instanceInterruptionBehavior,
      );
    return helper.toString();
  }
}

class SpotInstanceRequestEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<SpotInstanceRequest> {
  const SpotInstanceRequestEc2QuerySerializer() : super('SpotInstanceRequest');

  @override
  Iterable<Type> get types => const [
        SpotInstanceRequest,
        _$SpotInstanceRequest,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  SpotInstanceRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SpotInstanceRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'actualBlockHourlyPrice':
          result.actualBlockHourlyPrice = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'availabilityZoneGroup':
          result.availabilityZoneGroup = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'blockDurationMinutes':
          result.blockDurationMinutes = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'createTime':
          result.createTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'fault':
          result.fault.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(SpotInstanceStateFault),
          ) as SpotInstanceStateFault));
        case 'instanceId':
          result.instanceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'launchGroup':
          result.launchGroup = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'launchSpecification':
          result.launchSpecification.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(LaunchSpecification),
          ) as LaunchSpecification));
        case 'launchedAvailabilityZone':
          result.launchedAvailabilityZone = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'productDescription':
          result.productDescription = (serializers.deserialize(
            value,
            specifiedType: const FullType(RiProductDescription),
          ) as RiProductDescription);
        case 'spotInstanceRequestId':
          result.spotInstanceRequestId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'spotPrice':
          result.spotPrice = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(SpotInstanceState),
          ) as SpotInstanceState);
        case 'status':
          result.status.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(SpotInstanceStatus),
          ) as SpotInstanceStatus));
        case 'tagSet':
          result.tags.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Tag)],
            ),
          ) as _i2.BuiltList<Tag>));
        case 'type':
          result.type = (serializers.deserialize(
            value,
            specifiedType: const FullType(SpotInstanceType),
          ) as SpotInstanceType);
        case 'validFrom':
          result.validFrom = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
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
    SpotInstanceRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'SpotInstanceRequestResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final SpotInstanceRequest(
      :actualBlockHourlyPrice,
      :availabilityZoneGroup,
      :blockDurationMinutes,
      :createTime,
      :fault,
      :instanceId,
      :launchGroup,
      :launchSpecification,
      :launchedAvailabilityZone,
      :productDescription,
      :spotInstanceRequestId,
      :spotPrice,
      :state,
      :status,
      :tags,
      :type,
      :validFrom,
      :validUntil,
      :instanceInterruptionBehavior
    ) = object;
    if (actualBlockHourlyPrice != null) {
      result$
        ..add(const _i3.XmlElementName('ActualBlockHourlyPrice'))
        ..add(serializers.serialize(
          actualBlockHourlyPrice,
          specifiedType: const FullType(String),
        ));
    }
    if (availabilityZoneGroup != null) {
      result$
        ..add(const _i3.XmlElementName('AvailabilityZoneGroup'))
        ..add(serializers.serialize(
          availabilityZoneGroup,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('BlockDurationMinutes'))
      ..add(serializers.serialize(
        blockDurationMinutes,
        specifiedType: const FullType(int),
      ));
    if (createTime != null) {
      result$
        ..add(const _i3.XmlElementName('CreateTime'))
        ..add(serializers.serialize(
          createTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (fault != null) {
      result$
        ..add(const _i3.XmlElementName('Fault'))
        ..add(serializers.serialize(
          fault,
          specifiedType: const FullType(SpotInstanceStateFault),
        ));
    }
    if (instanceId != null) {
      result$
        ..add(const _i3.XmlElementName('InstanceId'))
        ..add(serializers.serialize(
          instanceId,
          specifiedType: const FullType(String),
        ));
    }
    if (launchGroup != null) {
      result$
        ..add(const _i3.XmlElementName('LaunchGroup'))
        ..add(serializers.serialize(
          launchGroup,
          specifiedType: const FullType(String),
        ));
    }
    if (launchSpecification != null) {
      result$
        ..add(const _i3.XmlElementName('LaunchSpecification'))
        ..add(serializers.serialize(
          launchSpecification,
          specifiedType: const FullType(LaunchSpecification),
        ));
    }
    if (launchedAvailabilityZone != null) {
      result$
        ..add(const _i3.XmlElementName('LaunchedAvailabilityZone'))
        ..add(serializers.serialize(
          launchedAvailabilityZone,
          specifiedType: const FullType(String),
        ));
    }
    if (productDescription != null) {
      result$
        ..add(const _i3.XmlElementName('ProductDescription'))
        ..add(serializers.serialize(
          productDescription,
          specifiedType: const FullType(RiProductDescription),
        ));
    }
    if (spotInstanceRequestId != null) {
      result$
        ..add(const _i3.XmlElementName('SpotInstanceRequestId'))
        ..add(serializers.serialize(
          spotInstanceRequestId,
          specifiedType: const FullType(String),
        ));
    }
    if (spotPrice != null) {
      result$
        ..add(const _i3.XmlElementName('SpotPrice'))
        ..add(serializers.serialize(
          spotPrice,
          specifiedType: const FullType(String),
        ));
    }
    if (state != null) {
      result$
        ..add(const _i3.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType: const FullType(SpotInstanceState),
        ));
    }
    if (status != null) {
      result$
        ..add(const _i3.XmlElementName('Status'))
        ..add(serializers.serialize(
          status,
          specifiedType: const FullType(SpotInstanceStatus),
        ));
    }
    if (tags != null) {
      result$
        ..add(const _i3.XmlElementName('TagSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tags,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(Tag)],
          ),
        ));
    }
    if (type != null) {
      result$
        ..add(const _i3.XmlElementName('Type'))
        ..add(serializers.serialize(
          type,
          specifiedType: const FullType(SpotInstanceType),
        ));
    }
    if (validFrom != null) {
      result$
        ..add(const _i3.XmlElementName('ValidFrom'))
        ..add(serializers.serialize(
          validFrom,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (validUntil != null) {
      result$
        ..add(const _i3.XmlElementName('ValidUntil'))
        ..add(serializers.serialize(
          validUntil,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (instanceInterruptionBehavior != null) {
      result$
        ..add(const _i3.XmlElementName('InstanceInterruptionBehavior'))
        ..add(serializers.serialize(
          instanceInterruptionBehavior,
          specifiedType: const FullType(InstanceInterruptionBehavior),
        ));
    }
    return result$;
  }
}

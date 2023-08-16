// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_instance_capacity_reservation_attributes_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation_specification.dart';

part 'modify_instance_capacity_reservation_attributes_request.g.dart';

abstract class ModifyInstanceCapacityReservationAttributesRequest
    with
        _i1.HttpInput<ModifyInstanceCapacityReservationAttributesRequest>,
        _i2.AWSEquatable<ModifyInstanceCapacityReservationAttributesRequest>
    implements
        Built<ModifyInstanceCapacityReservationAttributesRequest,
            ModifyInstanceCapacityReservationAttributesRequestBuilder> {
  factory ModifyInstanceCapacityReservationAttributesRequest({
    String? instanceId,
    CapacityReservationSpecification? capacityReservationSpecification,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$ModifyInstanceCapacityReservationAttributesRequest._(
      instanceId: instanceId,
      capacityReservationSpecification: capacityReservationSpecification,
      dryRun: dryRun,
    );
  }

  factory ModifyInstanceCapacityReservationAttributesRequest.build(
      [void Function(ModifyInstanceCapacityReservationAttributesRequestBuilder)
          updates]) = _$ModifyInstanceCapacityReservationAttributesRequest;

  const ModifyInstanceCapacityReservationAttributesRequest._();

  factory ModifyInstanceCapacityReservationAttributesRequest.fromRequest(
    ModifyInstanceCapacityReservationAttributesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1
          .SmithySerializer<ModifyInstanceCapacityReservationAttributesRequest>>
      serializers = [
    ModifyInstanceCapacityReservationAttributesRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      ModifyInstanceCapacityReservationAttributesRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the instance to be modified.
  String? get instanceId;

  /// Information about the Capacity Reservation targeting option.
  CapacityReservationSpecification? get capacityReservationSpecification;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  ModifyInstanceCapacityReservationAttributesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        instanceId,
        capacityReservationSpecification,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'ModifyInstanceCapacityReservationAttributesRequest')
      ..add(
        'instanceId',
        instanceId,
      )
      ..add(
        'capacityReservationSpecification',
        capacityReservationSpecification,
      )
      ..add(
        'dryRun',
        dryRun,
      );
    return helper.toString();
  }
}

class ModifyInstanceCapacityReservationAttributesRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<
        ModifyInstanceCapacityReservationAttributesRequest> {
  const ModifyInstanceCapacityReservationAttributesRequestEc2QuerySerializer()
      : super('ModifyInstanceCapacityReservationAttributesRequest');

  @override
  Iterable<Type> get types => const [
        ModifyInstanceCapacityReservationAttributesRequest,
        _$ModifyInstanceCapacityReservationAttributesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyInstanceCapacityReservationAttributesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyInstanceCapacityReservationAttributesRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'InstanceId':
          result.instanceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'CapacityReservationSpecification':
          result.capacityReservationSpecification
              .replace((serializers.deserialize(
            value,
            specifiedType: const FullType(CapacityReservationSpecification),
          ) as CapacityReservationSpecification));
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ModifyInstanceCapacityReservationAttributesRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ModifyInstanceCapacityReservationAttributesRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyInstanceCapacityReservationAttributesRequest(
      :instanceId,
      :capacityReservationSpecification,
      :dryRun
    ) = object;
    if (instanceId != null) {
      result$
        ..add(const _i1.XmlElementName('InstanceId'))
        ..add(serializers.serialize(
          instanceId,
          specifiedType: const FullType(String),
        ));
    }
    if (capacityReservationSpecification != null) {
      result$
        ..add(const _i1.XmlElementName('CapacityReservationSpecification'))
        ..add(serializers.serialize(
          capacityReservationSpecification,
          specifiedType: const FullType(CapacityReservationSpecification),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}

// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.purchase_reserved_instances_offering_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/reserved_instance_limit_price.dart';

part 'purchase_reserved_instances_offering_request.g.dart';

/// Contains the parameters for PurchaseReservedInstancesOffering.
abstract class PurchaseReservedInstancesOfferingRequest
    with
        _i1.HttpInput<PurchaseReservedInstancesOfferingRequest>,
        _i2.AWSEquatable<PurchaseReservedInstancesOfferingRequest>
    implements
        Built<PurchaseReservedInstancesOfferingRequest,
            PurchaseReservedInstancesOfferingRequestBuilder> {
  /// Contains the parameters for PurchaseReservedInstancesOffering.
  factory PurchaseReservedInstancesOfferingRequest({
    int? instanceCount,
    String? reservedInstancesOfferingId,
    bool? dryRun,
    ReservedInstanceLimitPrice? limitPrice,
    DateTime? purchaseTime,
  }) {
    instanceCount ??= 0;
    dryRun ??= false;
    return _$PurchaseReservedInstancesOfferingRequest._(
      instanceCount: instanceCount,
      reservedInstancesOfferingId: reservedInstancesOfferingId,
      dryRun: dryRun,
      limitPrice: limitPrice,
      purchaseTime: purchaseTime,
    );
  }

  /// Contains the parameters for PurchaseReservedInstancesOffering.
  factory PurchaseReservedInstancesOfferingRequest.build(
      [void Function(PurchaseReservedInstancesOfferingRequestBuilder)
          updates]) = _$PurchaseReservedInstancesOfferingRequest;

  const PurchaseReservedInstancesOfferingRequest._();

  factory PurchaseReservedInstancesOfferingRequest.fromRequest(
    PurchaseReservedInstancesOfferingRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<PurchaseReservedInstancesOfferingRequest>>
      serializers = [
    PurchaseReservedInstancesOfferingRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PurchaseReservedInstancesOfferingRequestBuilder b) {
    b
      ..instanceCount = 0
      ..dryRun = false;
  }

  /// The number of Reserved Instances to purchase.
  int get instanceCount;

  /// The ID of the Reserved Instance offering to purchase.
  String? get reservedInstancesOfferingId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// Specified for Reserved Instance Marketplace offerings to limit the total order and ensure that the Reserved Instances are not purchased at unexpected prices.
  ReservedInstanceLimitPrice? get limitPrice;

  /// The time at which to purchase the Reserved Instance, in UTC format (for example, _YYYY_-_MM_-_DD_T_HH_:_MM_:_SS_Z).
  DateTime? get purchaseTime;
  @override
  PurchaseReservedInstancesOfferingRequest getPayload() => this;
  @override
  List<Object?> get props => [
        instanceCount,
        reservedInstancesOfferingId,
        dryRun,
        limitPrice,
        purchaseTime,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('PurchaseReservedInstancesOfferingRequest')
          ..add(
            'instanceCount',
            instanceCount,
          )
          ..add(
            'reservedInstancesOfferingId',
            reservedInstancesOfferingId,
          )
          ..add(
            'dryRun',
            dryRun,
          )
          ..add(
            'limitPrice',
            limitPrice,
          )
          ..add(
            'purchaseTime',
            purchaseTime,
          );
    return helper.toString();
  }
}

class PurchaseReservedInstancesOfferingRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<PurchaseReservedInstancesOfferingRequest> {
  const PurchaseReservedInstancesOfferingRequestEc2QuerySerializer()
      : super('PurchaseReservedInstancesOfferingRequest');

  @override
  Iterable<Type> get types => const [
        PurchaseReservedInstancesOfferingRequest,
        _$PurchaseReservedInstancesOfferingRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  PurchaseReservedInstancesOfferingRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PurchaseReservedInstancesOfferingRequestBuilder();
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
        case 'ReservedInstancesOfferingId':
          result.reservedInstancesOfferingId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'limitPrice':
          result.limitPrice.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(ReservedInstanceLimitPrice),
          ) as ReservedInstanceLimitPrice));
        case 'PurchaseTime':
          result.purchaseTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    PurchaseReservedInstancesOfferingRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'PurchaseReservedInstancesOfferingRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final PurchaseReservedInstancesOfferingRequest(
      :instanceCount,
      :reservedInstancesOfferingId,
      :dryRun,
      :limitPrice,
      :purchaseTime
    ) = object;
    result$
      ..add(const _i1.XmlElementName('InstanceCount'))
      ..add(serializers.serialize(
        instanceCount,
        specifiedType: const FullType(int),
      ));
    if (reservedInstancesOfferingId != null) {
      result$
        ..add(const _i1.XmlElementName('ReservedInstancesOfferingId'))
        ..add(serializers.serialize(
          reservedInstancesOfferingId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (limitPrice != null) {
      result$
        ..add(const _i1.XmlElementName('LimitPrice'))
        ..add(serializers.serialize(
          limitPrice,
          specifiedType: const FullType(ReservedInstanceLimitPrice),
        ));
    }
    if (purchaseTime != null) {
      result$
        ..add(const _i1.XmlElementName('PurchaseTime'))
        ..add(serializers.serialize(
          purchaseTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    return result$;
  }
}

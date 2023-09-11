// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_reserved_instances_listing_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/price_schedule_specification.dart';

part 'create_reserved_instances_listing_request.g.dart';

/// Contains the parameters for CreateReservedInstancesListing.
abstract class CreateReservedInstancesListingRequest
    with
        _i1.HttpInput<CreateReservedInstancesListingRequest>,
        _i2.AWSEquatable<CreateReservedInstancesListingRequest>
    implements
        Built<CreateReservedInstancesListingRequest,
            CreateReservedInstancesListingRequestBuilder> {
  /// Contains the parameters for CreateReservedInstancesListing.
  factory CreateReservedInstancesListingRequest({
    String? clientToken,
    int? instanceCount,
    List<PriceScheduleSpecification>? priceSchedules,
    String? reservedInstancesId,
  }) {
    instanceCount ??= 0;
    return _$CreateReservedInstancesListingRequest._(
      clientToken: clientToken,
      instanceCount: instanceCount,
      priceSchedules:
          priceSchedules == null ? null : _i3.BuiltList(priceSchedules),
      reservedInstancesId: reservedInstancesId,
    );
  }

  /// Contains the parameters for CreateReservedInstancesListing.
  factory CreateReservedInstancesListingRequest.build(
      [void Function(CreateReservedInstancesListingRequestBuilder)
          updates]) = _$CreateReservedInstancesListingRequest;

  const CreateReservedInstancesListingRequest._();

  factory CreateReservedInstancesListingRequest.fromRequest(
    CreateReservedInstancesListingRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CreateReservedInstancesListingRequest>>
      serializers = [CreateReservedInstancesListingRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateReservedInstancesListingRequestBuilder b) {
    b.instanceCount = 0;
  }

  /// Unique, case-sensitive identifier you provide to ensure idempotency of your listings. This helps avoid duplicate listings. For more information, see [Ensuring Idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  String? get clientToken;

  /// The number of instances that are a part of a Reserved Instance account to be listed in the Reserved Instance Marketplace. This number should be less than or equal to the instance count associated with the Reserved Instance ID specified in this call.
  int get instanceCount;

  /// A list specifying the price of the Standard Reserved Instance for each month remaining in the Reserved Instance term.
  _i3.BuiltList<PriceScheduleSpecification>? get priceSchedules;

  /// The ID of the active Standard Reserved Instance.
  String? get reservedInstancesId;
  @override
  CreateReservedInstancesListingRequest getPayload() => this;
  @override
  List<Object?> get props => [
        clientToken,
        instanceCount,
        priceSchedules,
        reservedInstancesId,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateReservedInstancesListingRequest')
          ..add(
            'clientToken',
            clientToken,
          )
          ..add(
            'instanceCount',
            instanceCount,
          )
          ..add(
            'priceSchedules',
            priceSchedules,
          )
          ..add(
            'reservedInstancesId',
            reservedInstancesId,
          );
    return helper.toString();
  }
}

class CreateReservedInstancesListingRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<CreateReservedInstancesListingRequest> {
  const CreateReservedInstancesListingRequestEc2QuerySerializer()
      : super('CreateReservedInstancesListingRequest');

  @override
  Iterable<Type> get types => const [
        CreateReservedInstancesListingRequest,
        _$CreateReservedInstancesListingRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateReservedInstancesListingRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateReservedInstancesListingRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'clientToken':
          result.clientToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'instanceCount':
          result.instanceCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'priceSchedules':
          result.priceSchedules.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(PriceScheduleSpecification)],
            ),
          ) as _i3.BuiltList<PriceScheduleSpecification>));
        case 'reservedInstancesId':
          result.reservedInstancesId = (serializers.deserialize(
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
    CreateReservedInstancesListingRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateReservedInstancesListingRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateReservedInstancesListingRequest(
      :clientToken,
      :instanceCount,
      :priceSchedules,
      :reservedInstancesId
    ) = object;
    if (clientToken != null) {
      result$
        ..add(const _i1.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          clientToken,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('InstanceCount'))
      ..add(serializers.serialize(
        instanceCount,
        specifiedType: const FullType(int),
      ));
    if (priceSchedules != null) {
      result$
        ..add(const _i1.XmlElementName('PriceSchedules'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          priceSchedules,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(PriceScheduleSpecification)],
          ),
        ));
    }
    if (reservedInstancesId != null) {
      result$
        ..add(const _i1.XmlElementName('ReservedInstancesId'))
        ..add(serializers.serialize(
          reservedInstancesId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}

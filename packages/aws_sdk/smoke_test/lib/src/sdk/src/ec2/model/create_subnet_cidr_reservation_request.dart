// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_subnet_cidr_reservation_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/subnet_cidr_reservation_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart';

part 'create_subnet_cidr_reservation_request.g.dart';

abstract class CreateSubnetCidrReservationRequest
    with
        _i1.HttpInput<CreateSubnetCidrReservationRequest>,
        _i2.AWSEquatable<CreateSubnetCidrReservationRequest>
    implements
        Built<CreateSubnetCidrReservationRequest,
            CreateSubnetCidrReservationRequestBuilder> {
  factory CreateSubnetCidrReservationRequest({
    String? subnetId,
    String? cidr,
    SubnetCidrReservationType? reservationType,
    String? description,
    bool? dryRun,
    List<TagSpecification>? tagSpecifications,
  }) {
    dryRun ??= false;
    return _$CreateSubnetCidrReservationRequest._(
      subnetId: subnetId,
      cidr: cidr,
      reservationType: reservationType,
      description: description,
      dryRun: dryRun,
      tagSpecifications:
          tagSpecifications == null ? null : _i3.BuiltList(tagSpecifications),
    );
  }

  factory CreateSubnetCidrReservationRequest.build(
          [void Function(CreateSubnetCidrReservationRequestBuilder) updates]) =
      _$CreateSubnetCidrReservationRequest;

  const CreateSubnetCidrReservationRequest._();

  factory CreateSubnetCidrReservationRequest.fromRequest(
    CreateSubnetCidrReservationRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CreateSubnetCidrReservationRequest>>
      serializers = [CreateSubnetCidrReservationRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateSubnetCidrReservationRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the subnet.
  String? get subnetId;

  /// The IPv4 or IPV6 CIDR range to reserve.
  String? get cidr;

  /// The type of reservation. The reservation type determines how the reserved IP addresses are assigned to resources.
  ///
  /// *   `prefix` \- Amazon Web Services assigns the reserved IP addresses to network interfaces.
  ///
  /// *   `explicit` \- You assign the reserved IP addresses to network interfaces.
  SubnetCidrReservationType? get reservationType;

  /// The description to assign to the subnet CIDR reservation.
  String? get description;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The tags to assign to the subnet CIDR reservation.
  _i3.BuiltList<TagSpecification>? get tagSpecifications;
  @override
  CreateSubnetCidrReservationRequest getPayload() => this;
  @override
  List<Object?> get props => [
        subnetId,
        cidr,
        reservationType,
        description,
        dryRun,
        tagSpecifications,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateSubnetCidrReservationRequest')
          ..add(
            'subnetId',
            subnetId,
          )
          ..add(
            'cidr',
            cidr,
          )
          ..add(
            'reservationType',
            reservationType,
          )
          ..add(
            'description',
            description,
          )
          ..add(
            'dryRun',
            dryRun,
          )
          ..add(
            'tagSpecifications',
            tagSpecifications,
          );
    return helper.toString();
  }
}

class CreateSubnetCidrReservationRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CreateSubnetCidrReservationRequest> {
  const CreateSubnetCidrReservationRequestEc2QuerySerializer()
      : super('CreateSubnetCidrReservationRequest');

  @override
  Iterable<Type> get types => const [
        CreateSubnetCidrReservationRequest,
        _$CreateSubnetCidrReservationRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateSubnetCidrReservationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateSubnetCidrReservationRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'SubnetId':
          result.subnetId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Cidr':
          result.cidr = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ReservationType':
          result.reservationType = (serializers.deserialize(
            value,
            specifiedType: const FullType(SubnetCidrReservationType),
          ) as SubnetCidrReservationType);
        case 'Description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateSubnetCidrReservationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateSubnetCidrReservationRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateSubnetCidrReservationRequest(
      :subnetId,
      :cidr,
      :reservationType,
      :description,
      :dryRun,
      :tagSpecifications
    ) = object;
    if (subnetId != null) {
      result$
        ..add(const _i1.XmlElementName('SubnetId'))
        ..add(serializers.serialize(
          subnetId,
          specifiedType: const FullType(String),
        ));
    }
    if (cidr != null) {
      result$
        ..add(const _i1.XmlElementName('Cidr'))
        ..add(serializers.serialize(
          cidr,
          specifiedType: const FullType(String),
        ));
    }
    if (reservationType != null) {
      result$
        ..add(const _i1.XmlElementName('ReservationType'))
        ..add(serializers.serialize(
          reservationType,
          specifiedType: const FullType(SubnetCidrReservationType),
        ));
    }
    if (description != null) {
      result$
        ..add(const _i1.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
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
    return result$;
  }
}

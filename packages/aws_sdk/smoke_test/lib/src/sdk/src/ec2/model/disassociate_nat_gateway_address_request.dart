// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.disassociate_nat_gateway_address_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'disassociate_nat_gateway_address_request.g.dart';

abstract class DisassociateNatGatewayAddressRequest
    with
        _i1.HttpInput<DisassociateNatGatewayAddressRequest>,
        _i2.AWSEquatable<DisassociateNatGatewayAddressRequest>
    implements
        Built<DisassociateNatGatewayAddressRequest,
            DisassociateNatGatewayAddressRequestBuilder> {
  factory DisassociateNatGatewayAddressRequest({
    String? natGatewayId,
    List<String>? associationIds,
    int? maxDrainDurationSeconds,
    bool? dryRun,
  }) {
    maxDrainDurationSeconds ??= 0;
    dryRun ??= false;
    return _$DisassociateNatGatewayAddressRequest._(
      natGatewayId: natGatewayId,
      associationIds:
          associationIds == null ? null : _i3.BuiltList(associationIds),
      maxDrainDurationSeconds: maxDrainDurationSeconds,
      dryRun: dryRun,
    );
  }

  factory DisassociateNatGatewayAddressRequest.build(
      [void Function(DisassociateNatGatewayAddressRequestBuilder)
          updates]) = _$DisassociateNatGatewayAddressRequest;

  const DisassociateNatGatewayAddressRequest._();

  factory DisassociateNatGatewayAddressRequest.fromRequest(
    DisassociateNatGatewayAddressRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DisassociateNatGatewayAddressRequest>>
      serializers = [DisassociateNatGatewayAddressRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DisassociateNatGatewayAddressRequestBuilder b) {
    b
      ..maxDrainDurationSeconds = 0
      ..dryRun = false;
  }

  /// The ID of the NAT gateway.
  String? get natGatewayId;

  /// The association IDs of EIPs that have been associated with the NAT gateway.
  _i3.BuiltList<String>? get associationIds;

  /// The maximum amount of time to wait (in seconds) before forcibly releasing the IP addresses if connections are still in progress. Default value is 350 seconds.
  int get maxDrainDurationSeconds;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DisassociateNatGatewayAddressRequest getPayload() => this;
  @override
  List<Object?> get props => [
        natGatewayId,
        associationIds,
        maxDrainDurationSeconds,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DisassociateNatGatewayAddressRequest')
          ..add(
            'natGatewayId',
            natGatewayId,
          )
          ..add(
            'associationIds',
            associationIds,
          )
          ..add(
            'maxDrainDurationSeconds',
            maxDrainDurationSeconds,
          )
          ..add(
            'dryRun',
            dryRun,
          );
    return helper.toString();
  }
}

class DisassociateNatGatewayAddressRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DisassociateNatGatewayAddressRequest> {
  const DisassociateNatGatewayAddressRequestEc2QuerySerializer()
      : super('DisassociateNatGatewayAddressRequest');

  @override
  Iterable<Type> get types => const [
        DisassociateNatGatewayAddressRequest,
        _$DisassociateNatGatewayAddressRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DisassociateNatGatewayAddressRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DisassociateNatGatewayAddressRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'NatGatewayId':
          result.natGatewayId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'AssociationId':
          result.associationIds.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'MaxDrainDurationSeconds':
          result.maxDrainDurationSeconds = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
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
    DisassociateNatGatewayAddressRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DisassociateNatGatewayAddressRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DisassociateNatGatewayAddressRequest(
      :natGatewayId,
      :associationIds,
      :maxDrainDurationSeconds,
      :dryRun
    ) = object;
    if (natGatewayId != null) {
      result$
        ..add(const _i1.XmlElementName('NatGatewayId'))
        ..add(serializers.serialize(
          natGatewayId,
          specifiedType: const FullType(String),
        ));
    }
    if (associationIds != null) {
      result$
        ..add(const _i1.XmlElementName('AssociationId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          associationIds,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('MaxDrainDurationSeconds'))
      ..add(serializers.serialize(
        maxDrainDurationSeconds,
        specifiedType: const FullType(int),
      ));
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}

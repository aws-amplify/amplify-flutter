// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.disassociate_client_vpn_target_network_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/association_status.dart';

part 'disassociate_client_vpn_target_network_result.g.dart';

abstract class DisassociateClientVpnTargetNetworkResult
    with
        _i1.AWSEquatable<DisassociateClientVpnTargetNetworkResult>
    implements
        Built<DisassociateClientVpnTargetNetworkResult,
            DisassociateClientVpnTargetNetworkResultBuilder> {
  factory DisassociateClientVpnTargetNetworkResult({
    String? associationId,
    AssociationStatus? status,
  }) {
    return _$DisassociateClientVpnTargetNetworkResult._(
      associationId: associationId,
      status: status,
    );
  }

  factory DisassociateClientVpnTargetNetworkResult.build(
      [void Function(DisassociateClientVpnTargetNetworkResultBuilder)
          updates]) = _$DisassociateClientVpnTargetNetworkResult;

  const DisassociateClientVpnTargetNetworkResult._();

  /// Constructs a [DisassociateClientVpnTargetNetworkResult] from a [payload] and [response].
  factory DisassociateClientVpnTargetNetworkResult.fromResponse(
    DisassociateClientVpnTargetNetworkResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i2.SmithySerializer<DisassociateClientVpnTargetNetworkResult>>
      serializers = [
    DisassociateClientVpnTargetNetworkResultEc2QuerySerializer()
  ];

  /// The ID of the target network association.
  String? get associationId;

  /// The current state of the target network association.
  AssociationStatus? get status;
  @override
  List<Object?> get props => [
        associationId,
        status,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DisassociateClientVpnTargetNetworkResult')
          ..add(
            'associationId',
            associationId,
          )
          ..add(
            'status',
            status,
          );
    return helper.toString();
  }
}

class DisassociateClientVpnTargetNetworkResultEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<DisassociateClientVpnTargetNetworkResult> {
  const DisassociateClientVpnTargetNetworkResultEc2QuerySerializer()
      : super('DisassociateClientVpnTargetNetworkResult');

  @override
  Iterable<Type> get types => const [
        DisassociateClientVpnTargetNetworkResult,
        _$DisassociateClientVpnTargetNetworkResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DisassociateClientVpnTargetNetworkResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DisassociateClientVpnTargetNetworkResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'associationId':
          result.associationId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'status':
          result.status.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AssociationStatus),
          ) as AssociationStatus));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DisassociateClientVpnTargetNetworkResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DisassociateClientVpnTargetNetworkResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DisassociateClientVpnTargetNetworkResult(:associationId, :status) =
        object;
    if (associationId != null) {
      result$
        ..add(const _i2.XmlElementName('AssociationId'))
        ..add(serializers.serialize(
          associationId,
          specifiedType: const FullType(String),
        ));
    }
    if (status != null) {
      result$
        ..add(const _i2.XmlElementName('Status'))
        ..add(serializers.serialize(
          status,
          specifiedType: const FullType(AssociationStatus),
        ));
    }
    return result$;
  }
}

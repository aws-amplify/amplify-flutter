// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.associate_client_vpn_target_network_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/association_status.dart';

part 'associate_client_vpn_target_network_result.g.dart';

abstract class AssociateClientVpnTargetNetworkResult
    with
        _i1.AWSEquatable<AssociateClientVpnTargetNetworkResult>
    implements
        Built<AssociateClientVpnTargetNetworkResult,
            AssociateClientVpnTargetNetworkResultBuilder> {
  factory AssociateClientVpnTargetNetworkResult({
    String? associationId,
    AssociationStatus? status,
  }) {
    return _$AssociateClientVpnTargetNetworkResult._(
      associationId: associationId,
      status: status,
    );
  }

  factory AssociateClientVpnTargetNetworkResult.build(
      [void Function(AssociateClientVpnTargetNetworkResultBuilder)
          updates]) = _$AssociateClientVpnTargetNetworkResult;

  const AssociateClientVpnTargetNetworkResult._();

  /// Constructs a [AssociateClientVpnTargetNetworkResult] from a [payload] and [response].
  factory AssociateClientVpnTargetNetworkResult.fromResponse(
    AssociateClientVpnTargetNetworkResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<AssociateClientVpnTargetNetworkResult>>
      serializers = [AssociateClientVpnTargetNetworkResultEc2QuerySerializer()];

  /// The unique ID of the target network association.
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
        newBuiltValueToStringHelper('AssociateClientVpnTargetNetworkResult')
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

class AssociateClientVpnTargetNetworkResultEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<AssociateClientVpnTargetNetworkResult> {
  const AssociateClientVpnTargetNetworkResultEc2QuerySerializer()
      : super('AssociateClientVpnTargetNetworkResult');

  @override
  Iterable<Type> get types => const [
        AssociateClientVpnTargetNetworkResult,
        _$AssociateClientVpnTargetNetworkResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AssociateClientVpnTargetNetworkResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssociateClientVpnTargetNetworkResultBuilder();
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
    AssociateClientVpnTargetNetworkResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'AssociateClientVpnTargetNetworkResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AssociateClientVpnTargetNetworkResult(:associationId, :status) =
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

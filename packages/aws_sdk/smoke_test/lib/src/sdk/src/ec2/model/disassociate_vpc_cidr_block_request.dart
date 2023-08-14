// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.disassociate_vpc_cidr_block_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'disassociate_vpc_cidr_block_request.g.dart';

abstract class DisassociateVpcCidrBlockRequest
    with
        _i1.HttpInput<DisassociateVpcCidrBlockRequest>,
        _i2.AWSEquatable<DisassociateVpcCidrBlockRequest>
    implements
        Built<DisassociateVpcCidrBlockRequest,
            DisassociateVpcCidrBlockRequestBuilder> {
  factory DisassociateVpcCidrBlockRequest({String? associationId}) {
    return _$DisassociateVpcCidrBlockRequest._(associationId: associationId);
  }

  factory DisassociateVpcCidrBlockRequest.build(
          [void Function(DisassociateVpcCidrBlockRequestBuilder) updates]) =
      _$DisassociateVpcCidrBlockRequest;

  const DisassociateVpcCidrBlockRequest._();

  factory DisassociateVpcCidrBlockRequest.fromRequest(
    DisassociateVpcCidrBlockRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DisassociateVpcCidrBlockRequest>>
      serializers = [DisassociateVpcCidrBlockRequestEc2QuerySerializer()];

  /// The association ID for the CIDR block.
  String? get associationId;
  @override
  DisassociateVpcCidrBlockRequest getPayload() => this;
  @override
  List<Object?> get props => [associationId];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DisassociateVpcCidrBlockRequest')
          ..add(
            'associationId',
            associationId,
          );
    return helper.toString();
  }
}

class DisassociateVpcCidrBlockRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DisassociateVpcCidrBlockRequest> {
  const DisassociateVpcCidrBlockRequestEc2QuerySerializer()
      : super('DisassociateVpcCidrBlockRequest');

  @override
  Iterable<Type> get types => const [
        DisassociateVpcCidrBlockRequest,
        _$DisassociateVpcCidrBlockRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DisassociateVpcCidrBlockRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DisassociateVpcCidrBlockRequestBuilder();
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DisassociateVpcCidrBlockRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DisassociateVpcCidrBlockRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DisassociateVpcCidrBlockRequest(:associationId) = object;
    if (associationId != null) {
      result$
        ..add(const _i1.XmlElementName('AssociationId'))
        ..add(serializers.serialize(
          associationId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}

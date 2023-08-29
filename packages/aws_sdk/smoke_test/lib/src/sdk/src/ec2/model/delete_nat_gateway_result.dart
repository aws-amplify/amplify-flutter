// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_nat_gateway_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'delete_nat_gateway_result.g.dart';

abstract class DeleteNatGatewayResult
    with _i1.AWSEquatable<DeleteNatGatewayResult>
    implements Built<DeleteNatGatewayResult, DeleteNatGatewayResultBuilder> {
  factory DeleteNatGatewayResult({String? natGatewayId}) {
    return _$DeleteNatGatewayResult._(natGatewayId: natGatewayId);
  }

  factory DeleteNatGatewayResult.build(
          [void Function(DeleteNatGatewayResultBuilder) updates]) =
      _$DeleteNatGatewayResult;

  const DeleteNatGatewayResult._();

  /// Constructs a [DeleteNatGatewayResult] from a [payload] and [response].
  factory DeleteNatGatewayResult.fromResponse(
    DeleteNatGatewayResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<DeleteNatGatewayResult>> serializers =
      [DeleteNatGatewayResultEc2QuerySerializer()];

  /// The ID of the NAT gateway.
  String? get natGatewayId;
  @override
  List<Object?> get props => [natGatewayId];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteNatGatewayResult')
      ..add(
        'natGatewayId',
        natGatewayId,
      );
    return helper.toString();
  }
}

class DeleteNatGatewayResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<DeleteNatGatewayResult> {
  const DeleteNatGatewayResultEc2QuerySerializer()
      : super('DeleteNatGatewayResult');

  @override
  Iterable<Type> get types => const [
        DeleteNatGatewayResult,
        _$DeleteNatGatewayResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteNatGatewayResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteNatGatewayResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'natGatewayId':
          result.natGatewayId = (serializers.deserialize(
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
    DeleteNatGatewayResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DeleteNatGatewayResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteNatGatewayResult(:natGatewayId) = object;
    if (natGatewayId != null) {
      result$
        ..add(const _i2.XmlElementName('NatGatewayId'))
        ..add(serializers.serialize(
          natGatewayId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}

// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_carrier_gateway_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/carrier_gateway.dart';

part 'delete_carrier_gateway_result.g.dart';

abstract class DeleteCarrierGatewayResult
    with _i1.AWSEquatable<DeleteCarrierGatewayResult>
    implements
        Built<DeleteCarrierGatewayResult, DeleteCarrierGatewayResultBuilder> {
  factory DeleteCarrierGatewayResult({CarrierGateway? carrierGateway}) {
    return _$DeleteCarrierGatewayResult._(carrierGateway: carrierGateway);
  }

  factory DeleteCarrierGatewayResult.build(
          [void Function(DeleteCarrierGatewayResultBuilder) updates]) =
      _$DeleteCarrierGatewayResult;

  const DeleteCarrierGatewayResult._();

  /// Constructs a [DeleteCarrierGatewayResult] from a [payload] and [response].
  factory DeleteCarrierGatewayResult.fromResponse(
    DeleteCarrierGatewayResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<DeleteCarrierGatewayResult>>
      serializers = [DeleteCarrierGatewayResultEc2QuerySerializer()];

  /// Information about the carrier gateway.
  CarrierGateway? get carrierGateway;
  @override
  List<Object?> get props => [carrierGateway];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteCarrierGatewayResult')
      ..add(
        'carrierGateway',
        carrierGateway,
      );
    return helper.toString();
  }
}

class DeleteCarrierGatewayResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<DeleteCarrierGatewayResult> {
  const DeleteCarrierGatewayResultEc2QuerySerializer()
      : super('DeleteCarrierGatewayResult');

  @override
  Iterable<Type> get types => const [
        DeleteCarrierGatewayResult,
        _$DeleteCarrierGatewayResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteCarrierGatewayResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteCarrierGatewayResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'carrierGateway':
          result.carrierGateway.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(CarrierGateway),
          ) as CarrierGateway));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeleteCarrierGatewayResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DeleteCarrierGatewayResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteCarrierGatewayResult(:carrierGateway) = object;
    if (carrierGateway != null) {
      result$
        ..add(const _i2.XmlElementName('CarrierGateway'))
        ..add(serializers.serialize(
          carrierGateway,
          specifiedType: const FullType(CarrierGateway),
        ));
    }
    return result$;
  }
}

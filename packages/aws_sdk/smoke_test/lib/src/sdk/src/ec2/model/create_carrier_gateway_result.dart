// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_carrier_gateway_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/carrier_gateway.dart';

part 'create_carrier_gateway_result.g.dart';

abstract class CreateCarrierGatewayResult
    with _i1.AWSEquatable<CreateCarrierGatewayResult>
    implements
        Built<CreateCarrierGatewayResult, CreateCarrierGatewayResultBuilder> {
  factory CreateCarrierGatewayResult({CarrierGateway? carrierGateway}) {
    return _$CreateCarrierGatewayResult._(carrierGateway: carrierGateway);
  }

  factory CreateCarrierGatewayResult.build(
          [void Function(CreateCarrierGatewayResultBuilder) updates]) =
      _$CreateCarrierGatewayResult;

  const CreateCarrierGatewayResult._();

  /// Constructs a [CreateCarrierGatewayResult] from a [payload] and [response].
  factory CreateCarrierGatewayResult.fromResponse(
    CreateCarrierGatewayResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<CreateCarrierGatewayResult>>
      serializers = [CreateCarrierGatewayResultEc2QuerySerializer()];

  /// Information about the carrier gateway.
  CarrierGateway? get carrierGateway;
  @override
  List<Object?> get props => [carrierGateway];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateCarrierGatewayResult')
      ..add(
        'carrierGateway',
        carrierGateway,
      );
    return helper.toString();
  }
}

class CreateCarrierGatewayResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<CreateCarrierGatewayResult> {
  const CreateCarrierGatewayResultEc2QuerySerializer()
      : super('CreateCarrierGatewayResult');

  @override
  Iterable<Type> get types => const [
        CreateCarrierGatewayResult,
        _$CreateCarrierGatewayResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateCarrierGatewayResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateCarrierGatewayResultBuilder();
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
    CreateCarrierGatewayResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreateCarrierGatewayResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateCarrierGatewayResult(:carrierGateway) = object;
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

// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_customer_gateway_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/customer_gateway.dart';

part 'create_customer_gateway_result.g.dart';

/// Contains the output of CreateCustomerGateway.
abstract class CreateCustomerGatewayResult
    with _i1.AWSEquatable<CreateCustomerGatewayResult>
    implements
        Built<CreateCustomerGatewayResult, CreateCustomerGatewayResultBuilder> {
  /// Contains the output of CreateCustomerGateway.
  factory CreateCustomerGatewayResult({CustomerGateway? customerGateway}) {
    return _$CreateCustomerGatewayResult._(customerGateway: customerGateway);
  }

  /// Contains the output of CreateCustomerGateway.
  factory CreateCustomerGatewayResult.build(
          [void Function(CreateCustomerGatewayResultBuilder) updates]) =
      _$CreateCustomerGatewayResult;

  const CreateCustomerGatewayResult._();

  /// Constructs a [CreateCustomerGatewayResult] from a [payload] and [response].
  factory CreateCustomerGatewayResult.fromResponse(
    CreateCustomerGatewayResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<CreateCustomerGatewayResult>>
      serializers = [CreateCustomerGatewayResultEc2QuerySerializer()];

  /// Information about the customer gateway.
  CustomerGateway? get customerGateway;
  @override
  List<Object?> get props => [customerGateway];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateCustomerGatewayResult')
      ..add(
        'customerGateway',
        customerGateway,
      );
    return helper.toString();
  }
}

class CreateCustomerGatewayResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<CreateCustomerGatewayResult> {
  const CreateCustomerGatewayResultEc2QuerySerializer()
      : super('CreateCustomerGatewayResult');

  @override
  Iterable<Type> get types => const [
        CreateCustomerGatewayResult,
        _$CreateCustomerGatewayResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateCustomerGatewayResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateCustomerGatewayResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'customerGateway':
          result.customerGateway.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(CustomerGateway),
          ) as CustomerGateway));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateCustomerGatewayResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreateCustomerGatewayResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateCustomerGatewayResult(:customerGateway) = object;
    if (customerGateway != null) {
      result$
        ..add(const _i2.XmlElementName('CustomerGateway'))
        ..add(serializers.serialize(
          customerGateway,
          specifiedType: const FullType(CustomerGateway),
        ));
    }
    return result$;
  }
}

// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_customer_gateways_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/customer_gateway.dart';

part 'describe_customer_gateways_result.g.dart';

/// Contains the output of DescribeCustomerGateways.
abstract class DescribeCustomerGatewaysResult
    with
        _i1.AWSEquatable<DescribeCustomerGatewaysResult>
    implements
        Built<DescribeCustomerGatewaysResult,
            DescribeCustomerGatewaysResultBuilder> {
  /// Contains the output of DescribeCustomerGateways.
  factory DescribeCustomerGatewaysResult(
      {List<CustomerGateway>? customerGateways}) {
    return _$DescribeCustomerGatewaysResult._(
        customerGateways:
            customerGateways == null ? null : _i2.BuiltList(customerGateways));
  }

  /// Contains the output of DescribeCustomerGateways.
  factory DescribeCustomerGatewaysResult.build(
          [void Function(DescribeCustomerGatewaysResultBuilder) updates]) =
      _$DescribeCustomerGatewaysResult;

  const DescribeCustomerGatewaysResult._();

  /// Constructs a [DescribeCustomerGatewaysResult] from a [payload] and [response].
  factory DescribeCustomerGatewaysResult.fromResponse(
    DescribeCustomerGatewaysResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeCustomerGatewaysResult>>
      serializers = [DescribeCustomerGatewaysResultEc2QuerySerializer()];

  /// Information about one or more customer gateways.
  _i2.BuiltList<CustomerGateway>? get customerGateways;
  @override
  List<Object?> get props => [customerGateways];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeCustomerGatewaysResult')
      ..add(
        'customerGateways',
        customerGateways,
      );
    return helper.toString();
  }
}

class DescribeCustomerGatewaysResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeCustomerGatewaysResult> {
  const DescribeCustomerGatewaysResultEc2QuerySerializer()
      : super('DescribeCustomerGatewaysResult');

  @override
  Iterable<Type> get types => const [
        DescribeCustomerGatewaysResult,
        _$DescribeCustomerGatewaysResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeCustomerGatewaysResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeCustomerGatewaysResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'customerGatewaySet':
          result.customerGateways.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(CustomerGateway)],
            ),
          ) as _i2.BuiltList<CustomerGateway>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeCustomerGatewaysResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeCustomerGatewaysResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeCustomerGatewaysResult(:customerGateways) = object;
    if (customerGateways != null) {
      result$
        ..add(const _i3.XmlElementName('CustomerGatewaySet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          customerGateways,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(CustomerGateway)],
          ),
        ));
    }
    return result$;
  }
}

// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_transit_gateway_route_table_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_route_table.dart';

part 'delete_transit_gateway_route_table_result.g.dart';

abstract class DeleteTransitGatewayRouteTableResult
    with
        _i1.AWSEquatable<DeleteTransitGatewayRouteTableResult>
    implements
        Built<DeleteTransitGatewayRouteTableResult,
            DeleteTransitGatewayRouteTableResultBuilder> {
  factory DeleteTransitGatewayRouteTableResult(
      {TransitGatewayRouteTable? transitGatewayRouteTable}) {
    return _$DeleteTransitGatewayRouteTableResult._(
        transitGatewayRouteTable: transitGatewayRouteTable);
  }

  factory DeleteTransitGatewayRouteTableResult.build(
      [void Function(DeleteTransitGatewayRouteTableResultBuilder)
          updates]) = _$DeleteTransitGatewayRouteTableResult;

  const DeleteTransitGatewayRouteTableResult._();

  /// Constructs a [DeleteTransitGatewayRouteTableResult] from a [payload] and [response].
  factory DeleteTransitGatewayRouteTableResult.fromResponse(
    DeleteTransitGatewayRouteTableResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<DeleteTransitGatewayRouteTableResult>>
      serializers = [DeleteTransitGatewayRouteTableResultEc2QuerySerializer()];

  /// Information about the deleted transit gateway route table.
  TransitGatewayRouteTable? get transitGatewayRouteTable;
  @override
  List<Object?> get props => [transitGatewayRouteTable];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteTransitGatewayRouteTableResult')
          ..add(
            'transitGatewayRouteTable',
            transitGatewayRouteTable,
          );
    return helper.toString();
  }
}

class DeleteTransitGatewayRouteTableResultEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<DeleteTransitGatewayRouteTableResult> {
  const DeleteTransitGatewayRouteTableResultEc2QuerySerializer()
      : super('DeleteTransitGatewayRouteTableResult');

  @override
  Iterable<Type> get types => const [
        DeleteTransitGatewayRouteTableResult,
        _$DeleteTransitGatewayRouteTableResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteTransitGatewayRouteTableResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteTransitGatewayRouteTableResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'transitGatewayRouteTable':
          result.transitGatewayRouteTable.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(TransitGatewayRouteTable),
          ) as TransitGatewayRouteTable));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeleteTransitGatewayRouteTableResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DeleteTransitGatewayRouteTableResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteTransitGatewayRouteTableResult(:transitGatewayRouteTable) =
        object;
    if (transitGatewayRouteTable != null) {
      result$
        ..add(const _i2.XmlElementName('TransitGatewayRouteTable'))
        ..add(serializers.serialize(
          transitGatewayRouteTable,
          specifiedType: const FullType(TransitGatewayRouteTable),
        ));
    }
    return result$;
  }
}

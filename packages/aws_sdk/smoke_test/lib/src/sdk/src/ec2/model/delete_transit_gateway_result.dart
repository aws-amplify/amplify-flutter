// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_transit_gateway_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway.dart';

part 'delete_transit_gateway_result.g.dart';

abstract class DeleteTransitGatewayResult
    with _i1.AWSEquatable<DeleteTransitGatewayResult>
    implements
        Built<DeleteTransitGatewayResult, DeleteTransitGatewayResultBuilder> {
  factory DeleteTransitGatewayResult({TransitGateway? transitGateway}) {
    return _$DeleteTransitGatewayResult._(transitGateway: transitGateway);
  }

  factory DeleteTransitGatewayResult.build(
          [void Function(DeleteTransitGatewayResultBuilder) updates]) =
      _$DeleteTransitGatewayResult;

  const DeleteTransitGatewayResult._();

  /// Constructs a [DeleteTransitGatewayResult] from a [payload] and [response].
  factory DeleteTransitGatewayResult.fromResponse(
    DeleteTransitGatewayResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<DeleteTransitGatewayResult>>
      serializers = [DeleteTransitGatewayResultEc2QuerySerializer()];

  /// Information about the deleted transit gateway.
  TransitGateway? get transitGateway;
  @override
  List<Object?> get props => [transitGateway];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteTransitGatewayResult')
      ..add(
        'transitGateway',
        transitGateway,
      );
    return helper.toString();
  }
}

class DeleteTransitGatewayResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<DeleteTransitGatewayResult> {
  const DeleteTransitGatewayResultEc2QuerySerializer()
      : super('DeleteTransitGatewayResult');

  @override
  Iterable<Type> get types => const [
        DeleteTransitGatewayResult,
        _$DeleteTransitGatewayResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteTransitGatewayResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteTransitGatewayResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'transitGateway':
          result.transitGateway.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(TransitGateway),
          ) as TransitGateway));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeleteTransitGatewayResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DeleteTransitGatewayResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteTransitGatewayResult(:transitGateway) = object;
    if (transitGateway != null) {
      result$
        ..add(const _i2.XmlElementName('TransitGateway'))
        ..add(serializers.serialize(
          transitGateway,
          specifiedType: const FullType(TransitGateway),
        ));
    }
    return result$;
  }
}

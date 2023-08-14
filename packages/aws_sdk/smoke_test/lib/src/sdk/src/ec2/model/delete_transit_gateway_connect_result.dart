// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_transit_gateway_connect_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_connect.dart';

part 'delete_transit_gateway_connect_result.g.dart';

abstract class DeleteTransitGatewayConnectResult
    with
        _i1.AWSEquatable<DeleteTransitGatewayConnectResult>
    implements
        Built<DeleteTransitGatewayConnectResult,
            DeleteTransitGatewayConnectResultBuilder> {
  factory DeleteTransitGatewayConnectResult(
      {TransitGatewayConnect? transitGatewayConnect}) {
    return _$DeleteTransitGatewayConnectResult._(
        transitGatewayConnect: transitGatewayConnect);
  }

  factory DeleteTransitGatewayConnectResult.build(
          [void Function(DeleteTransitGatewayConnectResultBuilder) updates]) =
      _$DeleteTransitGatewayConnectResult;

  const DeleteTransitGatewayConnectResult._();

  /// Constructs a [DeleteTransitGatewayConnectResult] from a [payload] and [response].
  factory DeleteTransitGatewayConnectResult.fromResponse(
    DeleteTransitGatewayConnectResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<DeleteTransitGatewayConnectResult>>
      serializers = [DeleteTransitGatewayConnectResultEc2QuerySerializer()];

  /// Information about the deleted Connect attachment.
  TransitGatewayConnect? get transitGatewayConnect;
  @override
  List<Object?> get props => [transitGatewayConnect];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteTransitGatewayConnectResult')
          ..add(
            'transitGatewayConnect',
            transitGatewayConnect,
          );
    return helper.toString();
  }
}

class DeleteTransitGatewayConnectResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<DeleteTransitGatewayConnectResult> {
  const DeleteTransitGatewayConnectResultEc2QuerySerializer()
      : super('DeleteTransitGatewayConnectResult');

  @override
  Iterable<Type> get types => const [
        DeleteTransitGatewayConnectResult,
        _$DeleteTransitGatewayConnectResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteTransitGatewayConnectResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteTransitGatewayConnectResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'transitGatewayConnect':
          result.transitGatewayConnect.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(TransitGatewayConnect),
          ) as TransitGatewayConnect));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeleteTransitGatewayConnectResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DeleteTransitGatewayConnectResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteTransitGatewayConnectResult(:transitGatewayConnect) = object;
    if (transitGatewayConnect != null) {
      result$
        ..add(const _i2.XmlElementName('TransitGatewayConnect'))
        ..add(serializers.serialize(
          transitGatewayConnect,
          specifiedType: const FullType(TransitGatewayConnect),
        ));
    }
    return result$;
  }
}

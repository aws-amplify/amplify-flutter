// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_transit_gateway_connect_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_connect.dart';

part 'create_transit_gateway_connect_result.g.dart';

abstract class CreateTransitGatewayConnectResult
    with
        _i1.AWSEquatable<CreateTransitGatewayConnectResult>
    implements
        Built<CreateTransitGatewayConnectResult,
            CreateTransitGatewayConnectResultBuilder> {
  factory CreateTransitGatewayConnectResult(
      {TransitGatewayConnect? transitGatewayConnect}) {
    return _$CreateTransitGatewayConnectResult._(
        transitGatewayConnect: transitGatewayConnect);
  }

  factory CreateTransitGatewayConnectResult.build(
          [void Function(CreateTransitGatewayConnectResultBuilder) updates]) =
      _$CreateTransitGatewayConnectResult;

  const CreateTransitGatewayConnectResult._();

  /// Constructs a [CreateTransitGatewayConnectResult] from a [payload] and [response].
  factory CreateTransitGatewayConnectResult.fromResponse(
    CreateTransitGatewayConnectResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<CreateTransitGatewayConnectResult>>
      serializers = [CreateTransitGatewayConnectResultEc2QuerySerializer()];

  /// Information about the Connect attachment.
  TransitGatewayConnect? get transitGatewayConnect;
  @override
  List<Object?> get props => [transitGatewayConnect];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateTransitGatewayConnectResult')
          ..add(
            'transitGatewayConnect',
            transitGatewayConnect,
          );
    return helper.toString();
  }
}

class CreateTransitGatewayConnectResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<CreateTransitGatewayConnectResult> {
  const CreateTransitGatewayConnectResultEc2QuerySerializer()
      : super('CreateTransitGatewayConnectResult');

  @override
  Iterable<Type> get types => const [
        CreateTransitGatewayConnectResult,
        _$CreateTransitGatewayConnectResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateTransitGatewayConnectResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateTransitGatewayConnectResultBuilder();
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
    CreateTransitGatewayConnectResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreateTransitGatewayConnectResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateTransitGatewayConnectResult(:transitGatewayConnect) = object;
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

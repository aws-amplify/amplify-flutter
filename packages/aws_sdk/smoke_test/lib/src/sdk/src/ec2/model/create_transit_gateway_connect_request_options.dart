// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_transit_gateway_connect_request_options; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/protocol_value.dart';

part 'create_transit_gateway_connect_request_options.g.dart';

/// The options for a Connect attachment.
abstract class CreateTransitGatewayConnectRequestOptions
    with
        _i1.AWSEquatable<CreateTransitGatewayConnectRequestOptions>
    implements
        Built<CreateTransitGatewayConnectRequestOptions,
            CreateTransitGatewayConnectRequestOptionsBuilder> {
  /// The options for a Connect attachment.
  factory CreateTransitGatewayConnectRequestOptions({ProtocolValue? protocol}) {
    return _$CreateTransitGatewayConnectRequestOptions._(protocol: protocol);
  }

  /// The options for a Connect attachment.
  factory CreateTransitGatewayConnectRequestOptions.build(
      [void Function(CreateTransitGatewayConnectRequestOptionsBuilder)
          updates]) = _$CreateTransitGatewayConnectRequestOptions;

  const CreateTransitGatewayConnectRequestOptions._();

  static const List<
          _i2.SmithySerializer<CreateTransitGatewayConnectRequestOptions>>
      serializers = [
    CreateTransitGatewayConnectRequestOptionsEc2QuerySerializer()
  ];

  /// The tunnel protocol.
  ProtocolValue? get protocol;
  @override
  List<Object?> get props => [protocol];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateTransitGatewayConnectRequestOptions')
          ..add(
            'protocol',
            protocol,
          );
    return helper.toString();
  }
}

class CreateTransitGatewayConnectRequestOptionsEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<CreateTransitGatewayConnectRequestOptions> {
  const CreateTransitGatewayConnectRequestOptionsEc2QuerySerializer()
      : super('CreateTransitGatewayConnectRequestOptions');

  @override
  Iterable<Type> get types => const [
        CreateTransitGatewayConnectRequestOptions,
        _$CreateTransitGatewayConnectRequestOptions,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateTransitGatewayConnectRequestOptions deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateTransitGatewayConnectRequestOptionsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Protocol':
          result.protocol = (serializers.deserialize(
            value,
            specifiedType: const FullType(ProtocolValue),
          ) as ProtocolValue);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateTransitGatewayConnectRequestOptions object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreateTransitGatewayConnectRequestOptionsResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateTransitGatewayConnectRequestOptions(:protocol) = object;
    if (protocol != null) {
      result$
        ..add(const _i2.XmlElementName('Protocol'))
        ..add(serializers.serialize(
          protocol,
          specifiedType: const FullType(ProtocolValue),
        ));
    }
    return result$;
  }
}

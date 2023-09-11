// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.verified_access_endpoint_eni_options; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/verified_access_endpoint_protocol.dart';

part 'verified_access_endpoint_eni_options.g.dart';

/// Options for a network-interface type endpoint.
abstract class VerifiedAccessEndpointEniOptions
    with
        _i1.AWSEquatable<VerifiedAccessEndpointEniOptions>
    implements
        Built<VerifiedAccessEndpointEniOptions,
            VerifiedAccessEndpointEniOptionsBuilder> {
  /// Options for a network-interface type endpoint.
  factory VerifiedAccessEndpointEniOptions({
    String? networkInterfaceId,
    VerifiedAccessEndpointProtocol? protocol,
    int? port,
  }) {
    port ??= 0;
    return _$VerifiedAccessEndpointEniOptions._(
      networkInterfaceId: networkInterfaceId,
      protocol: protocol,
      port: port,
    );
  }

  /// Options for a network-interface type endpoint.
  factory VerifiedAccessEndpointEniOptions.build(
          [void Function(VerifiedAccessEndpointEniOptionsBuilder) updates]) =
      _$VerifiedAccessEndpointEniOptions;

  const VerifiedAccessEndpointEniOptions._();

  static const List<_i2.SmithySerializer<VerifiedAccessEndpointEniOptions>>
      serializers = [VerifiedAccessEndpointEniOptionsEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(VerifiedAccessEndpointEniOptionsBuilder b) {
    b.port = 0;
  }

  /// The ID of the network interface.
  String? get networkInterfaceId;

  /// The IP protocol.
  VerifiedAccessEndpointProtocol? get protocol;

  /// The IP port number.
  int get port;
  @override
  List<Object?> get props => [
        networkInterfaceId,
        protocol,
        port,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('VerifiedAccessEndpointEniOptions')
          ..add(
            'networkInterfaceId',
            networkInterfaceId,
          )
          ..add(
            'protocol',
            protocol,
          )
          ..add(
            'port',
            port,
          );
    return helper.toString();
  }
}

class VerifiedAccessEndpointEniOptionsEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<VerifiedAccessEndpointEniOptions> {
  const VerifiedAccessEndpointEniOptionsEc2QuerySerializer()
      : super('VerifiedAccessEndpointEniOptions');

  @override
  Iterable<Type> get types => const [
        VerifiedAccessEndpointEniOptions,
        _$VerifiedAccessEndpointEniOptions,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  VerifiedAccessEndpointEniOptions deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VerifiedAccessEndpointEniOptionsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'networkInterfaceId':
          result.networkInterfaceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'protocol':
          result.protocol = (serializers.deserialize(
            value,
            specifiedType: const FullType(VerifiedAccessEndpointProtocol),
          ) as VerifiedAccessEndpointProtocol);
        case 'port':
          result.port = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    VerifiedAccessEndpointEniOptions object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'VerifiedAccessEndpointEniOptionsResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final VerifiedAccessEndpointEniOptions(
      :networkInterfaceId,
      :protocol,
      :port
    ) = object;
    if (networkInterfaceId != null) {
      result$
        ..add(const _i2.XmlElementName('NetworkInterfaceId'))
        ..add(serializers.serialize(
          networkInterfaceId,
          specifiedType: const FullType(String),
        ));
    }
    if (protocol != null) {
      result$
        ..add(const _i2.XmlElementName('Protocol'))
        ..add(serializers.serialize(
          protocol,
          specifiedType: const FullType(VerifiedAccessEndpointProtocol),
        ));
    }
    result$
      ..add(const _i2.XmlElementName('Port'))
      ..add(serializers.serialize(
        port,
        specifiedType: const FullType(int),
      ));
    return result$;
  }
}

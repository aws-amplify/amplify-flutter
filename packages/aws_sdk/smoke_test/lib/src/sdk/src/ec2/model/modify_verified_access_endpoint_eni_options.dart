// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_verified_access_endpoint_eni_options; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/verified_access_endpoint_protocol.dart';

part 'modify_verified_access_endpoint_eni_options.g.dart';

/// Describes the options when modifying a Verified Access endpoint with the `network-interface` type.
abstract class ModifyVerifiedAccessEndpointEniOptions
    with
        _i1.AWSEquatable<ModifyVerifiedAccessEndpointEniOptions>
    implements
        Built<ModifyVerifiedAccessEndpointEniOptions,
            ModifyVerifiedAccessEndpointEniOptionsBuilder> {
  /// Describes the options when modifying a Verified Access endpoint with the `network-interface` type.
  factory ModifyVerifiedAccessEndpointEniOptions({
    VerifiedAccessEndpointProtocol? protocol,
    int? port,
  }) {
    port ??= 0;
    return _$ModifyVerifiedAccessEndpointEniOptions._(
      protocol: protocol,
      port: port,
    );
  }

  /// Describes the options when modifying a Verified Access endpoint with the `network-interface` type.
  factory ModifyVerifiedAccessEndpointEniOptions.build(
      [void Function(ModifyVerifiedAccessEndpointEniOptionsBuilder)
          updates]) = _$ModifyVerifiedAccessEndpointEniOptions;

  const ModifyVerifiedAccessEndpointEniOptions._();

  static const List<
          _i2.SmithySerializer<ModifyVerifiedAccessEndpointEniOptions>>
      serializers = [
    ModifyVerifiedAccessEndpointEniOptionsEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyVerifiedAccessEndpointEniOptionsBuilder b) {
    b.port = 0;
  }

  /// The IP protocol.
  VerifiedAccessEndpointProtocol? get protocol;

  /// The IP port number.
  int get port;
  @override
  List<Object?> get props => [
        protocol,
        port,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ModifyVerifiedAccessEndpointEniOptions')
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

class ModifyVerifiedAccessEndpointEniOptionsEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<ModifyVerifiedAccessEndpointEniOptions> {
  const ModifyVerifiedAccessEndpointEniOptionsEc2QuerySerializer()
      : super('ModifyVerifiedAccessEndpointEniOptions');

  @override
  Iterable<Type> get types => const [
        ModifyVerifiedAccessEndpointEniOptions,
        _$ModifyVerifiedAccessEndpointEniOptions,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyVerifiedAccessEndpointEniOptions deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyVerifiedAccessEndpointEniOptionsBuilder();
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
            specifiedType: const FullType(VerifiedAccessEndpointProtocol),
          ) as VerifiedAccessEndpointProtocol);
        case 'Port':
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
    ModifyVerifiedAccessEndpointEniOptions object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ModifyVerifiedAccessEndpointEniOptionsResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyVerifiedAccessEndpointEniOptions(:protocol, :port) = object;
    if (protocol != null) {
      result$
        ..add(const _i2.XmlElementName('Protocol'))
        ..add(serializers.serialize(
          protocol,
          specifiedType:
              const FullType.nullable(VerifiedAccessEndpointProtocol),
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

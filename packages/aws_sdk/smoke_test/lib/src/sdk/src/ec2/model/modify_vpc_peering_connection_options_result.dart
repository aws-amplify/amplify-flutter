// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_vpc_peering_connection_options_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/peering_connection_options.dart';

part 'modify_vpc_peering_connection_options_result.g.dart';

abstract class ModifyVpcPeeringConnectionOptionsResult
    with
        _i1.AWSEquatable<ModifyVpcPeeringConnectionOptionsResult>
    implements
        Built<ModifyVpcPeeringConnectionOptionsResult,
            ModifyVpcPeeringConnectionOptionsResultBuilder> {
  factory ModifyVpcPeeringConnectionOptionsResult({
    PeeringConnectionOptions? accepterPeeringConnectionOptions,
    PeeringConnectionOptions? requesterPeeringConnectionOptions,
  }) {
    return _$ModifyVpcPeeringConnectionOptionsResult._(
      accepterPeeringConnectionOptions: accepterPeeringConnectionOptions,
      requesterPeeringConnectionOptions: requesterPeeringConnectionOptions,
    );
  }

  factory ModifyVpcPeeringConnectionOptionsResult.build(
      [void Function(ModifyVpcPeeringConnectionOptionsResultBuilder)
          updates]) = _$ModifyVpcPeeringConnectionOptionsResult;

  const ModifyVpcPeeringConnectionOptionsResult._();

  /// Constructs a [ModifyVpcPeeringConnectionOptionsResult] from a [payload] and [response].
  factory ModifyVpcPeeringConnectionOptionsResult.fromResponse(
    ModifyVpcPeeringConnectionOptionsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i2.SmithySerializer<ModifyVpcPeeringConnectionOptionsResult>>
      serializers = [
    ModifyVpcPeeringConnectionOptionsResultEc2QuerySerializer()
  ];

  /// Information about the VPC peering connection options for the accepter VPC.
  PeeringConnectionOptions? get accepterPeeringConnectionOptions;

  /// Information about the VPC peering connection options for the requester VPC.
  PeeringConnectionOptions? get requesterPeeringConnectionOptions;
  @override
  List<Object?> get props => [
        accepterPeeringConnectionOptions,
        requesterPeeringConnectionOptions,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ModifyVpcPeeringConnectionOptionsResult')
          ..add(
            'accepterPeeringConnectionOptions',
            accepterPeeringConnectionOptions,
          )
          ..add(
            'requesterPeeringConnectionOptions',
            requesterPeeringConnectionOptions,
          );
    return helper.toString();
  }
}

class ModifyVpcPeeringConnectionOptionsResultEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<ModifyVpcPeeringConnectionOptionsResult> {
  const ModifyVpcPeeringConnectionOptionsResultEc2QuerySerializer()
      : super('ModifyVpcPeeringConnectionOptionsResult');

  @override
  Iterable<Type> get types => const [
        ModifyVpcPeeringConnectionOptionsResult,
        _$ModifyVpcPeeringConnectionOptionsResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyVpcPeeringConnectionOptionsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyVpcPeeringConnectionOptionsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'accepterPeeringConnectionOptions':
          result.accepterPeeringConnectionOptions
              .replace((serializers.deserialize(
            value,
            specifiedType: const FullType(PeeringConnectionOptions),
          ) as PeeringConnectionOptions));
        case 'requesterPeeringConnectionOptions':
          result.requesterPeeringConnectionOptions
              .replace((serializers.deserialize(
            value,
            specifiedType: const FullType(PeeringConnectionOptions),
          ) as PeeringConnectionOptions));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ModifyVpcPeeringConnectionOptionsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ModifyVpcPeeringConnectionOptionsResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyVpcPeeringConnectionOptionsResult(
      :accepterPeeringConnectionOptions,
      :requesterPeeringConnectionOptions
    ) = object;
    if (accepterPeeringConnectionOptions != null) {
      result$
        ..add(const _i2.XmlElementName('AccepterPeeringConnectionOptions'))
        ..add(serializers.serialize(
          accepterPeeringConnectionOptions,
          specifiedType: const FullType(PeeringConnectionOptions),
        ));
    }
    if (requesterPeeringConnectionOptions != null) {
      result$
        ..add(const _i2.XmlElementName('RequesterPeeringConnectionOptions'))
        ..add(serializers.serialize(
          requesterPeeringConnectionOptions,
          specifiedType: const FullType(PeeringConnectionOptions),
        ));
    }
    return result$;
  }
}

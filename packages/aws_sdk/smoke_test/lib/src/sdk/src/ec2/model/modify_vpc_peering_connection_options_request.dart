// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_vpc_peering_connection_options_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/peering_connection_options_request.dart';

part 'modify_vpc_peering_connection_options_request.g.dart';

abstract class ModifyVpcPeeringConnectionOptionsRequest
    with
        _i1.HttpInput<ModifyVpcPeeringConnectionOptionsRequest>,
        _i2.AWSEquatable<ModifyVpcPeeringConnectionOptionsRequest>
    implements
        Built<ModifyVpcPeeringConnectionOptionsRequest,
            ModifyVpcPeeringConnectionOptionsRequestBuilder> {
  factory ModifyVpcPeeringConnectionOptionsRequest({
    PeeringConnectionOptionsRequest? accepterPeeringConnectionOptions,
    bool? dryRun,
    PeeringConnectionOptionsRequest? requesterPeeringConnectionOptions,
    String? vpcPeeringConnectionId,
  }) {
    dryRun ??= false;
    return _$ModifyVpcPeeringConnectionOptionsRequest._(
      accepterPeeringConnectionOptions: accepterPeeringConnectionOptions,
      dryRun: dryRun,
      requesterPeeringConnectionOptions: requesterPeeringConnectionOptions,
      vpcPeeringConnectionId: vpcPeeringConnectionId,
    );
  }

  factory ModifyVpcPeeringConnectionOptionsRequest.build(
      [void Function(ModifyVpcPeeringConnectionOptionsRequestBuilder)
          updates]) = _$ModifyVpcPeeringConnectionOptionsRequest;

  const ModifyVpcPeeringConnectionOptionsRequest._();

  factory ModifyVpcPeeringConnectionOptionsRequest.fromRequest(
    ModifyVpcPeeringConnectionOptionsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<ModifyVpcPeeringConnectionOptionsRequest>>
      serializers = [
    ModifyVpcPeeringConnectionOptionsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyVpcPeeringConnectionOptionsRequestBuilder b) {
    b.dryRun = false;
  }

  /// The VPC peering connection options for the accepter VPC.
  PeeringConnectionOptionsRequest? get accepterPeeringConnectionOptions;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The VPC peering connection options for the requester VPC.
  PeeringConnectionOptionsRequest? get requesterPeeringConnectionOptions;

  /// The ID of the VPC peering connection.
  String? get vpcPeeringConnectionId;
  @override
  ModifyVpcPeeringConnectionOptionsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        accepterPeeringConnectionOptions,
        dryRun,
        requesterPeeringConnectionOptions,
        vpcPeeringConnectionId,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ModifyVpcPeeringConnectionOptionsRequest')
          ..add(
            'accepterPeeringConnectionOptions',
            accepterPeeringConnectionOptions,
          )
          ..add(
            'dryRun',
            dryRun,
          )
          ..add(
            'requesterPeeringConnectionOptions',
            requesterPeeringConnectionOptions,
          )
          ..add(
            'vpcPeeringConnectionId',
            vpcPeeringConnectionId,
          );
    return helper.toString();
  }
}

class ModifyVpcPeeringConnectionOptionsRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<ModifyVpcPeeringConnectionOptionsRequest> {
  const ModifyVpcPeeringConnectionOptionsRequestEc2QuerySerializer()
      : super('ModifyVpcPeeringConnectionOptionsRequest');

  @override
  Iterable<Type> get types => const [
        ModifyVpcPeeringConnectionOptionsRequest,
        _$ModifyVpcPeeringConnectionOptionsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyVpcPeeringConnectionOptionsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyVpcPeeringConnectionOptionsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'AccepterPeeringConnectionOptions':
          result.accepterPeeringConnectionOptions
              .replace((serializers.deserialize(
            value,
            specifiedType: const FullType(PeeringConnectionOptionsRequest),
          ) as PeeringConnectionOptionsRequest));
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'RequesterPeeringConnectionOptions':
          result.requesterPeeringConnectionOptions
              .replace((serializers.deserialize(
            value,
            specifiedType: const FullType(PeeringConnectionOptionsRequest),
          ) as PeeringConnectionOptionsRequest));
        case 'VpcPeeringConnectionId':
          result.vpcPeeringConnectionId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ModifyVpcPeeringConnectionOptionsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ModifyVpcPeeringConnectionOptionsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyVpcPeeringConnectionOptionsRequest(
      :accepterPeeringConnectionOptions,
      :dryRun,
      :requesterPeeringConnectionOptions,
      :vpcPeeringConnectionId
    ) = object;
    if (accepterPeeringConnectionOptions != null) {
      result$
        ..add(const _i1.XmlElementName('AccepterPeeringConnectionOptions'))
        ..add(serializers.serialize(
          accepterPeeringConnectionOptions,
          specifiedType: const FullType(PeeringConnectionOptionsRequest),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (requesterPeeringConnectionOptions != null) {
      result$
        ..add(const _i1.XmlElementName('RequesterPeeringConnectionOptions'))
        ..add(serializers.serialize(
          requesterPeeringConnectionOptions,
          specifiedType: const FullType(PeeringConnectionOptionsRequest),
        ));
    }
    if (vpcPeeringConnectionId != null) {
      result$
        ..add(const _i1.XmlElementName('VpcPeeringConnectionId'))
        ..add(serializers.serialize(
          vpcPeeringConnectionId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}

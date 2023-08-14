// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_vpc_tenancy_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_tenancy.dart';

part 'modify_vpc_tenancy_request.g.dart';

abstract class ModifyVpcTenancyRequest
    with
        _i1.HttpInput<ModifyVpcTenancyRequest>,
        _i2.AWSEquatable<ModifyVpcTenancyRequest>
    implements Built<ModifyVpcTenancyRequest, ModifyVpcTenancyRequestBuilder> {
  factory ModifyVpcTenancyRequest({
    String? vpcId,
    VpcTenancy? instanceTenancy,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$ModifyVpcTenancyRequest._(
      vpcId: vpcId,
      instanceTenancy: instanceTenancy,
      dryRun: dryRun,
    );
  }

  factory ModifyVpcTenancyRequest.build(
          [void Function(ModifyVpcTenancyRequestBuilder) updates]) =
      _$ModifyVpcTenancyRequest;

  const ModifyVpcTenancyRequest._();

  factory ModifyVpcTenancyRequest.fromRequest(
    ModifyVpcTenancyRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ModifyVpcTenancyRequest>> serializers =
      [ModifyVpcTenancyRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyVpcTenancyRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the VPC.
  String? get vpcId;

  /// The instance tenancy attribute for the VPC.
  VpcTenancy? get instanceTenancy;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  ModifyVpcTenancyRequest getPayload() => this;
  @override
  List<Object?> get props => [
        vpcId,
        instanceTenancy,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ModifyVpcTenancyRequest')
      ..add(
        'vpcId',
        vpcId,
      )
      ..add(
        'instanceTenancy',
        instanceTenancy,
      )
      ..add(
        'dryRun',
        dryRun,
      );
    return helper.toString();
  }
}

class ModifyVpcTenancyRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ModifyVpcTenancyRequest> {
  const ModifyVpcTenancyRequestEc2QuerySerializer()
      : super('ModifyVpcTenancyRequest');

  @override
  Iterable<Type> get types => const [
        ModifyVpcTenancyRequest,
        _$ModifyVpcTenancyRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyVpcTenancyRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyVpcTenancyRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'VpcId':
          result.vpcId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'InstanceTenancy':
          result.instanceTenancy = (serializers.deserialize(
            value,
            specifiedType: const FullType(VpcTenancy),
          ) as VpcTenancy);
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ModifyVpcTenancyRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ModifyVpcTenancyRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyVpcTenancyRequest(:vpcId, :instanceTenancy, :dryRun) = object;
    if (vpcId != null) {
      result$
        ..add(const _i1.XmlElementName('VpcId'))
        ..add(serializers.serialize(
          vpcId,
          specifiedType: const FullType(String),
        ));
    }
    if (instanceTenancy != null) {
      result$
        ..add(const _i1.XmlElementName('InstanceTenancy'))
        ..add(serializers.serialize(
          instanceTenancy,
          specifiedType: const FullType.nullable(VpcTenancy),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}

// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_private_dns_name_options_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/hostname_type.dart';

part 'modify_private_dns_name_options_request.g.dart';

abstract class ModifyPrivateDnsNameOptionsRequest
    with
        _i1.HttpInput<ModifyPrivateDnsNameOptionsRequest>,
        _i2.AWSEquatable<ModifyPrivateDnsNameOptionsRequest>
    implements
        Built<ModifyPrivateDnsNameOptionsRequest,
            ModifyPrivateDnsNameOptionsRequestBuilder> {
  factory ModifyPrivateDnsNameOptionsRequest({
    bool? dryRun,
    String? instanceId,
    HostnameType? privateDnsHostnameType,
    bool? enableResourceNameDnsARecord,
    bool? enableResourceNameDnsAaaaRecord,
  }) {
    dryRun ??= false;
    enableResourceNameDnsARecord ??= false;
    enableResourceNameDnsAaaaRecord ??= false;
    return _$ModifyPrivateDnsNameOptionsRequest._(
      dryRun: dryRun,
      instanceId: instanceId,
      privateDnsHostnameType: privateDnsHostnameType,
      enableResourceNameDnsARecord: enableResourceNameDnsARecord,
      enableResourceNameDnsAaaaRecord: enableResourceNameDnsAaaaRecord,
    );
  }

  factory ModifyPrivateDnsNameOptionsRequest.build(
          [void Function(ModifyPrivateDnsNameOptionsRequestBuilder) updates]) =
      _$ModifyPrivateDnsNameOptionsRequest;

  const ModifyPrivateDnsNameOptionsRequest._();

  factory ModifyPrivateDnsNameOptionsRequest.fromRequest(
    ModifyPrivateDnsNameOptionsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ModifyPrivateDnsNameOptionsRequest>>
      serializers = [ModifyPrivateDnsNameOptionsRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyPrivateDnsNameOptionsRequestBuilder b) {
    b
      ..dryRun = false
      ..enableResourceNameDnsARecord = false
      ..enableResourceNameDnsAaaaRecord = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the instance.
  String? get instanceId;

  /// The type of hostname for EC2 instances. For IPv4 only subnets, an instance DNS name must be based on the instance IPv4 address. For IPv6 only subnets, an instance DNS name must be based on the instance ID. For dual-stack subnets, you can specify whether DNS names use the instance IPv4 address or the instance ID.
  HostnameType? get privateDnsHostnameType;

  /// Indicates whether to respond to DNS queries for instance hostnames with DNS A records.
  bool get enableResourceNameDnsARecord;

  /// Indicates whether to respond to DNS queries for instance hostnames with DNS AAAA records.
  bool get enableResourceNameDnsAaaaRecord;
  @override
  ModifyPrivateDnsNameOptionsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        instanceId,
        privateDnsHostnameType,
        enableResourceNameDnsARecord,
        enableResourceNameDnsAaaaRecord,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ModifyPrivateDnsNameOptionsRequest')
          ..add(
            'dryRun',
            dryRun,
          )
          ..add(
            'instanceId',
            instanceId,
          )
          ..add(
            'privateDnsHostnameType',
            privateDnsHostnameType,
          )
          ..add(
            'enableResourceNameDnsARecord',
            enableResourceNameDnsARecord,
          )
          ..add(
            'enableResourceNameDnsAaaaRecord',
            enableResourceNameDnsAaaaRecord,
          );
    return helper.toString();
  }
}

class ModifyPrivateDnsNameOptionsRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ModifyPrivateDnsNameOptionsRequest> {
  const ModifyPrivateDnsNameOptionsRequestEc2QuerySerializer()
      : super('ModifyPrivateDnsNameOptionsRequest');

  @override
  Iterable<Type> get types => const [
        ModifyPrivateDnsNameOptionsRequest,
        _$ModifyPrivateDnsNameOptionsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyPrivateDnsNameOptionsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyPrivateDnsNameOptionsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'InstanceId':
          result.instanceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'PrivateDnsHostnameType':
          result.privateDnsHostnameType = (serializers.deserialize(
            value,
            specifiedType: const FullType(HostnameType),
          ) as HostnameType);
        case 'EnableResourceNameDnsARecord':
          result.enableResourceNameDnsARecord = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'EnableResourceNameDnsAAAARecord':
          result.enableResourceNameDnsAaaaRecord = (serializers.deserialize(
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
    ModifyPrivateDnsNameOptionsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ModifyPrivateDnsNameOptionsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyPrivateDnsNameOptionsRequest(
      :dryRun,
      :instanceId,
      :privateDnsHostnameType,
      :enableResourceNameDnsARecord,
      :enableResourceNameDnsAaaaRecord
    ) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (instanceId != null) {
      result$
        ..add(const _i1.XmlElementName('InstanceId'))
        ..add(serializers.serialize(
          instanceId,
          specifiedType: const FullType(String),
        ));
    }
    if (privateDnsHostnameType != null) {
      result$
        ..add(const _i1.XmlElementName('PrivateDnsHostnameType'))
        ..add(serializers.serialize(
          privateDnsHostnameType,
          specifiedType: const FullType.nullable(HostnameType),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('EnableResourceNameDnsARecord'))
      ..add(serializers.serialize(
        enableResourceNameDnsARecord,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i1.XmlElementName('EnableResourceNameDnsAAAARecord'))
      ..add(serializers.serialize(
        enableResourceNameDnsAaaaRecord,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}

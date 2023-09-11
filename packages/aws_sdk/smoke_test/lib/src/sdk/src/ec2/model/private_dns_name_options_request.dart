// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.private_dns_name_options_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/hostname_type.dart';

part 'private_dns_name_options_request.g.dart';

/// Describes the options for instance hostnames.
abstract class PrivateDnsNameOptionsRequest
    with
        _i1.AWSEquatable<PrivateDnsNameOptionsRequest>
    implements
        Built<PrivateDnsNameOptionsRequest,
            PrivateDnsNameOptionsRequestBuilder> {
  /// Describes the options for instance hostnames.
  factory PrivateDnsNameOptionsRequest({
    HostnameType? hostnameType,
    bool? enableResourceNameDnsARecord,
    bool? enableResourceNameDnsAaaaRecord,
  }) {
    enableResourceNameDnsARecord ??= false;
    enableResourceNameDnsAaaaRecord ??= false;
    return _$PrivateDnsNameOptionsRequest._(
      hostnameType: hostnameType,
      enableResourceNameDnsARecord: enableResourceNameDnsARecord,
      enableResourceNameDnsAaaaRecord: enableResourceNameDnsAaaaRecord,
    );
  }

  /// Describes the options for instance hostnames.
  factory PrivateDnsNameOptionsRequest.build(
          [void Function(PrivateDnsNameOptionsRequestBuilder) updates]) =
      _$PrivateDnsNameOptionsRequest;

  const PrivateDnsNameOptionsRequest._();

  static const List<_i2.SmithySerializer<PrivateDnsNameOptionsRequest>>
      serializers = [PrivateDnsNameOptionsRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PrivateDnsNameOptionsRequestBuilder b) {
    b
      ..enableResourceNameDnsARecord = false
      ..enableResourceNameDnsAaaaRecord = false;
  }

  /// The type of hostname for EC2 instances. For IPv4 only subnets, an instance DNS name must be based on the instance IPv4 address. For IPv6 only subnets, an instance DNS name must be based on the instance ID. For dual-stack subnets, you can specify whether DNS names use the instance IPv4 address or the instance ID.
  HostnameType? get hostnameType;

  /// Indicates whether to respond to DNS queries for instance hostnames with DNS A records.
  bool get enableResourceNameDnsARecord;

  /// Indicates whether to respond to DNS queries for instance hostnames with DNS AAAA records.
  bool get enableResourceNameDnsAaaaRecord;
  @override
  List<Object?> get props => [
        hostnameType,
        enableResourceNameDnsARecord,
        enableResourceNameDnsAaaaRecord,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PrivateDnsNameOptionsRequest')
      ..add(
        'hostnameType',
        hostnameType,
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

class PrivateDnsNameOptionsRequestEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<PrivateDnsNameOptionsRequest> {
  const PrivateDnsNameOptionsRequestEc2QuerySerializer()
      : super('PrivateDnsNameOptionsRequest');

  @override
  Iterable<Type> get types => const [
        PrivateDnsNameOptionsRequest,
        _$PrivateDnsNameOptionsRequest,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  PrivateDnsNameOptionsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PrivateDnsNameOptionsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'HostnameType':
          result.hostnameType = (serializers.deserialize(
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
    PrivateDnsNameOptionsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'PrivateDnsNameOptionsRequestResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final PrivateDnsNameOptionsRequest(
      :hostnameType,
      :enableResourceNameDnsARecord,
      :enableResourceNameDnsAaaaRecord
    ) = object;
    if (hostnameType != null) {
      result$
        ..add(const _i2.XmlElementName('HostnameType'))
        ..add(serializers.serialize(
          hostnameType,
          specifiedType: const FullType(HostnameType),
        ));
    }
    result$
      ..add(const _i2.XmlElementName('EnableResourceNameDnsARecord'))
      ..add(serializers.serialize(
        enableResourceNameDnsARecord,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i2.XmlElementName('EnableResourceNameDnsAAAARecord'))
      ..add(serializers.serialize(
        enableResourceNameDnsAaaaRecord,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}

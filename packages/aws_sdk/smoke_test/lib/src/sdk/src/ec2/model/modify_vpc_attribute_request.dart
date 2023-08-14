// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_vpc_attribute_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/attribute_boolean_value.dart';

part 'modify_vpc_attribute_request.g.dart';

abstract class ModifyVpcAttributeRequest
    with
        _i1.HttpInput<ModifyVpcAttributeRequest>,
        _i2.AWSEquatable<ModifyVpcAttributeRequest>
    implements
        Built<ModifyVpcAttributeRequest, ModifyVpcAttributeRequestBuilder> {
  factory ModifyVpcAttributeRequest({
    AttributeBooleanValue? enableDnsHostnames,
    AttributeBooleanValue? enableDnsSupport,
    String? vpcId,
    AttributeBooleanValue? enableNetworkAddressUsageMetrics,
  }) {
    return _$ModifyVpcAttributeRequest._(
      enableDnsHostnames: enableDnsHostnames,
      enableDnsSupport: enableDnsSupport,
      vpcId: vpcId,
      enableNetworkAddressUsageMetrics: enableNetworkAddressUsageMetrics,
    );
  }

  factory ModifyVpcAttributeRequest.build(
          [void Function(ModifyVpcAttributeRequestBuilder) updates]) =
      _$ModifyVpcAttributeRequest;

  const ModifyVpcAttributeRequest._();

  factory ModifyVpcAttributeRequest.fromRequest(
    ModifyVpcAttributeRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ModifyVpcAttributeRequest>>
      serializers = [ModifyVpcAttributeRequestEc2QuerySerializer()];

  /// Indicates whether the instances launched in the VPC get DNS hostnames. If enabled, instances in the VPC get DNS hostnames; otherwise, they do not.
  ///
  /// You cannot modify the DNS resolution and DNS hostnames attributes in the same request. Use separate requests for each attribute. You can only enable DNS hostnames if you've enabled DNS support.
  AttributeBooleanValue? get enableDnsHostnames;

  /// Indicates whether the DNS resolution is supported for the VPC. If enabled, queries to the Amazon provided DNS server at the 169.254.169.253 IP address, or the reserved IP address at the base of the VPC network range "plus two" succeed. If disabled, the Amazon provided DNS service in the VPC that resolves public DNS hostnames to IP addresses is not enabled.
  ///
  /// You cannot modify the DNS resolution and DNS hostnames attributes in the same request. Use separate requests for each attribute.
  AttributeBooleanValue? get enableDnsSupport;

  /// The ID of the VPC.
  String? get vpcId;

  /// Indicates whether Network Address Usage metrics are enabled for your VPC.
  AttributeBooleanValue? get enableNetworkAddressUsageMetrics;
  @override
  ModifyVpcAttributeRequest getPayload() => this;
  @override
  List<Object?> get props => [
        enableDnsHostnames,
        enableDnsSupport,
        vpcId,
        enableNetworkAddressUsageMetrics,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ModifyVpcAttributeRequest')
      ..add(
        'enableDnsHostnames',
        enableDnsHostnames,
      )
      ..add(
        'enableDnsSupport',
        enableDnsSupport,
      )
      ..add(
        'vpcId',
        vpcId,
      )
      ..add(
        'enableNetworkAddressUsageMetrics',
        enableNetworkAddressUsageMetrics,
      );
    return helper.toString();
  }
}

class ModifyVpcAttributeRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ModifyVpcAttributeRequest> {
  const ModifyVpcAttributeRequestEc2QuerySerializer()
      : super('ModifyVpcAttributeRequest');

  @override
  Iterable<Type> get types => const [
        ModifyVpcAttributeRequest,
        _$ModifyVpcAttributeRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyVpcAttributeRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyVpcAttributeRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'EnableDnsHostnames':
          result.enableDnsHostnames.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AttributeBooleanValue),
          ) as AttributeBooleanValue));
        case 'EnableDnsSupport':
          result.enableDnsSupport.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AttributeBooleanValue),
          ) as AttributeBooleanValue));
        case 'vpcId':
          result.vpcId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'EnableNetworkAddressUsageMetrics':
          result.enableNetworkAddressUsageMetrics
              .replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AttributeBooleanValue),
          ) as AttributeBooleanValue));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ModifyVpcAttributeRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ModifyVpcAttributeRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyVpcAttributeRequest(
      :enableDnsHostnames,
      :enableDnsSupport,
      :vpcId,
      :enableNetworkAddressUsageMetrics
    ) = object;
    if (enableDnsHostnames != null) {
      result$
        ..add(const _i1.XmlElementName('EnableDnsHostnames'))
        ..add(serializers.serialize(
          enableDnsHostnames,
          specifiedType: const FullType(AttributeBooleanValue),
        ));
    }
    if (enableDnsSupport != null) {
      result$
        ..add(const _i1.XmlElementName('EnableDnsSupport'))
        ..add(serializers.serialize(
          enableDnsSupport,
          specifiedType: const FullType(AttributeBooleanValue),
        ));
    }
    if (vpcId != null) {
      result$
        ..add(const _i1.XmlElementName('VpcId'))
        ..add(serializers.serialize(
          vpcId,
          specifiedType: const FullType(String),
        ));
    }
    if (enableNetworkAddressUsageMetrics != null) {
      result$
        ..add(const _i1.XmlElementName('EnableNetworkAddressUsageMetrics'))
        ..add(serializers.serialize(
          enableNetworkAddressUsageMetrics,
          specifiedType: const FullType(AttributeBooleanValue),
        ));
    }
    return result$;
  }
}

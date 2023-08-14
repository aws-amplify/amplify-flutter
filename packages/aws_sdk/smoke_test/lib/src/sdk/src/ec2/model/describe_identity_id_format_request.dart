// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_identity_id_format_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'describe_identity_id_format_request.g.dart';

abstract class DescribeIdentityIdFormatRequest
    with
        _i1.HttpInput<DescribeIdentityIdFormatRequest>,
        _i2.AWSEquatable<DescribeIdentityIdFormatRequest>
    implements
        Built<DescribeIdentityIdFormatRequest,
            DescribeIdentityIdFormatRequestBuilder> {
  factory DescribeIdentityIdFormatRequest({
    String? principalArn,
    String? resource,
  }) {
    return _$DescribeIdentityIdFormatRequest._(
      principalArn: principalArn,
      resource: resource,
    );
  }

  factory DescribeIdentityIdFormatRequest.build(
          [void Function(DescribeIdentityIdFormatRequestBuilder) updates]) =
      _$DescribeIdentityIdFormatRequest;

  const DescribeIdentityIdFormatRequest._();

  factory DescribeIdentityIdFormatRequest.fromRequest(
    DescribeIdentityIdFormatRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DescribeIdentityIdFormatRequest>>
      serializers = [DescribeIdentityIdFormatRequestEc2QuerySerializer()];

  /// The ARN of the principal, which can be an IAM role, IAM user, or the root user.
  String? get principalArn;

  /// The type of resource: `bundle` | `conversion-task` | `customer-gateway` | `dhcp-options` | `elastic-ip-allocation` | `elastic-ip-association` | `export-task` | `flow-log` | `image` | `import-task` | `instance` | `internet-gateway` | `network-acl` | `network-acl-association` | `network-interface` | `network-interface-attachment` | `prefix-list` | `reservation` | `route-table` | `route-table-association` | `security-group` | `snapshot` | `subnet` | `subnet-cidr-block-association` | `volume` | `vpc` | `vpc-cidr-block-association` | `vpc-endpoint` | `vpc-peering-connection` | `vpn-connection` | `vpn-gateway`
  String? get resource;
  @override
  DescribeIdentityIdFormatRequest getPayload() => this;
  @override
  List<Object?> get props => [
        principalArn,
        resource,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeIdentityIdFormatRequest')
          ..add(
            'principalArn',
            principalArn,
          )
          ..add(
            'resource',
            resource,
          );
    return helper.toString();
  }
}

class DescribeIdentityIdFormatRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeIdentityIdFormatRequest> {
  const DescribeIdentityIdFormatRequestEc2QuerySerializer()
      : super('DescribeIdentityIdFormatRequest');

  @override
  Iterable<Type> get types => const [
        DescribeIdentityIdFormatRequest,
        _$DescribeIdentityIdFormatRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeIdentityIdFormatRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeIdentityIdFormatRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'principalArn':
          result.principalArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'resource':
          result.resource = (serializers.deserialize(
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
    DescribeIdentityIdFormatRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeIdentityIdFormatRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeIdentityIdFormatRequest(:principalArn, :resource) = object;
    if (principalArn != null) {
      result$
        ..add(const _i1.XmlElementName('PrincipalArn'))
        ..add(serializers.serialize(
          principalArn,
          specifiedType: const FullType(String),
        ));
    }
    if (resource != null) {
      result$
        ..add(const _i1.XmlElementName('Resource'))
        ..add(serializers.serialize(
          resource,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}

// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_id_format_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'describe_id_format_request.g.dart';

abstract class DescribeIdFormatRequest
    with
        _i1.HttpInput<DescribeIdFormatRequest>,
        _i2.AWSEquatable<DescribeIdFormatRequest>
    implements Built<DescribeIdFormatRequest, DescribeIdFormatRequestBuilder> {
  factory DescribeIdFormatRequest({String? resource}) {
    return _$DescribeIdFormatRequest._(resource: resource);
  }

  factory DescribeIdFormatRequest.build(
          [void Function(DescribeIdFormatRequestBuilder) updates]) =
      _$DescribeIdFormatRequest;

  const DescribeIdFormatRequest._();

  factory DescribeIdFormatRequest.fromRequest(
    DescribeIdFormatRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DescribeIdFormatRequest>> serializers =
      [DescribeIdFormatRequestEc2QuerySerializer()];

  /// The type of resource: `bundle` | `conversion-task` | `customer-gateway` | `dhcp-options` | `elastic-ip-allocation` | `elastic-ip-association` | `export-task` | `flow-log` | `image` | `import-task` | `instance` | `internet-gateway` | `network-acl` | `network-acl-association` | `network-interface` | `network-interface-attachment` | `prefix-list` | `reservation` | `route-table` | `route-table-association` | `security-group` | `snapshot` | `subnet` | `subnet-cidr-block-association` | `volume` | `vpc` | `vpc-cidr-block-association` | `vpc-endpoint` | `vpc-peering-connection` | `vpn-connection` | `vpn-gateway`
  String? get resource;
  @override
  DescribeIdFormatRequest getPayload() => this;
  @override
  List<Object?> get props => [resource];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeIdFormatRequest')
      ..add(
        'resource',
        resource,
      );
    return helper.toString();
  }
}

class DescribeIdFormatRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeIdFormatRequest> {
  const DescribeIdFormatRequestEc2QuerySerializer()
      : super('DescribeIdFormatRequest');

  @override
  Iterable<Type> get types => const [
        DescribeIdFormatRequest,
        _$DescribeIdFormatRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeIdFormatRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeIdFormatRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Resource':
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
    DescribeIdFormatRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeIdFormatRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeIdFormatRequest(:resource) = object;
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

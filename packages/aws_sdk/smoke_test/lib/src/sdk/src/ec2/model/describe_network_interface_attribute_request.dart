// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_network_interface_attribute_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/network_interface_attribute.dart';

part 'describe_network_interface_attribute_request.g.dart';

/// Contains the parameters for DescribeNetworkInterfaceAttribute.
abstract class DescribeNetworkInterfaceAttributeRequest
    with
        _i1.HttpInput<DescribeNetworkInterfaceAttributeRequest>,
        _i2.AWSEquatable<DescribeNetworkInterfaceAttributeRequest>
    implements
        Built<DescribeNetworkInterfaceAttributeRequest,
            DescribeNetworkInterfaceAttributeRequestBuilder> {
  /// Contains the parameters for DescribeNetworkInterfaceAttribute.
  factory DescribeNetworkInterfaceAttributeRequest({
    NetworkInterfaceAttribute? attribute,
    bool? dryRun,
    String? networkInterfaceId,
  }) {
    dryRun ??= false;
    return _$DescribeNetworkInterfaceAttributeRequest._(
      attribute: attribute,
      dryRun: dryRun,
      networkInterfaceId: networkInterfaceId,
    );
  }

  /// Contains the parameters for DescribeNetworkInterfaceAttribute.
  factory DescribeNetworkInterfaceAttributeRequest.build(
      [void Function(DescribeNetworkInterfaceAttributeRequestBuilder)
          updates]) = _$DescribeNetworkInterfaceAttributeRequest;

  const DescribeNetworkInterfaceAttributeRequest._();

  factory DescribeNetworkInterfaceAttributeRequest.fromRequest(
    DescribeNetworkInterfaceAttributeRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<DescribeNetworkInterfaceAttributeRequest>>
      serializers = [
    DescribeNetworkInterfaceAttributeRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeNetworkInterfaceAttributeRequestBuilder b) {
    b.dryRun = false;
  }

  /// The attribute of the network interface. This parameter is required.
  NetworkInterfaceAttribute? get attribute;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the network interface.
  String? get networkInterfaceId;
  @override
  DescribeNetworkInterfaceAttributeRequest getPayload() => this;
  @override
  List<Object?> get props => [
        attribute,
        dryRun,
        networkInterfaceId,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeNetworkInterfaceAttributeRequest')
          ..add(
            'attribute',
            attribute,
          )
          ..add(
            'dryRun',
            dryRun,
          )
          ..add(
            'networkInterfaceId',
            networkInterfaceId,
          );
    return helper.toString();
  }
}

class DescribeNetworkInterfaceAttributeRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DescribeNetworkInterfaceAttributeRequest> {
  const DescribeNetworkInterfaceAttributeRequestEc2QuerySerializer()
      : super('DescribeNetworkInterfaceAttributeRequest');

  @override
  Iterable<Type> get types => const [
        DescribeNetworkInterfaceAttributeRequest,
        _$DescribeNetworkInterfaceAttributeRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeNetworkInterfaceAttributeRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeNetworkInterfaceAttributeRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'attribute':
          result.attribute = (serializers.deserialize(
            value,
            specifiedType: const FullType(NetworkInterfaceAttribute),
          ) as NetworkInterfaceAttribute);
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'networkInterfaceId':
          result.networkInterfaceId = (serializers.deserialize(
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
    DescribeNetworkInterfaceAttributeRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeNetworkInterfaceAttributeRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeNetworkInterfaceAttributeRequest(
      :attribute,
      :dryRun,
      :networkInterfaceId
    ) = object;
    if (attribute != null) {
      result$
        ..add(const _i1.XmlElementName('Attribute'))
        ..add(serializers.serialize(
          attribute,
          specifiedType: const FullType(NetworkInterfaceAttribute),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (networkInterfaceId != null) {
      result$
        ..add(const _i1.XmlElementName('NetworkInterfaceId'))
        ..add(serializers.serialize(
          networkInterfaceId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}

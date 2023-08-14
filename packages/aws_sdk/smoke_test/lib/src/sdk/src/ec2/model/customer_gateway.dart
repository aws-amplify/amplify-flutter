// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.customer_gateway; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';

part 'customer_gateway.g.dart';

/// Describes a customer gateway.
abstract class CustomerGateway
    with _i1.AWSEquatable<CustomerGateway>
    implements Built<CustomerGateway, CustomerGatewayBuilder> {
  /// Describes a customer gateway.
  factory CustomerGateway({
    String? bgpAsn,
    String? customerGatewayId,
    String? ipAddress,
    String? certificateArn,
    String? state,
    String? type,
    String? deviceName,
    List<Tag>? tags,
  }) {
    return _$CustomerGateway._(
      bgpAsn: bgpAsn,
      customerGatewayId: customerGatewayId,
      ipAddress: ipAddress,
      certificateArn: certificateArn,
      state: state,
      type: type,
      deviceName: deviceName,
      tags: tags == null ? null : _i2.BuiltList(tags),
    );
  }

  /// Describes a customer gateway.
  factory CustomerGateway.build(
      [void Function(CustomerGatewayBuilder) updates]) = _$CustomerGateway;

  const CustomerGateway._();

  static const List<_i3.SmithySerializer<CustomerGateway>> serializers = [
    CustomerGatewayEc2QuerySerializer()
  ];

  /// The customer gateway's Border Gateway Protocol (BGP) Autonomous System Number (ASN).
  String? get bgpAsn;

  /// The ID of the customer gateway.
  String? get customerGatewayId;

  /// The IP address of the customer gateway device's outside interface.
  String? get ipAddress;

  /// The Amazon Resource Name (ARN) for the customer gateway certificate.
  String? get certificateArn;

  /// The current state of the customer gateway (`pending | available | deleting | deleted`).
  String? get state;

  /// The type of VPN connection the customer gateway supports (`ipsec.1`).
  String? get type;

  /// The name of customer gateway device.
  String? get deviceName;

  /// Any tags assigned to the customer gateway.
  _i2.BuiltList<Tag>? get tags;
  @override
  List<Object?> get props => [
        bgpAsn,
        customerGatewayId,
        ipAddress,
        certificateArn,
        state,
        type,
        deviceName,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CustomerGateway')
      ..add(
        'bgpAsn',
        bgpAsn,
      )
      ..add(
        'customerGatewayId',
        customerGatewayId,
      )
      ..add(
        'ipAddress',
        ipAddress,
      )
      ..add(
        'certificateArn',
        certificateArn,
      )
      ..add(
        'state',
        state,
      )
      ..add(
        'type',
        type,
      )
      ..add(
        'deviceName',
        deviceName,
      )
      ..add(
        'tags',
        tags,
      );
    return helper.toString();
  }
}

class CustomerGatewayEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<CustomerGateway> {
  const CustomerGatewayEc2QuerySerializer() : super('CustomerGateway');

  @override
  Iterable<Type> get types => const [
        CustomerGateway,
        _$CustomerGateway,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CustomerGateway deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CustomerGatewayBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'bgpAsn':
          result.bgpAsn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'customerGatewayId':
          result.customerGatewayId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ipAddress':
          result.ipAddress = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'certificateArn':
          result.certificateArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'type':
          result.type = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'deviceName':
          result.deviceName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'tagSet':
          result.tags.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Tag)],
            ),
          ) as _i2.BuiltList<Tag>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CustomerGateway object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'CustomerGatewayResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CustomerGateway(
      :bgpAsn,
      :customerGatewayId,
      :ipAddress,
      :certificateArn,
      :state,
      :type,
      :deviceName,
      :tags
    ) = object;
    if (bgpAsn != null) {
      result$
        ..add(const _i3.XmlElementName('BgpAsn'))
        ..add(serializers.serialize(
          bgpAsn,
          specifiedType: const FullType(String),
        ));
    }
    if (customerGatewayId != null) {
      result$
        ..add(const _i3.XmlElementName('CustomerGatewayId'))
        ..add(serializers.serialize(
          customerGatewayId,
          specifiedType: const FullType(String),
        ));
    }
    if (ipAddress != null) {
      result$
        ..add(const _i3.XmlElementName('IpAddress'))
        ..add(serializers.serialize(
          ipAddress,
          specifiedType: const FullType(String),
        ));
    }
    if (certificateArn != null) {
      result$
        ..add(const _i3.XmlElementName('CertificateArn'))
        ..add(serializers.serialize(
          certificateArn,
          specifiedType: const FullType(String),
        ));
    }
    if (state != null) {
      result$
        ..add(const _i3.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType: const FullType(String),
        ));
    }
    if (type != null) {
      result$
        ..add(const _i3.XmlElementName('Type'))
        ..add(serializers.serialize(
          type,
          specifiedType: const FullType(String),
        ));
    }
    if (deviceName != null) {
      result$
        ..add(const _i3.XmlElementName('DeviceName'))
        ..add(serializers.serialize(
          deviceName,
          specifiedType: const FullType(String),
        ));
    }
    if (tags != null) {
      result$
        ..add(const _i3.XmlElementName('TagSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tags,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(Tag)],
          ),
        ));
    }
    return result$;
  }
}

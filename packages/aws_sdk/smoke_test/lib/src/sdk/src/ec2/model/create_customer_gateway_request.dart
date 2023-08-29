// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_customer_gateway_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/gateway_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart';

part 'create_customer_gateway_request.g.dart';

/// Contains the parameters for CreateCustomerGateway.
abstract class CreateCustomerGatewayRequest
    with
        _i1.HttpInput<CreateCustomerGatewayRequest>,
        _i2.AWSEquatable<CreateCustomerGatewayRequest>
    implements
        Built<CreateCustomerGatewayRequest,
            CreateCustomerGatewayRequestBuilder> {
  /// Contains the parameters for CreateCustomerGateway.
  factory CreateCustomerGatewayRequest({
    int? bgpAsn,
    String? publicIp,
    String? certificateArn,
    GatewayType? type,
    List<TagSpecification>? tagSpecifications,
    String? deviceName,
    String? ipAddress,
    bool? dryRun,
  }) {
    bgpAsn ??= 0;
    dryRun ??= false;
    return _$CreateCustomerGatewayRequest._(
      bgpAsn: bgpAsn,
      publicIp: publicIp,
      certificateArn: certificateArn,
      type: type,
      tagSpecifications:
          tagSpecifications == null ? null : _i3.BuiltList(tagSpecifications),
      deviceName: deviceName,
      ipAddress: ipAddress,
      dryRun: dryRun,
    );
  }

  /// Contains the parameters for CreateCustomerGateway.
  factory CreateCustomerGatewayRequest.build(
          [void Function(CreateCustomerGatewayRequestBuilder) updates]) =
      _$CreateCustomerGatewayRequest;

  const CreateCustomerGatewayRequest._();

  factory CreateCustomerGatewayRequest.fromRequest(
    CreateCustomerGatewayRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CreateCustomerGatewayRequest>>
      serializers = [CreateCustomerGatewayRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateCustomerGatewayRequestBuilder b) {
    b
      ..bgpAsn = 0
      ..dryRun = false;
  }

  /// For devices that support BGP, the customer gateway's BGP ASN.
  ///
  /// Default: 65000
  int get bgpAsn;

  /// _This member has been deprecated._ The Internet-routable IP address for the customer gateway's outside interface. The address must be static.
  String? get publicIp;

  /// The Amazon Resource Name (ARN) for the customer gateway certificate.
  String? get certificateArn;

  /// The type of VPN connection that this customer gateway supports (`ipsec.1`).
  GatewayType? get type;

  /// The tags to apply to the customer gateway.
  _i3.BuiltList<TagSpecification>? get tagSpecifications;

  /// A name for the customer gateway device.
  ///
  /// Length Constraints: Up to 255 characters.
  String? get deviceName;

  /// IPv4 address for the customer gateway device's outside interface. The address must be static.
  String? get ipAddress;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  CreateCustomerGatewayRequest getPayload() => this;
  @override
  List<Object?> get props => [
        bgpAsn,
        publicIp,
        certificateArn,
        type,
        tagSpecifications,
        deviceName,
        ipAddress,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateCustomerGatewayRequest')
      ..add(
        'bgpAsn',
        bgpAsn,
      )
      ..add(
        'publicIp',
        publicIp,
      )
      ..add(
        'certificateArn',
        certificateArn,
      )
      ..add(
        'type',
        type,
      )
      ..add(
        'tagSpecifications',
        tagSpecifications,
      )
      ..add(
        'deviceName',
        deviceName,
      )
      ..add(
        'ipAddress',
        ipAddress,
      )
      ..add(
        'dryRun',
        dryRun,
      );
    return helper.toString();
  }
}

class CreateCustomerGatewayRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CreateCustomerGatewayRequest> {
  const CreateCustomerGatewayRequestEc2QuerySerializer()
      : super('CreateCustomerGatewayRequest');

  @override
  Iterable<Type> get types => const [
        CreateCustomerGatewayRequest,
        _$CreateCustomerGatewayRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateCustomerGatewayRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateCustomerGatewayRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'BgpAsn':
          result.bgpAsn = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'PublicIp':
          result.publicIp = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'CertificateArn':
          result.certificateArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Type':
          result.type = (serializers.deserialize(
            value,
            specifiedType: const FullType(GatewayType),
          ) as GatewayType);
        case 'TagSpecification':
          result.tagSpecifications.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(TagSpecification)],
            ),
          ) as _i3.BuiltList<TagSpecification>));
        case 'DeviceName':
          result.deviceName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'IpAddress':
          result.ipAddress = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'dryRun':
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
    CreateCustomerGatewayRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateCustomerGatewayRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateCustomerGatewayRequest(
      :bgpAsn,
      :publicIp,
      :certificateArn,
      :type,
      :tagSpecifications,
      :deviceName,
      :ipAddress,
      :dryRun
    ) = object;
    result$
      ..add(const _i1.XmlElementName('BgpAsn'))
      ..add(serializers.serialize(
        bgpAsn,
        specifiedType: const FullType(int),
      ));
    if (publicIp != null) {
      result$
        ..add(const _i1.XmlElementName('PublicIp'))
        ..add(serializers.serialize(
          publicIp,
          specifiedType: const FullType(String),
        ));
    }
    if (certificateArn != null) {
      result$
        ..add(const _i1.XmlElementName('CertificateArn'))
        ..add(serializers.serialize(
          certificateArn,
          specifiedType: const FullType(String),
        ));
    }
    if (type != null) {
      result$
        ..add(const _i1.XmlElementName('Type'))
        ..add(serializers.serialize(
          type,
          specifiedType: const FullType.nullable(GatewayType),
        ));
    }
    if (tagSpecifications != null) {
      result$
        ..add(const _i1.XmlElementName('TagSpecification'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tagSpecifications,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(TagSpecification)],
          ),
        ));
    }
    if (deviceName != null) {
      result$
        ..add(const _i1.XmlElementName('DeviceName'))
        ..add(serializers.serialize(
          deviceName,
          specifiedType: const FullType(String),
        ));
    }
    if (ipAddress != null) {
      result$
        ..add(const _i1.XmlElementName('IpAddress'))
        ..add(serializers.serialize(
          ipAddress,
          specifiedType: const FullType(String),
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

// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_vpn_gateway_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/gateway_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart';

part 'create_vpn_gateway_request.g.dart';

/// Contains the parameters for CreateVpnGateway.
abstract class CreateVpnGatewayRequest
    with
        _i1.HttpInput<CreateVpnGatewayRequest>,
        _i2.AWSEquatable<CreateVpnGatewayRequest>
    implements Built<CreateVpnGatewayRequest, CreateVpnGatewayRequestBuilder> {
  /// Contains the parameters for CreateVpnGateway.
  factory CreateVpnGatewayRequest({
    String? availabilityZone,
    GatewayType? type,
    List<TagSpecification>? tagSpecifications,
    _i3.Int64? amazonSideAsn,
    bool? dryRun,
  }) {
    amazonSideAsn ??= _i3.Int64.ZERO;
    dryRun ??= false;
    return _$CreateVpnGatewayRequest._(
      availabilityZone: availabilityZone,
      type: type,
      tagSpecifications:
          tagSpecifications == null ? null : _i4.BuiltList(tagSpecifications),
      amazonSideAsn: amazonSideAsn,
      dryRun: dryRun,
    );
  }

  /// Contains the parameters for CreateVpnGateway.
  factory CreateVpnGatewayRequest.build(
          [void Function(CreateVpnGatewayRequestBuilder) updates]) =
      _$CreateVpnGatewayRequest;

  const CreateVpnGatewayRequest._();

  factory CreateVpnGatewayRequest.fromRequest(
    CreateVpnGatewayRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CreateVpnGatewayRequest>> serializers =
      [CreateVpnGatewayRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateVpnGatewayRequestBuilder b) {
    b
      ..amazonSideAsn = _i3.Int64.ZERO
      ..dryRun = false;
  }

  /// The Availability Zone for the virtual private gateway.
  String? get availabilityZone;

  /// The type of VPN connection this virtual private gateway supports.
  GatewayType? get type;

  /// The tags to apply to the virtual private gateway.
  _i4.BuiltList<TagSpecification>? get tagSpecifications;

  /// A private Autonomous System Number (ASN) for the Amazon side of a BGP session. If you're using a 16-bit ASN, it must be in the 64512 to 65534 range. If you're using a 32-bit ASN, it must be in the 4200000000 to 4294967294 range.
  ///
  /// Default: 64512
  _i3.Int64 get amazonSideAsn;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  CreateVpnGatewayRequest getPayload() => this;
  @override
  List<Object?> get props => [
        availabilityZone,
        type,
        tagSpecifications,
        amazonSideAsn,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateVpnGatewayRequest')
      ..add(
        'availabilityZone',
        availabilityZone,
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
        'amazonSideAsn',
        amazonSideAsn,
      )
      ..add(
        'dryRun',
        dryRun,
      );
    return helper.toString();
  }
}

class CreateVpnGatewayRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CreateVpnGatewayRequest> {
  const CreateVpnGatewayRequestEc2QuerySerializer()
      : super('CreateVpnGatewayRequest');

  @override
  Iterable<Type> get types => const [
        CreateVpnGatewayRequest,
        _$CreateVpnGatewayRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateVpnGatewayRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateVpnGatewayRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'AvailabilityZone':
          result.availabilityZone = (serializers.deserialize(
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
              _i4.BuiltList,
              [FullType(TagSpecification)],
            ),
          ) as _i4.BuiltList<TagSpecification>));
        case 'AmazonSideAsn':
          result.amazonSideAsn = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.Int64),
          ) as _i3.Int64);
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
    CreateVpnGatewayRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateVpnGatewayRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateVpnGatewayRequest(
      :availabilityZone,
      :type,
      :tagSpecifications,
      :amazonSideAsn,
      :dryRun
    ) = object;
    if (availabilityZone != null) {
      result$
        ..add(const _i1.XmlElementName('AvailabilityZone'))
        ..add(serializers.serialize(
          availabilityZone,
          specifiedType: const FullType(String),
        ));
    }
    if (type != null) {
      result$
        ..add(const _i1.XmlElementName('Type'))
        ..add(serializers.serialize(
          type,
          specifiedType: const FullType(GatewayType),
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
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(TagSpecification)],
          ),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('AmazonSideAsn'))
      ..add(serializers.serialize(
        amazonSideAsn,
        specifiedType: const FullType(_i3.Int64),
      ));
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}

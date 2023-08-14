// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_vpn_connection_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/vpn_connection_options_specification.dart';

part 'create_vpn_connection_request.g.dart';

/// Contains the parameters for CreateVpnConnection.
abstract class CreateVpnConnectionRequest
    with
        _i1.HttpInput<CreateVpnConnectionRequest>,
        _i2.AWSEquatable<CreateVpnConnectionRequest>
    implements
        Built<CreateVpnConnectionRequest, CreateVpnConnectionRequestBuilder> {
  /// Contains the parameters for CreateVpnConnection.
  factory CreateVpnConnectionRequest({
    String? customerGatewayId,
    String? type,
    String? vpnGatewayId,
    String? transitGatewayId,
    bool? dryRun,
    VpnConnectionOptionsSpecification? options,
    List<TagSpecification>? tagSpecifications,
  }) {
    dryRun ??= false;
    return _$CreateVpnConnectionRequest._(
      customerGatewayId: customerGatewayId,
      type: type,
      vpnGatewayId: vpnGatewayId,
      transitGatewayId: transitGatewayId,
      dryRun: dryRun,
      options: options,
      tagSpecifications:
          tagSpecifications == null ? null : _i3.BuiltList(tagSpecifications),
    );
  }

  /// Contains the parameters for CreateVpnConnection.
  factory CreateVpnConnectionRequest.build(
          [void Function(CreateVpnConnectionRequestBuilder) updates]) =
      _$CreateVpnConnectionRequest;

  const CreateVpnConnectionRequest._();

  factory CreateVpnConnectionRequest.fromRequest(
    CreateVpnConnectionRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CreateVpnConnectionRequest>>
      serializers = [CreateVpnConnectionRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateVpnConnectionRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the customer gateway.
  String? get customerGatewayId;

  /// The type of VPN connection (`ipsec.1`).
  String? get type;

  /// The ID of the virtual private gateway. If you specify a virtual private gateway, you cannot specify a transit gateway.
  String? get vpnGatewayId;

  /// The ID of the transit gateway. If you specify a transit gateway, you cannot specify a virtual private gateway.
  String? get transitGatewayId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The options for the VPN connection.
  VpnConnectionOptionsSpecification? get options;

  /// The tags to apply to the VPN connection.
  _i3.BuiltList<TagSpecification>? get tagSpecifications;
  @override
  CreateVpnConnectionRequest getPayload() => this;
  @override
  List<Object?> get props => [
        customerGatewayId,
        type,
        vpnGatewayId,
        transitGatewayId,
        dryRun,
        options,
        tagSpecifications,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateVpnConnectionRequest')
      ..add(
        'customerGatewayId',
        customerGatewayId,
      )
      ..add(
        'type',
        type,
      )
      ..add(
        'vpnGatewayId',
        vpnGatewayId,
      )
      ..add(
        'transitGatewayId',
        transitGatewayId,
      )
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'options',
        options,
      )
      ..add(
        'tagSpecifications',
        tagSpecifications,
      );
    return helper.toString();
  }
}

class CreateVpnConnectionRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CreateVpnConnectionRequest> {
  const CreateVpnConnectionRequestEc2QuerySerializer()
      : super('CreateVpnConnectionRequest');

  @override
  Iterable<Type> get types => const [
        CreateVpnConnectionRequest,
        _$CreateVpnConnectionRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateVpnConnectionRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateVpnConnectionRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'CustomerGatewayId':
          result.customerGatewayId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Type':
          result.type = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'VpnGatewayId':
          result.vpnGatewayId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TransitGatewayId':
          result.transitGatewayId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'options':
          result.options.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(VpnConnectionOptionsSpecification),
          ) as VpnConnectionOptionsSpecification));
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateVpnConnectionRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateVpnConnectionRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateVpnConnectionRequest(
      :customerGatewayId,
      :type,
      :vpnGatewayId,
      :transitGatewayId,
      :dryRun,
      :options,
      :tagSpecifications
    ) = object;
    if (customerGatewayId != null) {
      result$
        ..add(const _i1.XmlElementName('CustomerGatewayId'))
        ..add(serializers.serialize(
          customerGatewayId,
          specifiedType: const FullType(String),
        ));
    }
    if (type != null) {
      result$
        ..add(const _i1.XmlElementName('Type'))
        ..add(serializers.serialize(
          type,
          specifiedType: const FullType(String),
        ));
    }
    if (vpnGatewayId != null) {
      result$
        ..add(const _i1.XmlElementName('VpnGatewayId'))
        ..add(serializers.serialize(
          vpnGatewayId,
          specifiedType: const FullType(String),
        ));
    }
    if (transitGatewayId != null) {
      result$
        ..add(const _i1.XmlElementName('TransitGatewayId'))
        ..add(serializers.serialize(
          transitGatewayId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (options != null) {
      result$
        ..add(const _i1.XmlElementName('Options'))
        ..add(serializers.serialize(
          options,
          specifiedType: const FullType(VpnConnectionOptionsSpecification),
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
    return result$;
  }
}

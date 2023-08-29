// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_traffic_mirror_session_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart';

part 'create_traffic_mirror_session_request.g.dart';

abstract class CreateTrafficMirrorSessionRequest
    with
        _i1.HttpInput<CreateTrafficMirrorSessionRequest>,
        _i2.AWSEquatable<CreateTrafficMirrorSessionRequest>
    implements
        Built<CreateTrafficMirrorSessionRequest,
            CreateTrafficMirrorSessionRequestBuilder> {
  factory CreateTrafficMirrorSessionRequest({
    String? networkInterfaceId,
    String? trafficMirrorTargetId,
    String? trafficMirrorFilterId,
    int? packetLength,
    int? sessionNumber,
    int? virtualNetworkId,
    String? description,
    List<TagSpecification>? tagSpecifications,
    bool? dryRun,
    String? clientToken,
  }) {
    packetLength ??= 0;
    sessionNumber ??= 0;
    virtualNetworkId ??= 0;
    dryRun ??= false;
    return _$CreateTrafficMirrorSessionRequest._(
      networkInterfaceId: networkInterfaceId,
      trafficMirrorTargetId: trafficMirrorTargetId,
      trafficMirrorFilterId: trafficMirrorFilterId,
      packetLength: packetLength,
      sessionNumber: sessionNumber,
      virtualNetworkId: virtualNetworkId,
      description: description,
      tagSpecifications:
          tagSpecifications == null ? null : _i3.BuiltList(tagSpecifications),
      dryRun: dryRun,
      clientToken: clientToken,
    );
  }

  factory CreateTrafficMirrorSessionRequest.build(
          [void Function(CreateTrafficMirrorSessionRequestBuilder) updates]) =
      _$CreateTrafficMirrorSessionRequest;

  const CreateTrafficMirrorSessionRequest._();

  factory CreateTrafficMirrorSessionRequest.fromRequest(
    CreateTrafficMirrorSessionRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CreateTrafficMirrorSessionRequest>>
      serializers = [CreateTrafficMirrorSessionRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateTrafficMirrorSessionRequestBuilder b) {
    b
      ..packetLength = 0
      ..sessionNumber = 0
      ..virtualNetworkId = 0
      ..dryRun = false
      ..clientToken = const bool.hasEnvironment('SMITHY_TEST')
          ? '00000000-0000-4000-8000-000000000000'
          : _i2.uuid(secure: true);
  }

  /// The ID of the source network interface.
  String? get networkInterfaceId;

  /// The ID of the Traffic Mirror target.
  String? get trafficMirrorTargetId;

  /// The ID of the Traffic Mirror filter.
  String? get trafficMirrorFilterId;

  /// The number of bytes in each packet to mirror. These are bytes after the VXLAN header. Do not specify this parameter when you want to mirror the entire packet. To mirror a subset of the packet, set this to the length (in bytes) that you want to mirror. For example, if you set this value to 100, then the first 100 bytes that meet the filter criteria are copied to the target.
  ///
  /// If you do not want to mirror the entire packet, use the `PacketLength` parameter to specify the number of bytes in each packet to mirror.
  int get packetLength;

  /// The session number determines the order in which sessions are evaluated when an interface is used by multiple sessions. The first session with a matching filter is the one that mirrors the packets.
  ///
  /// Valid values are 1-32766.
  int get sessionNumber;

  /// The VXLAN ID for the Traffic Mirror session. For more information about the VXLAN protocol, see [RFC 7348](https://tools.ietf.org/html/rfc7348). If you do not specify a `VirtualNetworkId`, an account-wide unique id is chosen at random.
  int get virtualNetworkId;

  /// The description of the Traffic Mirror session.
  String? get description;

  /// The tags to assign to a Traffic Mirror session.
  _i3.BuiltList<TagSpecification>? get tagSpecifications;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see [How to ensure idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  String? get clientToken;
  @override
  CreateTrafficMirrorSessionRequest getPayload() => this;
  @override
  List<Object?> get props => [
        networkInterfaceId,
        trafficMirrorTargetId,
        trafficMirrorFilterId,
        packetLength,
        sessionNumber,
        virtualNetworkId,
        description,
        tagSpecifications,
        dryRun,
        clientToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateTrafficMirrorSessionRequest')
          ..add(
            'networkInterfaceId',
            networkInterfaceId,
          )
          ..add(
            'trafficMirrorTargetId',
            trafficMirrorTargetId,
          )
          ..add(
            'trafficMirrorFilterId',
            trafficMirrorFilterId,
          )
          ..add(
            'packetLength',
            packetLength,
          )
          ..add(
            'sessionNumber',
            sessionNumber,
          )
          ..add(
            'virtualNetworkId',
            virtualNetworkId,
          )
          ..add(
            'description',
            description,
          )
          ..add(
            'tagSpecifications',
            tagSpecifications,
          )
          ..add(
            'dryRun',
            dryRun,
          )
          ..add(
            'clientToken',
            clientToken,
          );
    return helper.toString();
  }
}

class CreateTrafficMirrorSessionRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CreateTrafficMirrorSessionRequest> {
  const CreateTrafficMirrorSessionRequestEc2QuerySerializer()
      : super('CreateTrafficMirrorSessionRequest');

  @override
  Iterable<Type> get types => const [
        CreateTrafficMirrorSessionRequest,
        _$CreateTrafficMirrorSessionRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateTrafficMirrorSessionRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateTrafficMirrorSessionRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'NetworkInterfaceId':
          result.networkInterfaceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TrafficMirrorTargetId':
          result.trafficMirrorTargetId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TrafficMirrorFilterId':
          result.trafficMirrorFilterId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'PacketLength':
          result.packetLength = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'SessionNumber':
          result.sessionNumber = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'VirtualNetworkId':
          result.virtualNetworkId = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'Description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
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
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'ClientToken':
          result.clientToken = (serializers.deserialize(
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
    CreateTrafficMirrorSessionRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateTrafficMirrorSessionRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateTrafficMirrorSessionRequest(
      :networkInterfaceId,
      :trafficMirrorTargetId,
      :trafficMirrorFilterId,
      :packetLength,
      :sessionNumber,
      :virtualNetworkId,
      :description,
      :tagSpecifications,
      :dryRun,
      :clientToken
    ) = object;
    if (networkInterfaceId != null) {
      result$
        ..add(const _i1.XmlElementName('NetworkInterfaceId'))
        ..add(serializers.serialize(
          networkInterfaceId,
          specifiedType: const FullType(String),
        ));
    }
    if (trafficMirrorTargetId != null) {
      result$
        ..add(const _i1.XmlElementName('TrafficMirrorTargetId'))
        ..add(serializers.serialize(
          trafficMirrorTargetId,
          specifiedType: const FullType(String),
        ));
    }
    if (trafficMirrorFilterId != null) {
      result$
        ..add(const _i1.XmlElementName('TrafficMirrorFilterId'))
        ..add(serializers.serialize(
          trafficMirrorFilterId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('PacketLength'))
      ..add(serializers.serialize(
        packetLength,
        specifiedType: const FullType(int),
      ));
    result$
      ..add(const _i1.XmlElementName('SessionNumber'))
      ..add(serializers.serialize(
        sessionNumber,
        specifiedType: const FullType(int),
      ));
    result$
      ..add(const _i1.XmlElementName('VirtualNetworkId'))
      ..add(serializers.serialize(
        virtualNetworkId,
        specifiedType: const FullType(int),
      ));
    if (description != null) {
      result$
        ..add(const _i1.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
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
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (clientToken != null) {
      result$
        ..add(const _i1.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          clientToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}

// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_traffic_mirror_target_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart';

part 'create_traffic_mirror_target_request.g.dart';

abstract class CreateTrafficMirrorTargetRequest
    with
        _i1.HttpInput<CreateTrafficMirrorTargetRequest>,
        _i2.AWSEquatable<CreateTrafficMirrorTargetRequest>
    implements
        Built<CreateTrafficMirrorTargetRequest,
            CreateTrafficMirrorTargetRequestBuilder> {
  factory CreateTrafficMirrorTargetRequest({
    String? networkInterfaceId,
    String? networkLoadBalancerArn,
    String? description,
    List<TagSpecification>? tagSpecifications,
    bool? dryRun,
    String? clientToken,
    String? gatewayLoadBalancerEndpointId,
  }) {
    dryRun ??= false;
    return _$CreateTrafficMirrorTargetRequest._(
      networkInterfaceId: networkInterfaceId,
      networkLoadBalancerArn: networkLoadBalancerArn,
      description: description,
      tagSpecifications:
          tagSpecifications == null ? null : _i3.BuiltList(tagSpecifications),
      dryRun: dryRun,
      clientToken: clientToken,
      gatewayLoadBalancerEndpointId: gatewayLoadBalancerEndpointId,
    );
  }

  factory CreateTrafficMirrorTargetRequest.build(
          [void Function(CreateTrafficMirrorTargetRequestBuilder) updates]) =
      _$CreateTrafficMirrorTargetRequest;

  const CreateTrafficMirrorTargetRequest._();

  factory CreateTrafficMirrorTargetRequest.fromRequest(
    CreateTrafficMirrorTargetRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CreateTrafficMirrorTargetRequest>>
      serializers = [CreateTrafficMirrorTargetRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateTrafficMirrorTargetRequestBuilder b) {
    b
      ..dryRun = false
      ..clientToken = const bool.hasEnvironment('SMITHY_TEST')
          ? '00000000-0000-4000-8000-000000000000'
          : _i2.uuid(secure: true);
  }

  /// The network interface ID that is associated with the target.
  String? get networkInterfaceId;

  /// The Amazon Resource Name (ARN) of the Network Load Balancer that is associated with the target.
  String? get networkLoadBalancerArn;

  /// The description of the Traffic Mirror target.
  String? get description;

  /// The tags to assign to the Traffic Mirror target.
  _i3.BuiltList<TagSpecification>? get tagSpecifications;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see [How to ensure idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  String? get clientToken;

  /// The ID of the Gateway Load Balancer endpoint.
  String? get gatewayLoadBalancerEndpointId;
  @override
  CreateTrafficMirrorTargetRequest getPayload() => this;
  @override
  List<Object?> get props => [
        networkInterfaceId,
        networkLoadBalancerArn,
        description,
        tagSpecifications,
        dryRun,
        clientToken,
        gatewayLoadBalancerEndpointId,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateTrafficMirrorTargetRequest')
          ..add(
            'networkInterfaceId',
            networkInterfaceId,
          )
          ..add(
            'networkLoadBalancerArn',
            networkLoadBalancerArn,
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
          )
          ..add(
            'gatewayLoadBalancerEndpointId',
            gatewayLoadBalancerEndpointId,
          );
    return helper.toString();
  }
}

class CreateTrafficMirrorTargetRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CreateTrafficMirrorTargetRequest> {
  const CreateTrafficMirrorTargetRequestEc2QuerySerializer()
      : super('CreateTrafficMirrorTargetRequest');

  @override
  Iterable<Type> get types => const [
        CreateTrafficMirrorTargetRequest,
        _$CreateTrafficMirrorTargetRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateTrafficMirrorTargetRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateTrafficMirrorTargetRequestBuilder();
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
        case 'NetworkLoadBalancerArn':
          result.networkLoadBalancerArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
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
        case 'GatewayLoadBalancerEndpointId':
          result.gatewayLoadBalancerEndpointId = (serializers.deserialize(
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
    CreateTrafficMirrorTargetRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateTrafficMirrorTargetRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateTrafficMirrorTargetRequest(
      :networkInterfaceId,
      :networkLoadBalancerArn,
      :description,
      :tagSpecifications,
      :dryRun,
      :clientToken,
      :gatewayLoadBalancerEndpointId
    ) = object;
    if (networkInterfaceId != null) {
      result$
        ..add(const _i1.XmlElementName('NetworkInterfaceId'))
        ..add(serializers.serialize(
          networkInterfaceId,
          specifiedType: const FullType(String),
        ));
    }
    if (networkLoadBalancerArn != null) {
      result$
        ..add(const _i1.XmlElementName('NetworkLoadBalancerArn'))
        ..add(serializers.serialize(
          networkLoadBalancerArn,
          specifiedType: const FullType(String),
        ));
    }
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
    if (gatewayLoadBalancerEndpointId != null) {
      result$
        ..add(const _i1.XmlElementName('GatewayLoadBalancerEndpointId'))
        ..add(serializers.serialize(
          gatewayLoadBalancerEndpointId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}

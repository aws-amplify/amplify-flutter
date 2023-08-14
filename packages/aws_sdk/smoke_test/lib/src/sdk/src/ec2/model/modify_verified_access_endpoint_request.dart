// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_verified_access_endpoint_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_verified_access_endpoint_eni_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_verified_access_endpoint_load_balancer_options.dart';

part 'modify_verified_access_endpoint_request.g.dart';

abstract class ModifyVerifiedAccessEndpointRequest
    with
        _i1.HttpInput<ModifyVerifiedAccessEndpointRequest>,
        _i2.AWSEquatable<ModifyVerifiedAccessEndpointRequest>
    implements
        Built<ModifyVerifiedAccessEndpointRequest,
            ModifyVerifiedAccessEndpointRequestBuilder> {
  factory ModifyVerifiedAccessEndpointRequest({
    String? verifiedAccessEndpointId,
    String? verifiedAccessGroupId,
    ModifyVerifiedAccessEndpointLoadBalancerOptions? loadBalancerOptions,
    ModifyVerifiedAccessEndpointEniOptions? networkInterfaceOptions,
    String? description,
    String? clientToken,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$ModifyVerifiedAccessEndpointRequest._(
      verifiedAccessEndpointId: verifiedAccessEndpointId,
      verifiedAccessGroupId: verifiedAccessGroupId,
      loadBalancerOptions: loadBalancerOptions,
      networkInterfaceOptions: networkInterfaceOptions,
      description: description,
      clientToken: clientToken,
      dryRun: dryRun,
    );
  }

  factory ModifyVerifiedAccessEndpointRequest.build(
          [void Function(ModifyVerifiedAccessEndpointRequestBuilder) updates]) =
      _$ModifyVerifiedAccessEndpointRequest;

  const ModifyVerifiedAccessEndpointRequest._();

  factory ModifyVerifiedAccessEndpointRequest.fromRequest(
    ModifyVerifiedAccessEndpointRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ModifyVerifiedAccessEndpointRequest>>
      serializers = [ModifyVerifiedAccessEndpointRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyVerifiedAccessEndpointRequestBuilder b) {
    b
      ..clientToken = const bool.hasEnvironment('SMITHY_TEST')
          ? '00000000-0000-4000-8000-000000000000'
          : _i2.uuid(secure: true)
      ..dryRun = false;
  }

  /// The ID of the Verified Access endpoint.
  String? get verifiedAccessEndpointId;

  /// The ID of the Verified Access group.
  String? get verifiedAccessGroupId;

  /// The load balancer details if creating the Verified Access endpoint as `load-balancer`type.
  ModifyVerifiedAccessEndpointLoadBalancerOptions? get loadBalancerOptions;

  /// The network interface options.
  ModifyVerifiedAccessEndpointEniOptions? get networkInterfaceOptions;

  /// A description for the Verified Access endpoint.
  String? get description;

  /// A unique, case-sensitive token that you provide to ensure idempotency of your modification request. For more information, see [Ensuring Idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  String? get clientToken;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  ModifyVerifiedAccessEndpointRequest getPayload() => this;
  @override
  List<Object?> get props => [
        verifiedAccessEndpointId,
        verifiedAccessGroupId,
        loadBalancerOptions,
        networkInterfaceOptions,
        description,
        clientToken,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ModifyVerifiedAccessEndpointRequest')
          ..add(
            'verifiedAccessEndpointId',
            verifiedAccessEndpointId,
          )
          ..add(
            'verifiedAccessGroupId',
            verifiedAccessGroupId,
          )
          ..add(
            'loadBalancerOptions',
            loadBalancerOptions,
          )
          ..add(
            'networkInterfaceOptions',
            networkInterfaceOptions,
          )
          ..add(
            'description',
            description,
          )
          ..add(
            'clientToken',
            clientToken,
          )
          ..add(
            'dryRun',
            dryRun,
          );
    return helper.toString();
  }
}

class ModifyVerifiedAccessEndpointRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<ModifyVerifiedAccessEndpointRequest> {
  const ModifyVerifiedAccessEndpointRequestEc2QuerySerializer()
      : super('ModifyVerifiedAccessEndpointRequest');

  @override
  Iterable<Type> get types => const [
        ModifyVerifiedAccessEndpointRequest,
        _$ModifyVerifiedAccessEndpointRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyVerifiedAccessEndpointRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyVerifiedAccessEndpointRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'VerifiedAccessEndpointId':
          result.verifiedAccessEndpointId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'VerifiedAccessGroupId':
          result.verifiedAccessGroupId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'LoadBalancerOptions':
          result.loadBalancerOptions.replace((serializers.deserialize(
            value,
            specifiedType:
                const FullType(ModifyVerifiedAccessEndpointLoadBalancerOptions),
          ) as ModifyVerifiedAccessEndpointLoadBalancerOptions));
        case 'NetworkInterfaceOptions':
          result.networkInterfaceOptions.replace((serializers.deserialize(
            value,
            specifiedType:
                const FullType(ModifyVerifiedAccessEndpointEniOptions),
          ) as ModifyVerifiedAccessEndpointEniOptions));
        case 'Description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ClientToken':
          result.clientToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DryRun':
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
    ModifyVerifiedAccessEndpointRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ModifyVerifiedAccessEndpointRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyVerifiedAccessEndpointRequest(
      :verifiedAccessEndpointId,
      :verifiedAccessGroupId,
      :loadBalancerOptions,
      :networkInterfaceOptions,
      :description,
      :clientToken,
      :dryRun
    ) = object;
    if (verifiedAccessEndpointId != null) {
      result$
        ..add(const _i1.XmlElementName('VerifiedAccessEndpointId'))
        ..add(serializers.serialize(
          verifiedAccessEndpointId,
          specifiedType: const FullType(String),
        ));
    }
    if (verifiedAccessGroupId != null) {
      result$
        ..add(const _i1.XmlElementName('VerifiedAccessGroupId'))
        ..add(serializers.serialize(
          verifiedAccessGroupId,
          specifiedType: const FullType(String),
        ));
    }
    if (loadBalancerOptions != null) {
      result$
        ..add(const _i1.XmlElementName('LoadBalancerOptions'))
        ..add(serializers.serialize(
          loadBalancerOptions,
          specifiedType:
              const FullType(ModifyVerifiedAccessEndpointLoadBalancerOptions),
        ));
    }
    if (networkInterfaceOptions != null) {
      result$
        ..add(const _i1.XmlElementName('NetworkInterfaceOptions'))
        ..add(serializers.serialize(
          networkInterfaceOptions,
          specifiedType: const FullType(ModifyVerifiedAccessEndpointEniOptions),
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
    if (clientToken != null) {
      result$
        ..add(const _i1.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          clientToken,
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

// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_ipam_resource_cidr_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'modify_ipam_resource_cidr_request.g.dart';

abstract class ModifyIpamResourceCidrRequest
    with
        _i1.HttpInput<ModifyIpamResourceCidrRequest>,
        _i2.AWSEquatable<ModifyIpamResourceCidrRequest>
    implements
        Built<ModifyIpamResourceCidrRequest,
            ModifyIpamResourceCidrRequestBuilder> {
  factory ModifyIpamResourceCidrRequest({
    bool? dryRun,
    String? resourceId,
    String? resourceCidr,
    String? resourceRegion,
    String? currentIpamScopeId,
    String? destinationIpamScopeId,
    bool? monitored,
  }) {
    dryRun ??= false;
    monitored ??= false;
    return _$ModifyIpamResourceCidrRequest._(
      dryRun: dryRun,
      resourceId: resourceId,
      resourceCidr: resourceCidr,
      resourceRegion: resourceRegion,
      currentIpamScopeId: currentIpamScopeId,
      destinationIpamScopeId: destinationIpamScopeId,
      monitored: monitored,
    );
  }

  factory ModifyIpamResourceCidrRequest.build(
          [void Function(ModifyIpamResourceCidrRequestBuilder) updates]) =
      _$ModifyIpamResourceCidrRequest;

  const ModifyIpamResourceCidrRequest._();

  factory ModifyIpamResourceCidrRequest.fromRequest(
    ModifyIpamResourceCidrRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ModifyIpamResourceCidrRequest>>
      serializers = [ModifyIpamResourceCidrRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyIpamResourceCidrRequestBuilder b) {
    b
      ..dryRun = false
      ..monitored = false;
  }

  /// A check for whether you have the required permissions for the action without actually making the request and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the resource you want to modify.
  String? get resourceId;

  /// The CIDR of the resource you want to modify.
  String? get resourceCidr;

  /// The Amazon Web Services Region of the resource you want to modify.
  String? get resourceRegion;

  /// The ID of the current scope that the resource CIDR is in.
  String? get currentIpamScopeId;

  /// The ID of the scope you want to transfer the resource CIDR to.
  String? get destinationIpamScopeId;

  /// Determines if the resource is monitored by IPAM. If a resource is monitored, the resource is discovered by IPAM and you can view details about the resource’s CIDR.
  bool get monitored;
  @override
  ModifyIpamResourceCidrRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        resourceId,
        resourceCidr,
        resourceRegion,
        currentIpamScopeId,
        destinationIpamScopeId,
        monitored,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ModifyIpamResourceCidrRequest')
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'resourceId',
        resourceId,
      )
      ..add(
        'resourceCidr',
        resourceCidr,
      )
      ..add(
        'resourceRegion',
        resourceRegion,
      )
      ..add(
        'currentIpamScopeId',
        currentIpamScopeId,
      )
      ..add(
        'destinationIpamScopeId',
        destinationIpamScopeId,
      )
      ..add(
        'monitored',
        monitored,
      );
    return helper.toString();
  }
}

class ModifyIpamResourceCidrRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ModifyIpamResourceCidrRequest> {
  const ModifyIpamResourceCidrRequestEc2QuerySerializer()
      : super('ModifyIpamResourceCidrRequest');

  @override
  Iterable<Type> get types => const [
        ModifyIpamResourceCidrRequest,
        _$ModifyIpamResourceCidrRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyIpamResourceCidrRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyIpamResourceCidrRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'ResourceId':
          result.resourceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ResourceCidr':
          result.resourceCidr = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ResourceRegion':
          result.resourceRegion = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'CurrentIpamScopeId':
          result.currentIpamScopeId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DestinationIpamScopeId':
          result.destinationIpamScopeId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Monitored':
          result.monitored = (serializers.deserialize(
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
    ModifyIpamResourceCidrRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ModifyIpamResourceCidrRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyIpamResourceCidrRequest(
      :dryRun,
      :resourceId,
      :resourceCidr,
      :resourceRegion,
      :currentIpamScopeId,
      :destinationIpamScopeId,
      :monitored
    ) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (resourceId != null) {
      result$
        ..add(const _i1.XmlElementName('ResourceId'))
        ..add(serializers.serialize(
          resourceId,
          specifiedType: const FullType(String),
        ));
    }
    if (resourceCidr != null) {
      result$
        ..add(const _i1.XmlElementName('ResourceCidr'))
        ..add(serializers.serialize(
          resourceCidr,
          specifiedType: const FullType(String),
        ));
    }
    if (resourceRegion != null) {
      result$
        ..add(const _i1.XmlElementName('ResourceRegion'))
        ..add(serializers.serialize(
          resourceRegion,
          specifiedType: const FullType(String),
        ));
    }
    if (currentIpamScopeId != null) {
      result$
        ..add(const _i1.XmlElementName('CurrentIpamScopeId'))
        ..add(serializers.serialize(
          currentIpamScopeId,
          specifiedType: const FullType(String),
        ));
    }
    if (destinationIpamScopeId != null) {
      result$
        ..add(const _i1.XmlElementName('DestinationIpamScopeId'))
        ..add(serializers.serialize(
          destinationIpamScopeId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('Monitored'))
      ..add(serializers.serialize(
        monitored,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}

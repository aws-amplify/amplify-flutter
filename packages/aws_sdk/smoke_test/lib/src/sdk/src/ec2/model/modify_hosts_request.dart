// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_hosts_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/auto_placement.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/host_maintenance.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/host_recovery.dart';

part 'modify_hosts_request.g.dart';

abstract class ModifyHostsRequest
    with _i1.HttpInput<ModifyHostsRequest>, _i2.AWSEquatable<ModifyHostsRequest>
    implements Built<ModifyHostsRequest, ModifyHostsRequestBuilder> {
  factory ModifyHostsRequest({
    AutoPlacement? autoPlacement,
    List<String>? hostIds,
    HostRecovery? hostRecovery,
    String? instanceType,
    String? instanceFamily,
    HostMaintenance? hostMaintenance,
  }) {
    return _$ModifyHostsRequest._(
      autoPlacement: autoPlacement,
      hostIds: hostIds == null ? null : _i3.BuiltList(hostIds),
      hostRecovery: hostRecovery,
      instanceType: instanceType,
      instanceFamily: instanceFamily,
      hostMaintenance: hostMaintenance,
    );
  }

  factory ModifyHostsRequest.build(
          [void Function(ModifyHostsRequestBuilder) updates]) =
      _$ModifyHostsRequest;

  const ModifyHostsRequest._();

  factory ModifyHostsRequest.fromRequest(
    ModifyHostsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ModifyHostsRequest>> serializers = [
    ModifyHostsRequestEc2QuerySerializer()
  ];

  /// Specify whether to enable or disable auto-placement.
  AutoPlacement? get autoPlacement;

  /// The IDs of the Dedicated Hosts to modify.
  _i3.BuiltList<String>? get hostIds;

  /// Indicates whether to enable or disable host recovery for the Dedicated Host. For more information, see [Host recovery](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/dedicated-hosts-recovery.html) in the _Amazon EC2 User Guide_.
  HostRecovery? get hostRecovery;

  /// Specifies the instance type to be supported by the Dedicated Host. Specify this parameter to modify a Dedicated Host to support only a specific instance type.
  ///
  /// If you want to modify a Dedicated Host to support multiple instance types in its current instance family, omit this parameter and specify **InstanceFamily** instead. You cannot specify **InstanceType** and **InstanceFamily** in the same request.
  String? get instanceType;

  /// Specifies the instance family to be supported by the Dedicated Host. Specify this parameter to modify a Dedicated Host to support multiple instance types within its current instance family.
  ///
  /// If you want to modify a Dedicated Host to support a specific instance type only, omit this parameter and specify **InstanceType** instead. You cannot specify **InstanceFamily** and **InstanceType** in the same request.
  String? get instanceFamily;

  /// Indicates whether to enable or disable host maintenance for the Dedicated Host. For more information, see [Host maintenance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/dedicated-hosts-maintenance.html) in the _Amazon EC2 User Guide_.
  HostMaintenance? get hostMaintenance;
  @override
  ModifyHostsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        autoPlacement,
        hostIds,
        hostRecovery,
        instanceType,
        instanceFamily,
        hostMaintenance,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ModifyHostsRequest')
      ..add(
        'autoPlacement',
        autoPlacement,
      )
      ..add(
        'hostIds',
        hostIds,
      )
      ..add(
        'hostRecovery',
        hostRecovery,
      )
      ..add(
        'instanceType',
        instanceType,
      )
      ..add(
        'instanceFamily',
        instanceFamily,
      )
      ..add(
        'hostMaintenance',
        hostMaintenance,
      );
    return helper.toString();
  }
}

class ModifyHostsRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ModifyHostsRequest> {
  const ModifyHostsRequestEc2QuerySerializer() : super('ModifyHostsRequest');

  @override
  Iterable<Type> get types => const [
        ModifyHostsRequest,
        _$ModifyHostsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyHostsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyHostsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'autoPlacement':
          result.autoPlacement = (serializers.deserialize(
            value,
            specifiedType: const FullType(AutoPlacement),
          ) as AutoPlacement);
        case 'hostId':
          result.hostIds.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'HostRecovery':
          result.hostRecovery = (serializers.deserialize(
            value,
            specifiedType: const FullType(HostRecovery),
          ) as HostRecovery);
        case 'InstanceType':
          result.instanceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'InstanceFamily':
          result.instanceFamily = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'HostMaintenance':
          result.hostMaintenance = (serializers.deserialize(
            value,
            specifiedType: const FullType(HostMaintenance),
          ) as HostMaintenance);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ModifyHostsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ModifyHostsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyHostsRequest(
      :autoPlacement,
      :hostIds,
      :hostRecovery,
      :instanceType,
      :instanceFamily,
      :hostMaintenance
    ) = object;
    if (autoPlacement != null) {
      result$
        ..add(const _i1.XmlElementName('AutoPlacement'))
        ..add(serializers.serialize(
          autoPlacement,
          specifiedType: const FullType.nullable(AutoPlacement),
        ));
    }
    if (hostIds != null) {
      result$
        ..add(const _i1.XmlElementName('HostId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          hostIds,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (hostRecovery != null) {
      result$
        ..add(const _i1.XmlElementName('HostRecovery'))
        ..add(serializers.serialize(
          hostRecovery,
          specifiedType: const FullType.nullable(HostRecovery),
        ));
    }
    if (instanceType != null) {
      result$
        ..add(const _i1.XmlElementName('InstanceType'))
        ..add(serializers.serialize(
          instanceType,
          specifiedType: const FullType(String),
        ));
    }
    if (instanceFamily != null) {
      result$
        ..add(const _i1.XmlElementName('InstanceFamily'))
        ..add(serializers.serialize(
          instanceFamily,
          specifiedType: const FullType(String),
        ));
    }
    if (hostMaintenance != null) {
      result$
        ..add(const _i1.XmlElementName('HostMaintenance'))
        ..add(serializers.serialize(
          hostMaintenance,
          specifiedType: const FullType.nullable(HostMaintenance),
        ));
    }
    return result$;
  }
}

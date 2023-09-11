// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.network_interface_permission; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/interface_permission_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/network_interface_permission_state.dart';

part 'network_interface_permission.g.dart';

/// Describes a permission for a network interface.
abstract class NetworkInterfacePermission
    with _i1.AWSEquatable<NetworkInterfacePermission>
    implements
        Built<NetworkInterfacePermission, NetworkInterfacePermissionBuilder> {
  /// Describes a permission for a network interface.
  factory NetworkInterfacePermission({
    String? networkInterfacePermissionId,
    String? networkInterfaceId,
    String? awsAccountId,
    String? awsService,
    InterfacePermissionType? permission,
    NetworkInterfacePermissionState? permissionState,
  }) {
    return _$NetworkInterfacePermission._(
      networkInterfacePermissionId: networkInterfacePermissionId,
      networkInterfaceId: networkInterfaceId,
      awsAccountId: awsAccountId,
      awsService: awsService,
      permission: permission,
      permissionState: permissionState,
    );
  }

  /// Describes a permission for a network interface.
  factory NetworkInterfacePermission.build(
          [void Function(NetworkInterfacePermissionBuilder) updates]) =
      _$NetworkInterfacePermission;

  const NetworkInterfacePermission._();

  static const List<_i2.SmithySerializer<NetworkInterfacePermission>>
      serializers = [NetworkInterfacePermissionEc2QuerySerializer()];

  /// The ID of the network interface permission.
  String? get networkInterfacePermissionId;

  /// The ID of the network interface.
  String? get networkInterfaceId;

  /// The Amazon Web Services account ID.
  String? get awsAccountId;

  /// The Amazon Web Service.
  String? get awsService;

  /// The type of permission.
  InterfacePermissionType? get permission;

  /// Information about the state of the permission.
  NetworkInterfacePermissionState? get permissionState;
  @override
  List<Object?> get props => [
        networkInterfacePermissionId,
        networkInterfaceId,
        awsAccountId,
        awsService,
        permission,
        permissionState,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('NetworkInterfacePermission')
      ..add(
        'networkInterfacePermissionId',
        networkInterfacePermissionId,
      )
      ..add(
        'networkInterfaceId',
        networkInterfaceId,
      )
      ..add(
        'awsAccountId',
        awsAccountId,
      )
      ..add(
        'awsService',
        awsService,
      )
      ..add(
        'permission',
        permission,
      )
      ..add(
        'permissionState',
        permissionState,
      );
    return helper.toString();
  }
}

class NetworkInterfacePermissionEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<NetworkInterfacePermission> {
  const NetworkInterfacePermissionEc2QuerySerializer()
      : super('NetworkInterfacePermission');

  @override
  Iterable<Type> get types => const [
        NetworkInterfacePermission,
        _$NetworkInterfacePermission,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  NetworkInterfacePermission deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NetworkInterfacePermissionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'networkInterfacePermissionId':
          result.networkInterfacePermissionId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'networkInterfaceId':
          result.networkInterfaceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'awsAccountId':
          result.awsAccountId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'awsService':
          result.awsService = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'permission':
          result.permission = (serializers.deserialize(
            value,
            specifiedType: const FullType(InterfacePermissionType),
          ) as InterfacePermissionType);
        case 'permissionState':
          result.permissionState.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(NetworkInterfacePermissionState),
          ) as NetworkInterfacePermissionState));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    NetworkInterfacePermission object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'NetworkInterfacePermissionResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final NetworkInterfacePermission(
      :networkInterfacePermissionId,
      :networkInterfaceId,
      :awsAccountId,
      :awsService,
      :permission,
      :permissionState
    ) = object;
    if (networkInterfacePermissionId != null) {
      result$
        ..add(const _i2.XmlElementName('NetworkInterfacePermissionId'))
        ..add(serializers.serialize(
          networkInterfacePermissionId,
          specifiedType: const FullType(String),
        ));
    }
    if (networkInterfaceId != null) {
      result$
        ..add(const _i2.XmlElementName('NetworkInterfaceId'))
        ..add(serializers.serialize(
          networkInterfaceId,
          specifiedType: const FullType(String),
        ));
    }
    if (awsAccountId != null) {
      result$
        ..add(const _i2.XmlElementName('AwsAccountId'))
        ..add(serializers.serialize(
          awsAccountId,
          specifiedType: const FullType(String),
        ));
    }
    if (awsService != null) {
      result$
        ..add(const _i2.XmlElementName('AwsService'))
        ..add(serializers.serialize(
          awsService,
          specifiedType: const FullType(String),
        ));
    }
    if (permission != null) {
      result$
        ..add(const _i2.XmlElementName('Permission'))
        ..add(serializers.serialize(
          permission,
          specifiedType: const FullType(InterfacePermissionType),
        ));
    }
    if (permissionState != null) {
      result$
        ..add(const _i2.XmlElementName('PermissionState'))
        ..add(serializers.serialize(
          permissionState,
          specifiedType: const FullType(NetworkInterfacePermissionState),
        ));
    }
    return result$;
  }
}

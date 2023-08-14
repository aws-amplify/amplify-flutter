// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_network_interface_permission_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/interface_permission_type.dart';

part 'create_network_interface_permission_request.g.dart';

/// Contains the parameters for CreateNetworkInterfacePermission.
abstract class CreateNetworkInterfacePermissionRequest
    with
        _i1.HttpInput<CreateNetworkInterfacePermissionRequest>,
        _i2.AWSEquatable<CreateNetworkInterfacePermissionRequest>
    implements
        Built<CreateNetworkInterfacePermissionRequest,
            CreateNetworkInterfacePermissionRequestBuilder> {
  /// Contains the parameters for CreateNetworkInterfacePermission.
  factory CreateNetworkInterfacePermissionRequest({
    String? networkInterfaceId,
    String? awsAccountId,
    String? awsService,
    InterfacePermissionType? permission,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$CreateNetworkInterfacePermissionRequest._(
      networkInterfaceId: networkInterfaceId,
      awsAccountId: awsAccountId,
      awsService: awsService,
      permission: permission,
      dryRun: dryRun,
    );
  }

  /// Contains the parameters for CreateNetworkInterfacePermission.
  factory CreateNetworkInterfacePermissionRequest.build(
      [void Function(CreateNetworkInterfacePermissionRequestBuilder)
          updates]) = _$CreateNetworkInterfacePermissionRequest;

  const CreateNetworkInterfacePermissionRequest._();

  factory CreateNetworkInterfacePermissionRequest.fromRequest(
    CreateNetworkInterfacePermissionRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<CreateNetworkInterfacePermissionRequest>>
      serializers = [
    CreateNetworkInterfacePermissionRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateNetworkInterfacePermissionRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the network interface.
  String? get networkInterfaceId;

  /// The Amazon Web Services account ID.
  String? get awsAccountId;

  /// The Amazon Web Service. Currently not supported.
  String? get awsService;

  /// The type of permission to grant.
  InterfacePermissionType? get permission;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  CreateNetworkInterfacePermissionRequest getPayload() => this;
  @override
  List<Object?> get props => [
        networkInterfaceId,
        awsAccountId,
        awsService,
        permission,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateNetworkInterfacePermissionRequest')
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
            'dryRun',
            dryRun,
          );
    return helper.toString();
  }
}

class CreateNetworkInterfacePermissionRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<CreateNetworkInterfacePermissionRequest> {
  const CreateNetworkInterfacePermissionRequestEc2QuerySerializer()
      : super('CreateNetworkInterfacePermissionRequest');

  @override
  Iterable<Type> get types => const [
        CreateNetworkInterfacePermissionRequest,
        _$CreateNetworkInterfacePermissionRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateNetworkInterfacePermissionRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateNetworkInterfacePermissionRequestBuilder();
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
        case 'AwsAccountId':
          result.awsAccountId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'AwsService':
          result.awsService = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Permission':
          result.permission = (serializers.deserialize(
            value,
            specifiedType: const FullType(InterfacePermissionType),
          ) as InterfacePermissionType);
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
    CreateNetworkInterfacePermissionRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateNetworkInterfacePermissionRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateNetworkInterfacePermissionRequest(
      :networkInterfaceId,
      :awsAccountId,
      :awsService,
      :permission,
      :dryRun
    ) = object;
    if (networkInterfaceId != null) {
      result$
        ..add(const _i1.XmlElementName('NetworkInterfaceId'))
        ..add(serializers.serialize(
          networkInterfaceId,
          specifiedType: const FullType(String),
        ));
    }
    if (awsAccountId != null) {
      result$
        ..add(const _i1.XmlElementName('AwsAccountId'))
        ..add(serializers.serialize(
          awsAccountId,
          specifiedType: const FullType(String),
        ));
    }
    if (awsService != null) {
      result$
        ..add(const _i1.XmlElementName('AwsService'))
        ..add(serializers.serialize(
          awsService,
          specifiedType: const FullType(String),
        ));
    }
    if (permission != null) {
      result$
        ..add(const _i1.XmlElementName('Permission'))
        ..add(serializers.serialize(
          permission,
          specifiedType: const FullType.nullable(InterfacePermissionType),
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

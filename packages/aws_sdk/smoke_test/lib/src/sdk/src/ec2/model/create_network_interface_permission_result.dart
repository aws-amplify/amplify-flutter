// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_network_interface_permission_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/network_interface_permission.dart';

part 'create_network_interface_permission_result.g.dart';

/// Contains the output of CreateNetworkInterfacePermission.
abstract class CreateNetworkInterfacePermissionResult
    with
        _i1.AWSEquatable<CreateNetworkInterfacePermissionResult>
    implements
        Built<CreateNetworkInterfacePermissionResult,
            CreateNetworkInterfacePermissionResultBuilder> {
  /// Contains the output of CreateNetworkInterfacePermission.
  factory CreateNetworkInterfacePermissionResult(
      {NetworkInterfacePermission? interfacePermission}) {
    return _$CreateNetworkInterfacePermissionResult._(
        interfacePermission: interfacePermission);
  }

  /// Contains the output of CreateNetworkInterfacePermission.
  factory CreateNetworkInterfacePermissionResult.build(
      [void Function(CreateNetworkInterfacePermissionResultBuilder)
          updates]) = _$CreateNetworkInterfacePermissionResult;

  const CreateNetworkInterfacePermissionResult._();

  /// Constructs a [CreateNetworkInterfacePermissionResult] from a [payload] and [response].
  factory CreateNetworkInterfacePermissionResult.fromResponse(
    CreateNetworkInterfacePermissionResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i2.SmithySerializer<CreateNetworkInterfacePermissionResult>>
      serializers = [
    CreateNetworkInterfacePermissionResultEc2QuerySerializer()
  ];

  /// Information about the permission for the network interface.
  NetworkInterfacePermission? get interfacePermission;
  @override
  List<Object?> get props => [interfacePermission];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateNetworkInterfacePermissionResult')
          ..add(
            'interfacePermission',
            interfacePermission,
          );
    return helper.toString();
  }
}

class CreateNetworkInterfacePermissionResultEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<CreateNetworkInterfacePermissionResult> {
  const CreateNetworkInterfacePermissionResultEc2QuerySerializer()
      : super('CreateNetworkInterfacePermissionResult');

  @override
  Iterable<Type> get types => const [
        CreateNetworkInterfacePermissionResult,
        _$CreateNetworkInterfacePermissionResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateNetworkInterfacePermissionResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateNetworkInterfacePermissionResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'interfacePermission':
          result.interfacePermission.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(NetworkInterfacePermission),
          ) as NetworkInterfacePermission));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateNetworkInterfacePermissionResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreateNetworkInterfacePermissionResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateNetworkInterfacePermissionResult(:interfacePermission) = object;
    if (interfacePermission != null) {
      result$
        ..add(const _i2.XmlElementName('InterfacePermission'))
        ..add(serializers.serialize(
          interfacePermission,
          specifiedType: const FullType(NetworkInterfacePermission),
        ));
    }
    return result$;
  }
}

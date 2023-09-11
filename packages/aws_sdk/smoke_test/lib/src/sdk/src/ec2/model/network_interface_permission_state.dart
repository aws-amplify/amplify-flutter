// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.network_interface_permission_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/network_interface_permission_state_code.dart';

part 'network_interface_permission_state.g.dart';

/// Describes the state of a network interface permission.
abstract class NetworkInterfacePermissionState
    with
        _i1.AWSEquatable<NetworkInterfacePermissionState>
    implements
        Built<NetworkInterfacePermissionState,
            NetworkInterfacePermissionStateBuilder> {
  /// Describes the state of a network interface permission.
  factory NetworkInterfacePermissionState({
    NetworkInterfacePermissionStateCode? state,
    String? statusMessage,
  }) {
    return _$NetworkInterfacePermissionState._(
      state: state,
      statusMessage: statusMessage,
    );
  }

  /// Describes the state of a network interface permission.
  factory NetworkInterfacePermissionState.build(
          [void Function(NetworkInterfacePermissionStateBuilder) updates]) =
      _$NetworkInterfacePermissionState;

  const NetworkInterfacePermissionState._();

  static const List<_i2.SmithySerializer<NetworkInterfacePermissionState>>
      serializers = [NetworkInterfacePermissionStateEc2QuerySerializer()];

  /// The state of the permission.
  NetworkInterfacePermissionStateCode? get state;

  /// A status message, if applicable.
  String? get statusMessage;
  @override
  List<Object?> get props => [
        state,
        statusMessage,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('NetworkInterfacePermissionState')
          ..add(
            'state',
            state,
          )
          ..add(
            'statusMessage',
            statusMessage,
          );
    return helper.toString();
  }
}

class NetworkInterfacePermissionStateEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<NetworkInterfacePermissionState> {
  const NetworkInterfacePermissionStateEc2QuerySerializer()
      : super('NetworkInterfacePermissionState');

  @override
  Iterable<Type> get types => const [
        NetworkInterfacePermissionState,
        _$NetworkInterfacePermissionState,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  NetworkInterfacePermissionState deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NetworkInterfacePermissionStateBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(NetworkInterfacePermissionStateCode),
          ) as NetworkInterfacePermissionStateCode);
        case 'statusMessage':
          result.statusMessage = (serializers.deserialize(
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
    NetworkInterfacePermissionState object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'NetworkInterfacePermissionStateResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final NetworkInterfacePermissionState(:state, :statusMessage) = object;
    if (state != null) {
      result$
        ..add(const _i2.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType: const FullType(NetworkInterfacePermissionStateCode),
        ));
    }
    if (statusMessage != null) {
      result$
        ..add(const _i2.XmlElementName('StatusMessage'))
        ..add(serializers.serialize(
          statusMessage,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}

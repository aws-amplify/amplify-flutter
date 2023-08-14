// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.client_connect_response_options; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/client_vpn_endpoint_attribute_status.dart';

part 'client_connect_response_options.g.dart';

/// The options for managing connection authorization for new client connections.
abstract class ClientConnectResponseOptions
    with
        _i1.AWSEquatable<ClientConnectResponseOptions>
    implements
        Built<ClientConnectResponseOptions,
            ClientConnectResponseOptionsBuilder> {
  /// The options for managing connection authorization for new client connections.
  factory ClientConnectResponseOptions({
    bool? enabled,
    String? lambdaFunctionArn,
    ClientVpnEndpointAttributeStatus? status,
  }) {
    enabled ??= false;
    return _$ClientConnectResponseOptions._(
      enabled: enabled,
      lambdaFunctionArn: lambdaFunctionArn,
      status: status,
    );
  }

  /// The options for managing connection authorization for new client connections.
  factory ClientConnectResponseOptions.build(
          [void Function(ClientConnectResponseOptionsBuilder) updates]) =
      _$ClientConnectResponseOptions;

  const ClientConnectResponseOptions._();

  static const List<_i2.SmithySerializer<ClientConnectResponseOptions>>
      serializers = [ClientConnectResponseOptionsEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ClientConnectResponseOptionsBuilder b) {
    b.enabled = false;
  }

  /// Indicates whether client connect options are enabled.
  bool get enabled;

  /// The Amazon Resource Name (ARN) of the Lambda function used for connection authorization.
  String? get lambdaFunctionArn;

  /// The status of any updates to the client connect options.
  ClientVpnEndpointAttributeStatus? get status;
  @override
  List<Object?> get props => [
        enabled,
        lambdaFunctionArn,
        status,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ClientConnectResponseOptions')
      ..add(
        'enabled',
        enabled,
      )
      ..add(
        'lambdaFunctionArn',
        lambdaFunctionArn,
      )
      ..add(
        'status',
        status,
      );
    return helper.toString();
  }
}

class ClientConnectResponseOptionsEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ClientConnectResponseOptions> {
  const ClientConnectResponseOptionsEc2QuerySerializer()
      : super('ClientConnectResponseOptions');

  @override
  Iterable<Type> get types => const [
        ClientConnectResponseOptions,
        _$ClientConnectResponseOptions,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ClientConnectResponseOptions deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ClientConnectResponseOptionsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'enabled':
          result.enabled = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'lambdaFunctionArn':
          result.lambdaFunctionArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'status':
          result.status.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(ClientVpnEndpointAttributeStatus),
          ) as ClientVpnEndpointAttributeStatus));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ClientConnectResponseOptions object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ClientConnectResponseOptionsResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ClientConnectResponseOptions(:enabled, :lambdaFunctionArn, :status) =
        object;
    result$
      ..add(const _i2.XmlElementName('Enabled'))
      ..add(serializers.serialize(
        enabled,
        specifiedType: const FullType(bool),
      ));
    if (lambdaFunctionArn != null) {
      result$
        ..add(const _i2.XmlElementName('LambdaFunctionArn'))
        ..add(serializers.serialize(
          lambdaFunctionArn,
          specifiedType: const FullType(String),
        ));
    }
    if (status != null) {
      result$
        ..add(const _i2.XmlElementName('Status'))
        ..add(serializers.serialize(
          status,
          specifiedType: const FullType(ClientVpnEndpointAttributeStatus),
        ));
    }
    return result$;
  }
}

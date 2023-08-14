// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_network_interface_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/network_interface.dart';

part 'create_network_interface_result.g.dart';

abstract class CreateNetworkInterfaceResult
    with
        _i1.AWSEquatable<CreateNetworkInterfaceResult>
    implements
        Built<CreateNetworkInterfaceResult,
            CreateNetworkInterfaceResultBuilder> {
  factory CreateNetworkInterfaceResult({
    NetworkInterface? networkInterface,
    String? clientToken,
  }) {
    return _$CreateNetworkInterfaceResult._(
      networkInterface: networkInterface,
      clientToken: clientToken,
    );
  }

  factory CreateNetworkInterfaceResult.build(
          [void Function(CreateNetworkInterfaceResultBuilder) updates]) =
      _$CreateNetworkInterfaceResult;

  const CreateNetworkInterfaceResult._();

  /// Constructs a [CreateNetworkInterfaceResult] from a [payload] and [response].
  factory CreateNetworkInterfaceResult.fromResponse(
    CreateNetworkInterfaceResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<CreateNetworkInterfaceResult>>
      serializers = [CreateNetworkInterfaceResultEc2QuerySerializer()];

  /// Information about the network interface.
  NetworkInterface? get networkInterface;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get clientToken;
  @override
  List<Object?> get props => [
        networkInterface,
        clientToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateNetworkInterfaceResult')
      ..add(
        'networkInterface',
        networkInterface,
      )
      ..add(
        'clientToken',
        clientToken,
      );
    return helper.toString();
  }
}

class CreateNetworkInterfaceResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<CreateNetworkInterfaceResult> {
  const CreateNetworkInterfaceResultEc2QuerySerializer()
      : super('CreateNetworkInterfaceResult');

  @override
  Iterable<Type> get types => const [
        CreateNetworkInterfaceResult,
        _$CreateNetworkInterfaceResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateNetworkInterfaceResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateNetworkInterfaceResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'networkInterface':
          result.networkInterface.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(NetworkInterface),
          ) as NetworkInterface));
        case 'clientToken':
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
    CreateNetworkInterfaceResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreateNetworkInterfaceResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateNetworkInterfaceResult(:networkInterface, :clientToken) =
        object;
    if (networkInterface != null) {
      result$
        ..add(const _i2.XmlElementName('NetworkInterface'))
        ..add(serializers.serialize(
          networkInterface,
          specifiedType: const FullType(NetworkInterface),
        ));
    }
    if (clientToken != null) {
      result$
        ..add(const _i2.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          clientToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}

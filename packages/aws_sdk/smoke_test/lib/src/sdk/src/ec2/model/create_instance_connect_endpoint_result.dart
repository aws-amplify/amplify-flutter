// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_instance_connect_endpoint_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/ec2_instance_connect_endpoint.dart';

part 'create_instance_connect_endpoint_result.g.dart';

abstract class CreateInstanceConnectEndpointResult
    with
        _i1.AWSEquatable<CreateInstanceConnectEndpointResult>
    implements
        Built<CreateInstanceConnectEndpointResult,
            CreateInstanceConnectEndpointResultBuilder> {
  factory CreateInstanceConnectEndpointResult({
    Ec2InstanceConnectEndpoint? instanceConnectEndpoint,
    String? clientToken,
  }) {
    return _$CreateInstanceConnectEndpointResult._(
      instanceConnectEndpoint: instanceConnectEndpoint,
      clientToken: clientToken,
    );
  }

  factory CreateInstanceConnectEndpointResult.build(
          [void Function(CreateInstanceConnectEndpointResultBuilder) updates]) =
      _$CreateInstanceConnectEndpointResult;

  const CreateInstanceConnectEndpointResult._();

  /// Constructs a [CreateInstanceConnectEndpointResult] from a [payload] and [response].
  factory CreateInstanceConnectEndpointResult.fromResponse(
    CreateInstanceConnectEndpointResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<CreateInstanceConnectEndpointResult>>
      serializers = [CreateInstanceConnectEndpointResultEc2QuerySerializer()];

  /// Information about the EC2 Instance Connect Endpoint.
  Ec2InstanceConnectEndpoint? get instanceConnectEndpoint;

  /// Unique, case-sensitive idempotency token provided by the client in the the request.
  String? get clientToken;
  @override
  List<Object?> get props => [
        instanceConnectEndpoint,
        clientToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateInstanceConnectEndpointResult')
          ..add(
            'instanceConnectEndpoint',
            instanceConnectEndpoint,
          )
          ..add(
            'clientToken',
            clientToken,
          );
    return helper.toString();
  }
}

class CreateInstanceConnectEndpointResultEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<CreateInstanceConnectEndpointResult> {
  const CreateInstanceConnectEndpointResultEc2QuerySerializer()
      : super('CreateInstanceConnectEndpointResult');

  @override
  Iterable<Type> get types => const [
        CreateInstanceConnectEndpointResult,
        _$CreateInstanceConnectEndpointResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateInstanceConnectEndpointResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateInstanceConnectEndpointResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'instanceConnectEndpoint':
          result.instanceConnectEndpoint.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(Ec2InstanceConnectEndpoint),
          ) as Ec2InstanceConnectEndpoint));
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
    CreateInstanceConnectEndpointResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreateInstanceConnectEndpointResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateInstanceConnectEndpointResult(
      :instanceConnectEndpoint,
      :clientToken
    ) = object;
    if (instanceConnectEndpoint != null) {
      result$
        ..add(const _i2.XmlElementName('InstanceConnectEndpoint'))
        ..add(serializers.serialize(
          instanceConnectEndpoint,
          specifiedType: const FullType(Ec2InstanceConnectEndpoint),
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

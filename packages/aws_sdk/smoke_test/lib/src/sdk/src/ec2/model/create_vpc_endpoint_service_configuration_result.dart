// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_vpc_endpoint_service_configuration_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/service_configuration.dart';

part 'create_vpc_endpoint_service_configuration_result.g.dart';

abstract class CreateVpcEndpointServiceConfigurationResult
    with
        _i1.AWSEquatable<CreateVpcEndpointServiceConfigurationResult>
    implements
        Built<CreateVpcEndpointServiceConfigurationResult,
            CreateVpcEndpointServiceConfigurationResultBuilder> {
  factory CreateVpcEndpointServiceConfigurationResult({
    ServiceConfiguration? serviceConfiguration,
    String? clientToken,
  }) {
    return _$CreateVpcEndpointServiceConfigurationResult._(
      serviceConfiguration: serviceConfiguration,
      clientToken: clientToken,
    );
  }

  factory CreateVpcEndpointServiceConfigurationResult.build(
      [void Function(CreateVpcEndpointServiceConfigurationResultBuilder)
          updates]) = _$CreateVpcEndpointServiceConfigurationResult;

  const CreateVpcEndpointServiceConfigurationResult._();

  /// Constructs a [CreateVpcEndpointServiceConfigurationResult] from a [payload] and [response].
  factory CreateVpcEndpointServiceConfigurationResult.fromResponse(
    CreateVpcEndpointServiceConfigurationResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i2.SmithySerializer<CreateVpcEndpointServiceConfigurationResult>>
      serializers = [
    CreateVpcEndpointServiceConfigurationResultEc2QuerySerializer()
  ];

  /// Information about the service configuration.
  ServiceConfiguration? get serviceConfiguration;

  /// Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.
  String? get clientToken;
  @override
  List<Object?> get props => [
        serviceConfiguration,
        clientToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'CreateVpcEndpointServiceConfigurationResult')
      ..add(
        'serviceConfiguration',
        serviceConfiguration,
      )
      ..add(
        'clientToken',
        clientToken,
      );
    return helper.toString();
  }
}

class CreateVpcEndpointServiceConfigurationResultEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<CreateVpcEndpointServiceConfigurationResult> {
  const CreateVpcEndpointServiceConfigurationResultEc2QuerySerializer()
      : super('CreateVpcEndpointServiceConfigurationResult');

  @override
  Iterable<Type> get types => const [
        CreateVpcEndpointServiceConfigurationResult,
        _$CreateVpcEndpointServiceConfigurationResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateVpcEndpointServiceConfigurationResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateVpcEndpointServiceConfigurationResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'serviceConfiguration':
          result.serviceConfiguration.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(ServiceConfiguration),
          ) as ServiceConfiguration));
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
    CreateVpcEndpointServiceConfigurationResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreateVpcEndpointServiceConfigurationResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateVpcEndpointServiceConfigurationResult(
      :serviceConfiguration,
      :clientToken
    ) = object;
    if (serviceConfiguration != null) {
      result$
        ..add(const _i2.XmlElementName('ServiceConfiguration'))
        ..add(serializers.serialize(
          serviceConfiguration,
          specifiedType: const FullType(ServiceConfiguration),
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

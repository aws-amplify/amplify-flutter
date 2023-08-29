// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_vpc_endpoint_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_endpoint.dart';

part 'create_vpc_endpoint_result.g.dart';

abstract class CreateVpcEndpointResult
    with _i1.AWSEquatable<CreateVpcEndpointResult>
    implements Built<CreateVpcEndpointResult, CreateVpcEndpointResultBuilder> {
  factory CreateVpcEndpointResult({
    VpcEndpoint? vpcEndpoint,
    String? clientToken,
  }) {
    return _$CreateVpcEndpointResult._(
      vpcEndpoint: vpcEndpoint,
      clientToken: clientToken,
    );
  }

  factory CreateVpcEndpointResult.build(
          [void Function(CreateVpcEndpointResultBuilder) updates]) =
      _$CreateVpcEndpointResult;

  const CreateVpcEndpointResult._();

  /// Constructs a [CreateVpcEndpointResult] from a [payload] and [response].
  factory CreateVpcEndpointResult.fromResponse(
    CreateVpcEndpointResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<CreateVpcEndpointResult>> serializers =
      [CreateVpcEndpointResultEc2QuerySerializer()];

  /// Information about the endpoint.
  VpcEndpoint? get vpcEndpoint;

  /// Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.
  String? get clientToken;
  @override
  List<Object?> get props => [
        vpcEndpoint,
        clientToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateVpcEndpointResult')
      ..add(
        'vpcEndpoint',
        vpcEndpoint,
      )
      ..add(
        'clientToken',
        clientToken,
      );
    return helper.toString();
  }
}

class CreateVpcEndpointResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<CreateVpcEndpointResult> {
  const CreateVpcEndpointResultEc2QuerySerializer()
      : super('CreateVpcEndpointResult');

  @override
  Iterable<Type> get types => const [
        CreateVpcEndpointResult,
        _$CreateVpcEndpointResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateVpcEndpointResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateVpcEndpointResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'vpcEndpoint':
          result.vpcEndpoint.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(VpcEndpoint),
          ) as VpcEndpoint));
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
    CreateVpcEndpointResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreateVpcEndpointResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateVpcEndpointResult(:vpcEndpoint, :clientToken) = object;
    if (vpcEndpoint != null) {
      result$
        ..add(const _i2.XmlElementName('VpcEndpoint'))
        ..add(serializers.serialize(
          vpcEndpoint,
          specifiedType: const FullType(VpcEndpoint),
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

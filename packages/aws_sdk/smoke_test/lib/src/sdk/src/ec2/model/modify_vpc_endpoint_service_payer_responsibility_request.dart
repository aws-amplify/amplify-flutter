// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_vpc_endpoint_service_payer_responsibility_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/payer_responsibility.dart';

part 'modify_vpc_endpoint_service_payer_responsibility_request.g.dart';

abstract class ModifyVpcEndpointServicePayerResponsibilityRequest
    with
        _i1.HttpInput<ModifyVpcEndpointServicePayerResponsibilityRequest>,
        _i2.AWSEquatable<ModifyVpcEndpointServicePayerResponsibilityRequest>
    implements
        Built<ModifyVpcEndpointServicePayerResponsibilityRequest,
            ModifyVpcEndpointServicePayerResponsibilityRequestBuilder> {
  factory ModifyVpcEndpointServicePayerResponsibilityRequest({
    bool? dryRun,
    String? serviceId,
    PayerResponsibility? payerResponsibility,
  }) {
    dryRun ??= false;
    return _$ModifyVpcEndpointServicePayerResponsibilityRequest._(
      dryRun: dryRun,
      serviceId: serviceId,
      payerResponsibility: payerResponsibility,
    );
  }

  factory ModifyVpcEndpointServicePayerResponsibilityRequest.build(
      [void Function(ModifyVpcEndpointServicePayerResponsibilityRequestBuilder)
          updates]) = _$ModifyVpcEndpointServicePayerResponsibilityRequest;

  const ModifyVpcEndpointServicePayerResponsibilityRequest._();

  factory ModifyVpcEndpointServicePayerResponsibilityRequest.fromRequest(
    ModifyVpcEndpointServicePayerResponsibilityRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1
          .SmithySerializer<ModifyVpcEndpointServicePayerResponsibilityRequest>>
      serializers = [
    ModifyVpcEndpointServicePayerResponsibilityRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      ModifyVpcEndpointServicePayerResponsibilityRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the service.
  String? get serviceId;

  /// The entity that is responsible for the endpoint costs. The default is the endpoint owner. If you set the payer responsibility to the service owner, you cannot set it back to the endpoint owner.
  PayerResponsibility? get payerResponsibility;
  @override
  ModifyVpcEndpointServicePayerResponsibilityRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        serviceId,
        payerResponsibility,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'ModifyVpcEndpointServicePayerResponsibilityRequest')
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'serviceId',
        serviceId,
      )
      ..add(
        'payerResponsibility',
        payerResponsibility,
      );
    return helper.toString();
  }
}

class ModifyVpcEndpointServicePayerResponsibilityRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<
        ModifyVpcEndpointServicePayerResponsibilityRequest> {
  const ModifyVpcEndpointServicePayerResponsibilityRequestEc2QuerySerializer()
      : super('ModifyVpcEndpointServicePayerResponsibilityRequest');

  @override
  Iterable<Type> get types => const [
        ModifyVpcEndpointServicePayerResponsibilityRequest,
        _$ModifyVpcEndpointServicePayerResponsibilityRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyVpcEndpointServicePayerResponsibilityRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyVpcEndpointServicePayerResponsibilityRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'ServiceId':
          result.serviceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'PayerResponsibility':
          result.payerResponsibility = (serializers.deserialize(
            value,
            specifiedType: const FullType(PayerResponsibility),
          ) as PayerResponsibility);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ModifyVpcEndpointServicePayerResponsibilityRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ModifyVpcEndpointServicePayerResponsibilityRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyVpcEndpointServicePayerResponsibilityRequest(
      :dryRun,
      :serviceId,
      :payerResponsibility
    ) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (serviceId != null) {
      result$
        ..add(const _i1.XmlElementName('ServiceId'))
        ..add(serializers.serialize(
          serviceId,
          specifiedType: const FullType(String),
        ));
    }
    if (payerResponsibility != null) {
      result$
        ..add(const _i1.XmlElementName('PayerResponsibility'))
        ..add(serializers.serialize(
          payerResponsibility,
          specifiedType: const FullType.nullable(PayerResponsibility),
        ));
    }
    return result$;
  }
}

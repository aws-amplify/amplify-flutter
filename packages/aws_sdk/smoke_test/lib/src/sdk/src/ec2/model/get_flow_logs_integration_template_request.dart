// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.get_flow_logs_integration_template_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/integrate_services.dart';

part 'get_flow_logs_integration_template_request.g.dart';

abstract class GetFlowLogsIntegrationTemplateRequest
    with
        _i1.HttpInput<GetFlowLogsIntegrationTemplateRequest>,
        _i2.AWSEquatable<GetFlowLogsIntegrationTemplateRequest>
    implements
        Built<GetFlowLogsIntegrationTemplateRequest,
            GetFlowLogsIntegrationTemplateRequestBuilder> {
  factory GetFlowLogsIntegrationTemplateRequest({
    bool? dryRun,
    String? flowLogId,
    String? configDeliveryS3DestinationArn,
    IntegrateServices? integrateServices,
  }) {
    dryRun ??= false;
    return _$GetFlowLogsIntegrationTemplateRequest._(
      dryRun: dryRun,
      flowLogId: flowLogId,
      configDeliveryS3DestinationArn: configDeliveryS3DestinationArn,
      integrateServices: integrateServices,
    );
  }

  factory GetFlowLogsIntegrationTemplateRequest.build(
      [void Function(GetFlowLogsIntegrationTemplateRequestBuilder)
          updates]) = _$GetFlowLogsIntegrationTemplateRequest;

  const GetFlowLogsIntegrationTemplateRequest._();

  factory GetFlowLogsIntegrationTemplateRequest.fromRequest(
    GetFlowLogsIntegrationTemplateRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<GetFlowLogsIntegrationTemplateRequest>>
      serializers = [GetFlowLogsIntegrationTemplateRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetFlowLogsIntegrationTemplateRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the flow log.
  String? get flowLogId;

  /// To store the CloudFormation template in Amazon S3, specify the location in Amazon S3.
  String? get configDeliveryS3DestinationArn;

  /// Information about the service integration.
  IntegrateServices? get integrateServices;
  @override
  GetFlowLogsIntegrationTemplateRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        flowLogId,
        configDeliveryS3DestinationArn,
        integrateServices,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetFlowLogsIntegrationTemplateRequest')
          ..add(
            'dryRun',
            dryRun,
          )
          ..add(
            'flowLogId',
            flowLogId,
          )
          ..add(
            'configDeliveryS3DestinationArn',
            configDeliveryS3DestinationArn,
          )
          ..add(
            'integrateServices',
            integrateServices,
          );
    return helper.toString();
  }
}

class GetFlowLogsIntegrationTemplateRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<GetFlowLogsIntegrationTemplateRequest> {
  const GetFlowLogsIntegrationTemplateRequestEc2QuerySerializer()
      : super('GetFlowLogsIntegrationTemplateRequest');

  @override
  Iterable<Type> get types => const [
        GetFlowLogsIntegrationTemplateRequest,
        _$GetFlowLogsIntegrationTemplateRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetFlowLogsIntegrationTemplateRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetFlowLogsIntegrationTemplateRequestBuilder();
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
        case 'FlowLogId':
          result.flowLogId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ConfigDeliveryS3DestinationArn':
          result.configDeliveryS3DestinationArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'IntegrateService':
          result.integrateServices.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(IntegrateServices),
          ) as IntegrateServices));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetFlowLogsIntegrationTemplateRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'GetFlowLogsIntegrationTemplateRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final GetFlowLogsIntegrationTemplateRequest(
      :dryRun,
      :flowLogId,
      :configDeliveryS3DestinationArn,
      :integrateServices
    ) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (flowLogId != null) {
      result$
        ..add(const _i1.XmlElementName('FlowLogId'))
        ..add(serializers.serialize(
          flowLogId,
          specifiedType: const FullType(String),
        ));
    }
    if (configDeliveryS3DestinationArn != null) {
      result$
        ..add(const _i1.XmlElementName('ConfigDeliveryS3DestinationArn'))
        ..add(serializers.serialize(
          configDeliveryS3DestinationArn,
          specifiedType: const FullType(String),
        ));
    }
    if (integrateServices != null) {
      result$
        ..add(const _i1.XmlElementName('IntegrateService'))
        ..add(serializers.serialize(
          integrateServices,
          specifiedType: const FullType(IntegrateServices),
        ));
    }
    return result$;
  }
}

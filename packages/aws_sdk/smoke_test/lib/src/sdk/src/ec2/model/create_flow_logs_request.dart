// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_flow_logs_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/destination_options_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/flow_logs_resource_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/log_destination_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/traffic_type.dart';

part 'create_flow_logs_request.g.dart';

abstract class CreateFlowLogsRequest
    with
        _i1.HttpInput<CreateFlowLogsRequest>,
        _i2.AWSEquatable<CreateFlowLogsRequest>
    implements Built<CreateFlowLogsRequest, CreateFlowLogsRequestBuilder> {
  factory CreateFlowLogsRequest({
    bool? dryRun,
    String? clientToken,
    String? deliverLogsPermissionArn,
    String? deliverCrossAccountRole,
    String? logGroupName,
    List<String>? resourceIds,
    FlowLogsResourceType? resourceType,
    TrafficType? trafficType,
    LogDestinationType? logDestinationType,
    String? logDestination,
    String? logFormat,
    List<TagSpecification>? tagSpecifications,
    int? maxAggregationInterval,
    DestinationOptionsRequest? destinationOptions,
  }) {
    dryRun ??= false;
    maxAggregationInterval ??= 0;
    return _$CreateFlowLogsRequest._(
      dryRun: dryRun,
      clientToken: clientToken,
      deliverLogsPermissionArn: deliverLogsPermissionArn,
      deliverCrossAccountRole: deliverCrossAccountRole,
      logGroupName: logGroupName,
      resourceIds: resourceIds == null ? null : _i3.BuiltList(resourceIds),
      resourceType: resourceType,
      trafficType: trafficType,
      logDestinationType: logDestinationType,
      logDestination: logDestination,
      logFormat: logFormat,
      tagSpecifications:
          tagSpecifications == null ? null : _i3.BuiltList(tagSpecifications),
      maxAggregationInterval: maxAggregationInterval,
      destinationOptions: destinationOptions,
    );
  }

  factory CreateFlowLogsRequest.build(
          [void Function(CreateFlowLogsRequestBuilder) updates]) =
      _$CreateFlowLogsRequest;

  const CreateFlowLogsRequest._();

  factory CreateFlowLogsRequest.fromRequest(
    CreateFlowLogsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CreateFlowLogsRequest>> serializers = [
    CreateFlowLogsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateFlowLogsRequestBuilder b) {
    b
      ..dryRun = false
      ..maxAggregationInterval = 0;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see [How to ensure idempotency](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html).
  String? get clientToken;

  /// The ARN of the IAM role that allows Amazon EC2 to publish flow logs to a CloudWatch Logs log group in your account.
  ///
  /// This parameter is required if the destination type is `cloud-watch-logs` and unsupported otherwise.
  String? get deliverLogsPermissionArn;

  /// The ARN of the IAM role that allows Amazon EC2 to publish flow logs across accounts.
  String? get deliverCrossAccountRole;

  /// The name of a new or existing CloudWatch Logs log group where Amazon EC2 publishes your flow logs.
  ///
  /// This parameter is valid only if the destination type is `cloud-watch-logs`.
  String? get logGroupName;

  /// The IDs of the resources to monitor. For example, if the resource type is `VPC`, specify the IDs of the VPCs.
  ///
  /// Constraints: Maximum of 25 for transit gateway resource types. Maximum of 1000 for the other resource types.
  _i3.BuiltList<String>? get resourceIds;

  /// The type of resource to monitor.
  FlowLogsResourceType? get resourceType;

  /// The type of traffic to monitor (accepted traffic, rejected traffic, or all traffic). This parameter is not supported for transit gateway resource types. It is required for the other resource types.
  TrafficType? get trafficType;

  /// The type of destination for the flow log data.
  ///
  /// Default: `cloud-watch-logs`
  LogDestinationType? get logDestinationType;

  /// The destination for the flow log data. The meaning of this parameter depends on the destination type.
  ///
  /// *   If the destination type is `cloud-watch-logs`, specify the ARN of a CloudWatch Logs log group. For example:
  ///
  ///     arn:aws:logs:_region_:_account_id_:log-group:_my_group_
  ///
  ///     Alternatively, use the `LogGroupName` parameter.
  ///
  /// *   If the destination type is `s3`, specify the ARN of an S3 bucket. For example:
  ///
  ///     arn:aws:s3:::_my_bucket_/_my_subfolder_/
  ///
  ///     The subfolder is optional. Note that you can't use `AWSLogs` as a subfolder name.
  ///
  /// *   If the destination type is `kinesis-data-firehose`, specify the ARN of a Kinesis Data Firehose delivery stream. For example:
  ///
  ///     arn:aws:firehose:_region_:_account_id_:deliverystream:_my_stream_
  String? get logDestination;

  /// The fields to include in the flow log record. List the fields in the order in which they should appear. If you omit this parameter, the flow log is created using the default format. If you specify this parameter, you must include at least one field. For more information about the available fields, see [Flow log records](https://docs.aws.amazon.com/vpc/latest/userguide/flow-logs.html#flow-log-records) in the _Amazon VPC User Guide_ or [Transit Gateway Flow Log records](https://docs.aws.amazon.com/vpc/latest/tgw/tgw-flow-logs.html#flow-log-records) in the _Amazon Web Services Transit Gateway Guide_.
  ///
  /// Specify the fields using the `${field-id}` format, separated by spaces.
  String? get logFormat;

  /// The tags to apply to the flow logs.
  _i3.BuiltList<TagSpecification>? get tagSpecifications;

  /// The maximum interval of time during which a flow of packets is captured and aggregated into a flow log record. The possible values are 60 seconds (1 minute) or 600 seconds (10 minutes). This parameter must be 60 seconds for transit gateway resource types.
  ///
  /// When a network interface is attached to a [Nitro-based instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#ec2-nitro-instances), the aggregation interval is always 60 seconds or less, regardless of the value that you specify.
  ///
  /// Default: 600
  int get maxAggregationInterval;

  /// The destination options.
  DestinationOptionsRequest? get destinationOptions;
  @override
  CreateFlowLogsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        clientToken,
        deliverLogsPermissionArn,
        deliverCrossAccountRole,
        logGroupName,
        resourceIds,
        resourceType,
        trafficType,
        logDestinationType,
        logDestination,
        logFormat,
        tagSpecifications,
        maxAggregationInterval,
        destinationOptions,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateFlowLogsRequest')
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'clientToken',
        clientToken,
      )
      ..add(
        'deliverLogsPermissionArn',
        deliverLogsPermissionArn,
      )
      ..add(
        'deliverCrossAccountRole',
        deliverCrossAccountRole,
      )
      ..add(
        'logGroupName',
        logGroupName,
      )
      ..add(
        'resourceIds',
        resourceIds,
      )
      ..add(
        'resourceType',
        resourceType,
      )
      ..add(
        'trafficType',
        trafficType,
      )
      ..add(
        'logDestinationType',
        logDestinationType,
      )
      ..add(
        'logDestination',
        logDestination,
      )
      ..add(
        'logFormat',
        logFormat,
      )
      ..add(
        'tagSpecifications',
        tagSpecifications,
      )
      ..add(
        'maxAggregationInterval',
        maxAggregationInterval,
      )
      ..add(
        'destinationOptions',
        destinationOptions,
      );
    return helper.toString();
  }
}

class CreateFlowLogsRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CreateFlowLogsRequest> {
  const CreateFlowLogsRequestEc2QuerySerializer()
      : super('CreateFlowLogsRequest');

  @override
  Iterable<Type> get types => const [
        CreateFlowLogsRequest,
        _$CreateFlowLogsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateFlowLogsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateFlowLogsRequestBuilder();
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
        case 'ClientToken':
          result.clientToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DeliverLogsPermissionArn':
          result.deliverLogsPermissionArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DeliverCrossAccountRole':
          result.deliverCrossAccountRole = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'LogGroupName':
          result.logGroupName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ResourceId':
          result.resourceIds.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'ResourceType':
          result.resourceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(FlowLogsResourceType),
          ) as FlowLogsResourceType);
        case 'TrafficType':
          result.trafficType = (serializers.deserialize(
            value,
            specifiedType: const FullType(TrafficType),
          ) as TrafficType);
        case 'LogDestinationType':
          result.logDestinationType = (serializers.deserialize(
            value,
            specifiedType: const FullType(LogDestinationType),
          ) as LogDestinationType);
        case 'LogDestination':
          result.logDestination = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'LogFormat':
          result.logFormat = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TagSpecification':
          result.tagSpecifications.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(TagSpecification)],
            ),
          ) as _i3.BuiltList<TagSpecification>));
        case 'MaxAggregationInterval':
          result.maxAggregationInterval = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'DestinationOptions':
          result.destinationOptions.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(DestinationOptionsRequest),
          ) as DestinationOptionsRequest));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateFlowLogsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateFlowLogsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateFlowLogsRequest(
      :dryRun,
      :clientToken,
      :deliverLogsPermissionArn,
      :deliverCrossAccountRole,
      :logGroupName,
      :resourceIds,
      :resourceType,
      :trafficType,
      :logDestinationType,
      :logDestination,
      :logFormat,
      :tagSpecifications,
      :maxAggregationInterval,
      :destinationOptions
    ) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (clientToken != null) {
      result$
        ..add(const _i1.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          clientToken,
          specifiedType: const FullType(String),
        ));
    }
    if (deliverLogsPermissionArn != null) {
      result$
        ..add(const _i1.XmlElementName('DeliverLogsPermissionArn'))
        ..add(serializers.serialize(
          deliverLogsPermissionArn,
          specifiedType: const FullType(String),
        ));
    }
    if (deliverCrossAccountRole != null) {
      result$
        ..add(const _i1.XmlElementName('DeliverCrossAccountRole'))
        ..add(serializers.serialize(
          deliverCrossAccountRole,
          specifiedType: const FullType(String),
        ));
    }
    if (logGroupName != null) {
      result$
        ..add(const _i1.XmlElementName('LogGroupName'))
        ..add(serializers.serialize(
          logGroupName,
          specifiedType: const FullType(String),
        ));
    }
    if (resourceIds != null) {
      result$
        ..add(const _i1.XmlElementName('ResourceId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          resourceIds,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (resourceType != null) {
      result$
        ..add(const _i1.XmlElementName('ResourceType'))
        ..add(serializers.serialize(
          resourceType,
          specifiedType: const FullType(FlowLogsResourceType),
        ));
    }
    if (trafficType != null) {
      result$
        ..add(const _i1.XmlElementName('TrafficType'))
        ..add(serializers.serialize(
          trafficType,
          specifiedType: const FullType(TrafficType),
        ));
    }
    if (logDestinationType != null) {
      result$
        ..add(const _i1.XmlElementName('LogDestinationType'))
        ..add(serializers.serialize(
          logDestinationType,
          specifiedType: const FullType(LogDestinationType),
        ));
    }
    if (logDestination != null) {
      result$
        ..add(const _i1.XmlElementName('LogDestination'))
        ..add(serializers.serialize(
          logDestination,
          specifiedType: const FullType(String),
        ));
    }
    if (logFormat != null) {
      result$
        ..add(const _i1.XmlElementName('LogFormat'))
        ..add(serializers.serialize(
          logFormat,
          specifiedType: const FullType(String),
        ));
    }
    if (tagSpecifications != null) {
      result$
        ..add(const _i1.XmlElementName('TagSpecification'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tagSpecifications,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(TagSpecification)],
          ),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('MaxAggregationInterval'))
      ..add(serializers.serialize(
        maxAggregationInterval,
        specifiedType: const FullType(int),
      ));
    if (destinationOptions != null) {
      result$
        ..add(const _i1.XmlElementName('DestinationOptions'))
        ..add(serializers.serialize(
          destinationOptions,
          specifiedType: const FullType(DestinationOptionsRequest),
        ));
    }
    return result$;
  }
}

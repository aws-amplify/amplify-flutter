// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.run_scheduled_instances_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/scheduled_instances_launch_specification.dart';

part 'run_scheduled_instances_request.g.dart';

/// Contains the parameters for RunScheduledInstances.
abstract class RunScheduledInstancesRequest
    with
        _i1.HttpInput<RunScheduledInstancesRequest>,
        _i2.AWSEquatable<RunScheduledInstancesRequest>
    implements
        Built<RunScheduledInstancesRequest,
            RunScheduledInstancesRequestBuilder> {
  /// Contains the parameters for RunScheduledInstances.
  factory RunScheduledInstancesRequest({
    String? clientToken,
    bool? dryRun,
    int? instanceCount,
    ScheduledInstancesLaunchSpecification? launchSpecification,
    String? scheduledInstanceId,
  }) {
    dryRun ??= false;
    instanceCount ??= 0;
    return _$RunScheduledInstancesRequest._(
      clientToken: clientToken,
      dryRun: dryRun,
      instanceCount: instanceCount,
      launchSpecification: launchSpecification,
      scheduledInstanceId: scheduledInstanceId,
    );
  }

  /// Contains the parameters for RunScheduledInstances.
  factory RunScheduledInstancesRequest.build(
          [void Function(RunScheduledInstancesRequestBuilder) updates]) =
      _$RunScheduledInstancesRequest;

  const RunScheduledInstancesRequest._();

  factory RunScheduledInstancesRequest.fromRequest(
    RunScheduledInstancesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<RunScheduledInstancesRequest>>
      serializers = [RunScheduledInstancesRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RunScheduledInstancesRequestBuilder b) {
    b
      ..clientToken = const bool.hasEnvironment('SMITHY_TEST')
          ? '00000000-0000-4000-8000-000000000000'
          : _i2.uuid(secure: true)
      ..dryRun = false
      ..instanceCount = 0;
  }

  /// Unique, case-sensitive identifier that ensures the idempotency of the request. For more information, see [Ensuring Idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  String? get clientToken;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The number of instances.
  ///
  /// Default: 1
  int get instanceCount;

  /// The launch specification. You must match the instance type, Availability Zone, network, and platform of the schedule that you purchased.
  ScheduledInstancesLaunchSpecification? get launchSpecification;

  /// The Scheduled Instance ID.
  String? get scheduledInstanceId;
  @override
  RunScheduledInstancesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        clientToken,
        dryRun,
        instanceCount,
        launchSpecification,
        scheduledInstanceId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RunScheduledInstancesRequest')
      ..add(
        'clientToken',
        clientToken,
      )
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'instanceCount',
        instanceCount,
      )
      ..add(
        'launchSpecification',
        '***SENSITIVE***',
      )
      ..add(
        'scheduledInstanceId',
        scheduledInstanceId,
      );
    return helper.toString();
  }
}

class RunScheduledInstancesRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<RunScheduledInstancesRequest> {
  const RunScheduledInstancesRequestEc2QuerySerializer()
      : super('RunScheduledInstancesRequest');

  @override
  Iterable<Type> get types => const [
        RunScheduledInstancesRequest,
        _$RunScheduledInstancesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  RunScheduledInstancesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RunScheduledInstancesRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ClientToken':
          result.clientToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'InstanceCount':
          result.instanceCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'LaunchSpecification':
          result.launchSpecification.replace((serializers.deserialize(
            value,
            specifiedType:
                const FullType(ScheduledInstancesLaunchSpecification),
          ) as ScheduledInstancesLaunchSpecification));
        case 'ScheduledInstanceId':
          result.scheduledInstanceId = (serializers.deserialize(
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
    RunScheduledInstancesRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'RunScheduledInstancesRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final RunScheduledInstancesRequest(
      :clientToken,
      :dryRun,
      :instanceCount,
      :launchSpecification,
      :scheduledInstanceId
    ) = object;
    if (clientToken != null) {
      result$
        ..add(const _i1.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          clientToken,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i1.XmlElementName('InstanceCount'))
      ..add(serializers.serialize(
        instanceCount,
        specifiedType: const FullType(int),
      ));
    if (launchSpecification != null) {
      result$
        ..add(const _i1.XmlElementName('LaunchSpecification'))
        ..add(serializers.serialize(
          launchSpecification,
          specifiedType: const FullType(ScheduledInstancesLaunchSpecification),
        ));
    }
    if (scheduledInstanceId != null) {
      result$
        ..add(const _i1.XmlElementName('ScheduledInstanceId'))
        ..add(serializers.serialize(
          scheduledInstanceId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}

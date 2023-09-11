// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.report_instance_status_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/report_instance_reason_codes.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/report_status_type.dart';

part 'report_instance_status_request.g.dart';

abstract class ReportInstanceStatusRequest
    with
        _i1.HttpInput<ReportInstanceStatusRequest>,
        _i2.AWSEquatable<ReportInstanceStatusRequest>
    implements
        Built<ReportInstanceStatusRequest, ReportInstanceStatusRequestBuilder> {
  factory ReportInstanceStatusRequest({
    String? description,
    bool? dryRun,
    DateTime? endTime,
    List<String>? instances,
    List<ReportInstanceReasonCodes>? reasonCodes,
    DateTime? startTime,
    ReportStatusType? status,
  }) {
    dryRun ??= false;
    return _$ReportInstanceStatusRequest._(
      description: description,
      dryRun: dryRun,
      endTime: endTime,
      instances: instances == null ? null : _i3.BuiltList(instances),
      reasonCodes: reasonCodes == null ? null : _i3.BuiltList(reasonCodes),
      startTime: startTime,
      status: status,
    );
  }

  factory ReportInstanceStatusRequest.build(
          [void Function(ReportInstanceStatusRequestBuilder) updates]) =
      _$ReportInstanceStatusRequest;

  const ReportInstanceStatusRequest._();

  factory ReportInstanceStatusRequest.fromRequest(
    ReportInstanceStatusRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ReportInstanceStatusRequest>>
      serializers = [ReportInstanceStatusRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ReportInstanceStatusRequestBuilder b) {
    b.dryRun = false;
  }

  /// Descriptive text about the health state of your instance.
  String? get description;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The time at which the reported instance health state ended.
  DateTime? get endTime;

  /// The instances.
  _i3.BuiltList<String>? get instances;

  /// The reason codes that describe the health state of your instance.
  ///
  /// *   `instance-stuck-in-state`: My instance is stuck in a state.
  ///
  /// *   `unresponsive`: My instance is unresponsive.
  ///
  /// *   `not-accepting-credentials`: My instance is not accepting my credentials.
  ///
  /// *   `password-not-available`: A password is not available for my instance.
  ///
  /// *   `performance-network`: My instance is experiencing performance problems that I believe are network related.
  ///
  /// *   `performance-instance-store`: My instance is experiencing performance problems that I believe are related to the instance stores.
  ///
  /// *   `performance-ebs-volume`: My instance is experiencing performance problems that I believe are related to an EBS volume.
  ///
  /// *   `performance-other`: My instance is experiencing performance problems.
  ///
  /// *   `other`: \[explain using the description parameter\]
  _i3.BuiltList<ReportInstanceReasonCodes>? get reasonCodes;

  /// The time at which the reported instance health state began.
  DateTime? get startTime;

  /// The status of all instances listed.
  ReportStatusType? get status;
  @override
  ReportInstanceStatusRequest getPayload() => this;
  @override
  List<Object?> get props => [
        description,
        dryRun,
        endTime,
        instances,
        reasonCodes,
        startTime,
        status,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ReportInstanceStatusRequest')
      ..add(
        'description',
        description,
      )
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'endTime',
        endTime,
      )
      ..add(
        'instances',
        instances,
      )
      ..add(
        'reasonCodes',
        reasonCodes,
      )
      ..add(
        'startTime',
        startTime,
      )
      ..add(
        'status',
        status,
      );
    return helper.toString();
  }
}

class ReportInstanceStatusRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ReportInstanceStatusRequest> {
  const ReportInstanceStatusRequestEc2QuerySerializer()
      : super('ReportInstanceStatusRequest');

  @override
  Iterable<Type> get types => const [
        ReportInstanceStatusRequest,
        _$ReportInstanceStatusRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ReportInstanceStatusRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReportInstanceStatusRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'endTime':
          result.endTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'instanceId':
          result.instances.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'InstanceId',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'reasonCode':
          result.reasonCodes.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(ReportInstanceReasonCodes)],
            ),
          ) as _i3.BuiltList<ReportInstanceReasonCodes>));
        case 'startTime':
          result.startTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'status':
          result.status = (serializers.deserialize(
            value,
            specifiedType: const FullType(ReportStatusType),
          ) as ReportStatusType);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ReportInstanceStatusRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ReportInstanceStatusRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ReportInstanceStatusRequest(
      :description,
      :dryRun,
      :endTime,
      :instances,
      :reasonCodes,
      :startTime,
      :status
    ) = object;
    if (description != null) {
      result$
        ..add(const _i1.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (endTime != null) {
      result$
        ..add(const _i1.XmlElementName('EndTime'))
        ..add(serializers.serialize(
          endTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (instances != null) {
      result$
        ..add(const _i1.XmlElementName('InstanceId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'InstanceId',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          instances,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (reasonCodes != null) {
      result$
        ..add(const _i1.XmlElementName('ReasonCode'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          reasonCodes,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(ReportInstanceReasonCodes)],
          ),
        ));
    }
    if (startTime != null) {
      result$
        ..add(const _i1.XmlElementName('StartTime'))
        ..add(serializers.serialize(
          startTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (status != null) {
      result$
        ..add(const _i1.XmlElementName('Status'))
        ..add(serializers.serialize(
          status,
          specifiedType: const FullType(ReportStatusType),
        ));
    }
    return result$;
  }
}

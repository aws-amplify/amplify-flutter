// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_instance_event_window_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_event_window_time_range_request.dart';

part 'modify_instance_event_window_request.g.dart';

abstract class ModifyInstanceEventWindowRequest
    with
        _i1.HttpInput<ModifyInstanceEventWindowRequest>,
        _i2.AWSEquatable<ModifyInstanceEventWindowRequest>
    implements
        Built<ModifyInstanceEventWindowRequest,
            ModifyInstanceEventWindowRequestBuilder> {
  factory ModifyInstanceEventWindowRequest({
    bool? dryRun,
    String? name,
    String? instanceEventWindowId,
    List<InstanceEventWindowTimeRangeRequest>? timeRanges,
    String? cronExpression,
  }) {
    dryRun ??= false;
    return _$ModifyInstanceEventWindowRequest._(
      dryRun: dryRun,
      name: name,
      instanceEventWindowId: instanceEventWindowId,
      timeRanges: timeRanges == null ? null : _i3.BuiltList(timeRanges),
      cronExpression: cronExpression,
    );
  }

  factory ModifyInstanceEventWindowRequest.build(
          [void Function(ModifyInstanceEventWindowRequestBuilder) updates]) =
      _$ModifyInstanceEventWindowRequest;

  const ModifyInstanceEventWindowRequest._();

  factory ModifyInstanceEventWindowRequest.fromRequest(
    ModifyInstanceEventWindowRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ModifyInstanceEventWindowRequest>>
      serializers = [ModifyInstanceEventWindowRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyInstanceEventWindowRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The name of the event window.
  String? get name;

  /// The ID of the event window.
  String? get instanceEventWindowId;

  /// The time ranges of the event window.
  _i3.BuiltList<InstanceEventWindowTimeRangeRequest>? get timeRanges;

  /// The cron expression of the event window, for example, `* 0-4,20-23 * * 1,5`.
  ///
  /// Constraints:
  ///
  /// *   Only hour and day of the week values are supported.
  ///
  /// *   For day of the week values, you can specify either integers `0` through `6`, or alternative single values `SUN` through `SAT`.
  ///
  /// *   The minute, month, and year must be specified by `*`.
  ///
  /// *   The hour value must be one or a multiple range, for example, `0-4` or `0-4,20-23`.
  ///
  /// *   Each hour range must be >= 2 hours, for example, `0-2` or `20-23`.
  ///
  /// *   The event window must be >= 4 hours. The combined total time ranges in the event window must be >= 4 hours.
  ///
  ///
  /// For more information about cron expressions, see [cron](https://en.wikipedia.org/wiki/Cron) on the _Wikipedia website_.
  String? get cronExpression;
  @override
  ModifyInstanceEventWindowRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        name,
        instanceEventWindowId,
        timeRanges,
        cronExpression,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ModifyInstanceEventWindowRequest')
          ..add(
            'dryRun',
            dryRun,
          )
          ..add(
            'name',
            name,
          )
          ..add(
            'instanceEventWindowId',
            instanceEventWindowId,
          )
          ..add(
            'timeRanges',
            timeRanges,
          )
          ..add(
            'cronExpression',
            cronExpression,
          );
    return helper.toString();
  }
}

class ModifyInstanceEventWindowRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ModifyInstanceEventWindowRequest> {
  const ModifyInstanceEventWindowRequestEc2QuerySerializer()
      : super('ModifyInstanceEventWindowRequest');

  @override
  Iterable<Type> get types => const [
        ModifyInstanceEventWindowRequest,
        _$ModifyInstanceEventWindowRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyInstanceEventWindowRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyInstanceEventWindowRequestBuilder();
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
        case 'Name':
          result.name = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'InstanceEventWindowId':
          result.instanceEventWindowId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TimeRange':
          result.timeRanges.replace((const _i1.XmlBuiltListSerializer(
                  indexer: _i1.XmlIndexer.ec2QueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(InstanceEventWindowTimeRangeRequest)],
            ),
          ) as _i3.BuiltList<InstanceEventWindowTimeRangeRequest>));
        case 'CronExpression':
          result.cronExpression = (serializers.deserialize(
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
    ModifyInstanceEventWindowRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ModifyInstanceEventWindowRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyInstanceEventWindowRequest(
      :dryRun,
      :name,
      :instanceEventWindowId,
      :timeRanges,
      :cronExpression
    ) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (name != null) {
      result$
        ..add(const _i1.XmlElementName('Name'))
        ..add(serializers.serialize(
          name,
          specifiedType: const FullType(String),
        ));
    }
    if (instanceEventWindowId != null) {
      result$
        ..add(const _i1.XmlElementName('InstanceEventWindowId'))
        ..add(serializers.serialize(
          instanceEventWindowId,
          specifiedType: const FullType(String),
        ));
    }
    if (timeRanges != null) {
      result$
        ..add(const _i1.XmlElementName('TimeRange'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.ec2QueryList)
            .serialize(
          serializers,
          timeRanges,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(InstanceEventWindowTimeRangeRequest)],
          ),
        ));
    }
    if (cronExpression != null) {
      result$
        ..add(const _i1.XmlElementName('CronExpression'))
        ..add(serializers.serialize(
          cronExpression,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}

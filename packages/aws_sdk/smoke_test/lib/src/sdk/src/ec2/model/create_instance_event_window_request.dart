// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_instance_event_window_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_event_window_time_range_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart';

part 'create_instance_event_window_request.g.dart';

abstract class CreateInstanceEventWindowRequest
    with
        _i1.HttpInput<CreateInstanceEventWindowRequest>,
        _i2.AWSEquatable<CreateInstanceEventWindowRequest>
    implements
        Built<CreateInstanceEventWindowRequest,
            CreateInstanceEventWindowRequestBuilder> {
  factory CreateInstanceEventWindowRequest({
    bool? dryRun,
    String? name,
    List<InstanceEventWindowTimeRangeRequest>? timeRanges,
    String? cronExpression,
    List<TagSpecification>? tagSpecifications,
  }) {
    dryRun ??= false;
    return _$CreateInstanceEventWindowRequest._(
      dryRun: dryRun,
      name: name,
      timeRanges: timeRanges == null ? null : _i3.BuiltList(timeRanges),
      cronExpression: cronExpression,
      tagSpecifications:
          tagSpecifications == null ? null : _i3.BuiltList(tagSpecifications),
    );
  }

  factory CreateInstanceEventWindowRequest.build(
          [void Function(CreateInstanceEventWindowRequestBuilder) updates]) =
      _$CreateInstanceEventWindowRequest;

  const CreateInstanceEventWindowRequest._();

  factory CreateInstanceEventWindowRequest.fromRequest(
    CreateInstanceEventWindowRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CreateInstanceEventWindowRequest>>
      serializers = [CreateInstanceEventWindowRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateInstanceEventWindowRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The name of the event window.
  String? get name;

  /// The time range for the event window. If you specify a time range, you can't specify a cron expression.
  _i3.BuiltList<InstanceEventWindowTimeRangeRequest>? get timeRanges;

  /// The cron expression for the event window, for example, `* 0-4,20-23 * * 1,5`. If you specify a cron expression, you can't specify a time range.
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

  /// The tags to apply to the event window.
  _i3.BuiltList<TagSpecification>? get tagSpecifications;
  @override
  CreateInstanceEventWindowRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        name,
        timeRanges,
        cronExpression,
        tagSpecifications,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateInstanceEventWindowRequest')
          ..add(
            'dryRun',
            dryRun,
          )
          ..add(
            'name',
            name,
          )
          ..add(
            'timeRanges',
            timeRanges,
          )
          ..add(
            'cronExpression',
            cronExpression,
          )
          ..add(
            'tagSpecifications',
            tagSpecifications,
          );
    return helper.toString();
  }
}

class CreateInstanceEventWindowRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CreateInstanceEventWindowRequest> {
  const CreateInstanceEventWindowRequestEc2QuerySerializer()
      : super('CreateInstanceEventWindowRequest');

  @override
  Iterable<Type> get types => const [
        CreateInstanceEventWindowRequest,
        _$CreateInstanceEventWindowRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateInstanceEventWindowRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateInstanceEventWindowRequestBuilder();
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateInstanceEventWindowRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateInstanceEventWindowRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateInstanceEventWindowRequest(
      :dryRun,
      :name,
      :timeRanges,
      :cronExpression,
      :tagSpecifications
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
    if (timeRanges != null) {
      result$
        ..add(const _i1.XmlElementName('TimeRange'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.ec2QueryList)
            .serialize(
          serializers,
          timeRanges,
          specifiedType: const FullType.nullable(
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
    if (tagSpecifications != null) {
      result$
        ..add(const _i1.XmlElementName('TagSpecification'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tagSpecifications,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(TagSpecification)],
          ),
        ));
    }
    return result$;
  }
}

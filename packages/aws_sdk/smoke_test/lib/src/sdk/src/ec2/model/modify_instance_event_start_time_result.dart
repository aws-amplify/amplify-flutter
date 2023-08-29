// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_instance_event_start_time_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_status_event.dart';

part 'modify_instance_event_start_time_result.g.dart';

abstract class ModifyInstanceEventStartTimeResult
    with
        _i1.AWSEquatable<ModifyInstanceEventStartTimeResult>
    implements
        Built<ModifyInstanceEventStartTimeResult,
            ModifyInstanceEventStartTimeResultBuilder> {
  factory ModifyInstanceEventStartTimeResult({InstanceStatusEvent? event}) {
    return _$ModifyInstanceEventStartTimeResult._(event: event);
  }

  factory ModifyInstanceEventStartTimeResult.build(
          [void Function(ModifyInstanceEventStartTimeResultBuilder) updates]) =
      _$ModifyInstanceEventStartTimeResult;

  const ModifyInstanceEventStartTimeResult._();

  /// Constructs a [ModifyInstanceEventStartTimeResult] from a [payload] and [response].
  factory ModifyInstanceEventStartTimeResult.fromResponse(
    ModifyInstanceEventStartTimeResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<ModifyInstanceEventStartTimeResult>>
      serializers = [ModifyInstanceEventStartTimeResultEc2QuerySerializer()];

  /// Information about the event.
  InstanceStatusEvent? get event;
  @override
  List<Object?> get props => [event];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ModifyInstanceEventStartTimeResult')
          ..add(
            'event',
            event,
          );
    return helper.toString();
  }
}

class ModifyInstanceEventStartTimeResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ModifyInstanceEventStartTimeResult> {
  const ModifyInstanceEventStartTimeResultEc2QuerySerializer()
      : super('ModifyInstanceEventStartTimeResult');

  @override
  Iterable<Type> get types => const [
        ModifyInstanceEventStartTimeResult,
        _$ModifyInstanceEventStartTimeResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyInstanceEventStartTimeResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyInstanceEventStartTimeResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'event':
          result.event.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(InstanceStatusEvent),
          ) as InstanceStatusEvent));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ModifyInstanceEventStartTimeResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ModifyInstanceEventStartTimeResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyInstanceEventStartTimeResult(:event) = object;
    if (event != null) {
      result$
        ..add(const _i2.XmlElementName('Event'))
        ..add(serializers.serialize(
          event,
          specifiedType: const FullType(InstanceStatusEvent),
        ));
    }
    return result$;
  }
}

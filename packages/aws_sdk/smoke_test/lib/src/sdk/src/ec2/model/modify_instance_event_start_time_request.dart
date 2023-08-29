// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_instance_event_start_time_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'modify_instance_event_start_time_request.g.dart';

abstract class ModifyInstanceEventStartTimeRequest
    with
        _i1.HttpInput<ModifyInstanceEventStartTimeRequest>,
        _i2.AWSEquatable<ModifyInstanceEventStartTimeRequest>
    implements
        Built<ModifyInstanceEventStartTimeRequest,
            ModifyInstanceEventStartTimeRequestBuilder> {
  factory ModifyInstanceEventStartTimeRequest({
    bool? dryRun,
    String? instanceId,
    String? instanceEventId,
    DateTime? notBefore,
  }) {
    dryRun ??= false;
    return _$ModifyInstanceEventStartTimeRequest._(
      dryRun: dryRun,
      instanceId: instanceId,
      instanceEventId: instanceEventId,
      notBefore: notBefore,
    );
  }

  factory ModifyInstanceEventStartTimeRequest.build(
          [void Function(ModifyInstanceEventStartTimeRequestBuilder) updates]) =
      _$ModifyInstanceEventStartTimeRequest;

  const ModifyInstanceEventStartTimeRequest._();

  factory ModifyInstanceEventStartTimeRequest.fromRequest(
    ModifyInstanceEventStartTimeRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ModifyInstanceEventStartTimeRequest>>
      serializers = [ModifyInstanceEventStartTimeRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyInstanceEventStartTimeRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the instance with the scheduled event.
  String? get instanceId;

  /// The ID of the event whose date and time you are modifying.
  String? get instanceEventId;

  /// The new date and time when the event will take place.
  DateTime? get notBefore;
  @override
  ModifyInstanceEventStartTimeRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        instanceId,
        instanceEventId,
        notBefore,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ModifyInstanceEventStartTimeRequest')
          ..add(
            'dryRun',
            dryRun,
          )
          ..add(
            'instanceId',
            instanceId,
          )
          ..add(
            'instanceEventId',
            instanceEventId,
          )
          ..add(
            'notBefore',
            notBefore,
          );
    return helper.toString();
  }
}

class ModifyInstanceEventStartTimeRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<ModifyInstanceEventStartTimeRequest> {
  const ModifyInstanceEventStartTimeRequestEc2QuerySerializer()
      : super('ModifyInstanceEventStartTimeRequest');

  @override
  Iterable<Type> get types => const [
        ModifyInstanceEventStartTimeRequest,
        _$ModifyInstanceEventStartTimeRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyInstanceEventStartTimeRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyInstanceEventStartTimeRequestBuilder();
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
        case 'InstanceId':
          result.instanceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'InstanceEventId':
          result.instanceEventId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'NotBefore':
          result.notBefore = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ModifyInstanceEventStartTimeRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ModifyInstanceEventStartTimeRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyInstanceEventStartTimeRequest(
      :dryRun,
      :instanceId,
      :instanceEventId,
      :notBefore
    ) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (instanceId != null) {
      result$
        ..add(const _i1.XmlElementName('InstanceId'))
        ..add(serializers.serialize(
          instanceId,
          specifiedType: const FullType(String),
        ));
    }
    if (instanceEventId != null) {
      result$
        ..add(const _i1.XmlElementName('InstanceEventId'))
        ..add(serializers.serialize(
          instanceEventId,
          specifiedType: const FullType(String),
        ));
    }
    if (notBefore != null) {
      result$
        ..add(const _i1.XmlElementName('NotBefore'))
        ..add(serializers.serialize(
          notBefore,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    return result$;
  }
}

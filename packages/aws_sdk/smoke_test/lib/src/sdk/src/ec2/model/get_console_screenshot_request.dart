// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.get_console_screenshot_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'get_console_screenshot_request.g.dart';

abstract class GetConsoleScreenshotRequest
    with
        _i1.HttpInput<GetConsoleScreenshotRequest>,
        _i2.AWSEquatable<GetConsoleScreenshotRequest>
    implements
        Built<GetConsoleScreenshotRequest, GetConsoleScreenshotRequestBuilder> {
  factory GetConsoleScreenshotRequest({
    bool? dryRun,
    String? instanceId,
    bool? wakeUp,
  }) {
    dryRun ??= false;
    wakeUp ??= false;
    return _$GetConsoleScreenshotRequest._(
      dryRun: dryRun,
      instanceId: instanceId,
      wakeUp: wakeUp,
    );
  }

  factory GetConsoleScreenshotRequest.build(
          [void Function(GetConsoleScreenshotRequestBuilder) updates]) =
      _$GetConsoleScreenshotRequest;

  const GetConsoleScreenshotRequest._();

  factory GetConsoleScreenshotRequest.fromRequest(
    GetConsoleScreenshotRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<GetConsoleScreenshotRequest>>
      serializers = [GetConsoleScreenshotRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetConsoleScreenshotRequestBuilder b) {
    b
      ..dryRun = false
      ..wakeUp = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the instance.
  String? get instanceId;

  /// When set to `true`, acts as keystroke input and wakes up an instance that's in standby or "sleep" mode.
  bool get wakeUp;
  @override
  GetConsoleScreenshotRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        instanceId,
        wakeUp,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetConsoleScreenshotRequest')
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'instanceId',
        instanceId,
      )
      ..add(
        'wakeUp',
        wakeUp,
      );
    return helper.toString();
  }
}

class GetConsoleScreenshotRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<GetConsoleScreenshotRequest> {
  const GetConsoleScreenshotRequestEc2QuerySerializer()
      : super('GetConsoleScreenshotRequest');

  @override
  Iterable<Type> get types => const [
        GetConsoleScreenshotRequest,
        _$GetConsoleScreenshotRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetConsoleScreenshotRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetConsoleScreenshotRequestBuilder();
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
        case 'WakeUp':
          result.wakeUp = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetConsoleScreenshotRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'GetConsoleScreenshotRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final GetConsoleScreenshotRequest(:dryRun, :instanceId, :wakeUp) = object;
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
    result$
      ..add(const _i1.XmlElementName('WakeUp'))
      ..add(serializers.serialize(
        wakeUp,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}

// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.disable_serial_console_access_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'disable_serial_console_access_request.g.dart';

abstract class DisableSerialConsoleAccessRequest
    with
        _i1.HttpInput<DisableSerialConsoleAccessRequest>,
        _i2.AWSEquatable<DisableSerialConsoleAccessRequest>
    implements
        Built<DisableSerialConsoleAccessRequest,
            DisableSerialConsoleAccessRequestBuilder> {
  factory DisableSerialConsoleAccessRequest({bool? dryRun}) {
    dryRun ??= false;
    return _$DisableSerialConsoleAccessRequest._(dryRun: dryRun);
  }

  factory DisableSerialConsoleAccessRequest.build(
          [void Function(DisableSerialConsoleAccessRequestBuilder) updates]) =
      _$DisableSerialConsoleAccessRequest;

  const DisableSerialConsoleAccessRequest._();

  factory DisableSerialConsoleAccessRequest.fromRequest(
    DisableSerialConsoleAccessRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DisableSerialConsoleAccessRequest>>
      serializers = [DisableSerialConsoleAccessRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DisableSerialConsoleAccessRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DisableSerialConsoleAccessRequest getPayload() => this;
  @override
  List<Object?> get props => [dryRun];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DisableSerialConsoleAccessRequest')
          ..add(
            'dryRun',
            dryRun,
          );
    return helper.toString();
  }
}

class DisableSerialConsoleAccessRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DisableSerialConsoleAccessRequest> {
  const DisableSerialConsoleAccessRequestEc2QuerySerializer()
      : super('DisableSerialConsoleAccessRequest');

  @override
  Iterable<Type> get types => const [
        DisableSerialConsoleAccessRequest,
        _$DisableSerialConsoleAccessRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DisableSerialConsoleAccessRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DisableSerialConsoleAccessRequestBuilder();
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DisableSerialConsoleAccessRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DisableSerialConsoleAccessRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DisableSerialConsoleAccessRequest(:dryRun) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}

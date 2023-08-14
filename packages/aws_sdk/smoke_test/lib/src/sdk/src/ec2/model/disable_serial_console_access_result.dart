// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.disable_serial_console_access_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'disable_serial_console_access_result.g.dart';

abstract class DisableSerialConsoleAccessResult
    with
        _i1.AWSEquatable<DisableSerialConsoleAccessResult>
    implements
        Built<DisableSerialConsoleAccessResult,
            DisableSerialConsoleAccessResultBuilder> {
  factory DisableSerialConsoleAccessResult({bool? serialConsoleAccessEnabled}) {
    serialConsoleAccessEnabled ??= false;
    return _$DisableSerialConsoleAccessResult._(
        serialConsoleAccessEnabled: serialConsoleAccessEnabled);
  }

  factory DisableSerialConsoleAccessResult.build(
          [void Function(DisableSerialConsoleAccessResultBuilder) updates]) =
      _$DisableSerialConsoleAccessResult;

  const DisableSerialConsoleAccessResult._();

  /// Constructs a [DisableSerialConsoleAccessResult] from a [payload] and [response].
  factory DisableSerialConsoleAccessResult.fromResponse(
    DisableSerialConsoleAccessResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<DisableSerialConsoleAccessResult>>
      serializers = [DisableSerialConsoleAccessResultEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DisableSerialConsoleAccessResultBuilder b) {
    b.serialConsoleAccessEnabled = false;
  }

  /// If `true`, access to the EC2 serial console of all instances is enabled for your account. If `false`, access to the EC2 serial console of all instances is disabled for your account.
  bool get serialConsoleAccessEnabled;
  @override
  List<Object?> get props => [serialConsoleAccessEnabled];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DisableSerialConsoleAccessResult')
          ..add(
            'serialConsoleAccessEnabled',
            serialConsoleAccessEnabled,
          );
    return helper.toString();
  }
}

class DisableSerialConsoleAccessResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<DisableSerialConsoleAccessResult> {
  const DisableSerialConsoleAccessResultEc2QuerySerializer()
      : super('DisableSerialConsoleAccessResult');

  @override
  Iterable<Type> get types => const [
        DisableSerialConsoleAccessResult,
        _$DisableSerialConsoleAccessResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DisableSerialConsoleAccessResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DisableSerialConsoleAccessResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'serialConsoleAccessEnabled':
          result.serialConsoleAccessEnabled = (serializers.deserialize(
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
    DisableSerialConsoleAccessResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DisableSerialConsoleAccessResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DisableSerialConsoleAccessResult(:serialConsoleAccessEnabled) =
        object;
    result$
      ..add(const _i2.XmlElementName('SerialConsoleAccessEnabled'))
      ..add(serializers.serialize(
        serialConsoleAccessEnabled,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}

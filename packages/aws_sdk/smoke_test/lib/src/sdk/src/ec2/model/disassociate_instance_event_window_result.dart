// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.disassociate_instance_event_window_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_event_window.dart';

part 'disassociate_instance_event_window_result.g.dart';

abstract class DisassociateInstanceEventWindowResult
    with
        _i1.AWSEquatable<DisassociateInstanceEventWindowResult>
    implements
        Built<DisassociateInstanceEventWindowResult,
            DisassociateInstanceEventWindowResultBuilder> {
  factory DisassociateInstanceEventWindowResult(
      {InstanceEventWindow? instanceEventWindow}) {
    return _$DisassociateInstanceEventWindowResult._(
        instanceEventWindow: instanceEventWindow);
  }

  factory DisassociateInstanceEventWindowResult.build(
      [void Function(DisassociateInstanceEventWindowResultBuilder)
          updates]) = _$DisassociateInstanceEventWindowResult;

  const DisassociateInstanceEventWindowResult._();

  /// Constructs a [DisassociateInstanceEventWindowResult] from a [payload] and [response].
  factory DisassociateInstanceEventWindowResult.fromResponse(
    DisassociateInstanceEventWindowResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<DisassociateInstanceEventWindowResult>>
      serializers = [DisassociateInstanceEventWindowResultEc2QuerySerializer()];

  /// Information about the event window.
  InstanceEventWindow? get instanceEventWindow;
  @override
  List<Object?> get props => [instanceEventWindow];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DisassociateInstanceEventWindowResult')
          ..add(
            'instanceEventWindow',
            instanceEventWindow,
          );
    return helper.toString();
  }
}

class DisassociateInstanceEventWindowResultEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<DisassociateInstanceEventWindowResult> {
  const DisassociateInstanceEventWindowResultEc2QuerySerializer()
      : super('DisassociateInstanceEventWindowResult');

  @override
  Iterable<Type> get types => const [
        DisassociateInstanceEventWindowResult,
        _$DisassociateInstanceEventWindowResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DisassociateInstanceEventWindowResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DisassociateInstanceEventWindowResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'instanceEventWindow':
          result.instanceEventWindow.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(InstanceEventWindow),
          ) as InstanceEventWindow));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DisassociateInstanceEventWindowResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DisassociateInstanceEventWindowResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DisassociateInstanceEventWindowResult(:instanceEventWindow) = object;
    if (instanceEventWindow != null) {
      result$
        ..add(const _i2.XmlElementName('InstanceEventWindow'))
        ..add(serializers.serialize(
          instanceEventWindow,
          specifiedType: const FullType(InstanceEventWindow),
        ));
    }
    return result$;
  }
}

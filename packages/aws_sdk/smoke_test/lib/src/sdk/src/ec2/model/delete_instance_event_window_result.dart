// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_instance_event_window_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_event_window_state_change.dart';

part 'delete_instance_event_window_result.g.dart';

abstract class DeleteInstanceEventWindowResult
    with
        _i1.AWSEquatable<DeleteInstanceEventWindowResult>
    implements
        Built<DeleteInstanceEventWindowResult,
            DeleteInstanceEventWindowResultBuilder> {
  factory DeleteInstanceEventWindowResult(
      {InstanceEventWindowStateChange? instanceEventWindowState}) {
    return _$DeleteInstanceEventWindowResult._(
        instanceEventWindowState: instanceEventWindowState);
  }

  factory DeleteInstanceEventWindowResult.build(
          [void Function(DeleteInstanceEventWindowResultBuilder) updates]) =
      _$DeleteInstanceEventWindowResult;

  const DeleteInstanceEventWindowResult._();

  /// Constructs a [DeleteInstanceEventWindowResult] from a [payload] and [response].
  factory DeleteInstanceEventWindowResult.fromResponse(
    DeleteInstanceEventWindowResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<DeleteInstanceEventWindowResult>>
      serializers = [DeleteInstanceEventWindowResultEc2QuerySerializer()];

  /// The state of the event window.
  InstanceEventWindowStateChange? get instanceEventWindowState;
  @override
  List<Object?> get props => [instanceEventWindowState];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteInstanceEventWindowResult')
          ..add(
            'instanceEventWindowState',
            instanceEventWindowState,
          );
    return helper.toString();
  }
}

class DeleteInstanceEventWindowResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<DeleteInstanceEventWindowResult> {
  const DeleteInstanceEventWindowResultEc2QuerySerializer()
      : super('DeleteInstanceEventWindowResult');

  @override
  Iterable<Type> get types => const [
        DeleteInstanceEventWindowResult,
        _$DeleteInstanceEventWindowResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteInstanceEventWindowResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteInstanceEventWindowResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'instanceEventWindowState':
          result.instanceEventWindowState.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(InstanceEventWindowStateChange),
          ) as InstanceEventWindowStateChange));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeleteInstanceEventWindowResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DeleteInstanceEventWindowResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteInstanceEventWindowResult(:instanceEventWindowState) = object;
    if (instanceEventWindowState != null) {
      result$
        ..add(const _i2.XmlElementName('InstanceEventWindowState'))
        ..add(serializers.serialize(
          instanceEventWindowState,
          specifiedType: const FullType(InstanceEventWindowStateChange),
        ));
    }
    return result$;
  }
}

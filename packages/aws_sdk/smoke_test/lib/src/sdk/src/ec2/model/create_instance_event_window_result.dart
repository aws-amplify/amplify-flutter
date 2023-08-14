// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_instance_event_window_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_event_window.dart';

part 'create_instance_event_window_result.g.dart';

abstract class CreateInstanceEventWindowResult
    with
        _i1.AWSEquatable<CreateInstanceEventWindowResult>
    implements
        Built<CreateInstanceEventWindowResult,
            CreateInstanceEventWindowResultBuilder> {
  factory CreateInstanceEventWindowResult(
      {InstanceEventWindow? instanceEventWindow}) {
    return _$CreateInstanceEventWindowResult._(
        instanceEventWindow: instanceEventWindow);
  }

  factory CreateInstanceEventWindowResult.build(
          [void Function(CreateInstanceEventWindowResultBuilder) updates]) =
      _$CreateInstanceEventWindowResult;

  const CreateInstanceEventWindowResult._();

  /// Constructs a [CreateInstanceEventWindowResult] from a [payload] and [response].
  factory CreateInstanceEventWindowResult.fromResponse(
    CreateInstanceEventWindowResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<CreateInstanceEventWindowResult>>
      serializers = [CreateInstanceEventWindowResultEc2QuerySerializer()];

  /// Information about the event window.
  InstanceEventWindow? get instanceEventWindow;
  @override
  List<Object?> get props => [instanceEventWindow];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateInstanceEventWindowResult')
          ..add(
            'instanceEventWindow',
            instanceEventWindow,
          );
    return helper.toString();
  }
}

class CreateInstanceEventWindowResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<CreateInstanceEventWindowResult> {
  const CreateInstanceEventWindowResultEc2QuerySerializer()
      : super('CreateInstanceEventWindowResult');

  @override
  Iterable<Type> get types => const [
        CreateInstanceEventWindowResult,
        _$CreateInstanceEventWindowResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateInstanceEventWindowResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateInstanceEventWindowResultBuilder();
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
    CreateInstanceEventWindowResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreateInstanceEventWindowResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateInstanceEventWindowResult(:instanceEventWindow) = object;
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

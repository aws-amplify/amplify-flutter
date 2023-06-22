// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.update_termination_protection_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'update_termination_protection_output.g.dart';

abstract class UpdateTerminationProtectionOutput
    with
        _i1.AWSEquatable<UpdateTerminationProtectionOutput>
    implements
        Built<UpdateTerminationProtectionOutput,
            UpdateTerminationProtectionOutputBuilder> {
  factory UpdateTerminationProtectionOutput({String? stackId}) {
    return _$UpdateTerminationProtectionOutput._(stackId: stackId);
  }

  factory UpdateTerminationProtectionOutput.build(
          [void Function(UpdateTerminationProtectionOutputBuilder) updates]) =
      _$UpdateTerminationProtectionOutput;

  const UpdateTerminationProtectionOutput._();

  /// Constructs a [UpdateTerminationProtectionOutput] from a [payload] and [response].
  factory UpdateTerminationProtectionOutput.fromResponse(
    UpdateTerminationProtectionOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<UpdateTerminationProtectionOutput>>
      serializers = [UpdateTerminationProtectionOutputAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateTerminationProtectionOutputBuilder b) {}

  /// The unique ID of the stack.
  String? get stackId;
  @override
  List<Object?> get props => [stackId];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('UpdateTerminationProtectionOutput')
          ..add(
            'stackId',
            stackId,
          );
    return helper.toString();
  }
}

class UpdateTerminationProtectionOutputAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<UpdateTerminationProtectionOutput> {
  const UpdateTerminationProtectionOutputAwsQuerySerializer()
      : super('UpdateTerminationProtectionOutput');

  @override
  Iterable<Type> get types => const [
        UpdateTerminationProtectionOutput,
        _$UpdateTerminationProtectionOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  UpdateTerminationProtectionOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateTerminationProtectionOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'StackId':
          result.stackId = (serializers.deserialize(
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
    UpdateTerminationProtectionOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'UpdateTerminationProtectionOutputResponse',
        _i2.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final UpdateTerminationProtectionOutput(:stackId) = object;
    if (stackId != null) {
      result$
        ..add(const _i2.XmlElementName('StackId'))
        ..add(serializers.serialize(
          stackId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}

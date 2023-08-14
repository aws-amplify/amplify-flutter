// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_replace_root_volume_task_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/replace_root_volume_task.dart';

part 'create_replace_root_volume_task_result.g.dart';

abstract class CreateReplaceRootVolumeTaskResult
    with
        _i1.AWSEquatable<CreateReplaceRootVolumeTaskResult>
    implements
        Built<CreateReplaceRootVolumeTaskResult,
            CreateReplaceRootVolumeTaskResultBuilder> {
  factory CreateReplaceRootVolumeTaskResult(
      {ReplaceRootVolumeTask? replaceRootVolumeTask}) {
    return _$CreateReplaceRootVolumeTaskResult._(
        replaceRootVolumeTask: replaceRootVolumeTask);
  }

  factory CreateReplaceRootVolumeTaskResult.build(
          [void Function(CreateReplaceRootVolumeTaskResultBuilder) updates]) =
      _$CreateReplaceRootVolumeTaskResult;

  const CreateReplaceRootVolumeTaskResult._();

  /// Constructs a [CreateReplaceRootVolumeTaskResult] from a [payload] and [response].
  factory CreateReplaceRootVolumeTaskResult.fromResponse(
    CreateReplaceRootVolumeTaskResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<CreateReplaceRootVolumeTaskResult>>
      serializers = [CreateReplaceRootVolumeTaskResultEc2QuerySerializer()];

  /// Information about the root volume replacement task.
  ReplaceRootVolumeTask? get replaceRootVolumeTask;
  @override
  List<Object?> get props => [replaceRootVolumeTask];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateReplaceRootVolumeTaskResult')
          ..add(
            'replaceRootVolumeTask',
            replaceRootVolumeTask,
          );
    return helper.toString();
  }
}

class CreateReplaceRootVolumeTaskResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<CreateReplaceRootVolumeTaskResult> {
  const CreateReplaceRootVolumeTaskResultEc2QuerySerializer()
      : super('CreateReplaceRootVolumeTaskResult');

  @override
  Iterable<Type> get types => const [
        CreateReplaceRootVolumeTaskResult,
        _$CreateReplaceRootVolumeTaskResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateReplaceRootVolumeTaskResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateReplaceRootVolumeTaskResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'replaceRootVolumeTask':
          result.replaceRootVolumeTask.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(ReplaceRootVolumeTask),
          ) as ReplaceRootVolumeTask));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateReplaceRootVolumeTaskResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreateReplaceRootVolumeTaskResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateReplaceRootVolumeTaskResult(:replaceRootVolumeTask) = object;
    if (replaceRootVolumeTask != null) {
      result$
        ..add(const _i2.XmlElementName('ReplaceRootVolumeTask'))
        ..add(serializers.serialize(
          replaceRootVolumeTask,
          specifiedType: const FullType(ReplaceRootVolumeTask),
        ));
    }
    return result$;
  }
}

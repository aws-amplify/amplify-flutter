// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.untag_resource_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'untag_resource_input.g.dart';

abstract class UntagResourceInput
    with _i1.HttpInput<UntagResourceInput>, _i2.AWSEquatable<UntagResourceInput>
    implements Built<UntagResourceInput, UntagResourceInputBuilder> {
  factory UntagResourceInput({
    required String resourceArn,
    required List<String> tagKeys,
  }) {
    return _$UntagResourceInput._(
      resourceArn: resourceArn,
      tagKeys: _i3.BuiltList(tagKeys),
    );
  }

  factory UntagResourceInput.build(
          [void Function(UntagResourceInputBuilder) updates]) =
      _$UntagResourceInput;

  const UntagResourceInput._();

  factory UntagResourceInput.fromRequest(
    UntagResourceInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    UntagResourceInputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UntagResourceInputBuilder b) {}

  /// The DynamoDB resource that the tags will be removed from. This value is an Amazon Resource Name (ARN).
  String get resourceArn;

  /// A list of tag keys. Existing tags of the resource whose keys are members of this list will be removed from the DynamoDB resource.
  _i3.BuiltList<String> get tagKeys;
  @override
  UntagResourceInput getPayload() => this;
  @override
  List<Object?> get props => [
        resourceArn,
        tagKeys,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UntagResourceInput');
    helper.add(
      'resourceArn',
      resourceArn,
    );
    helper.add(
      'tagKeys',
      tagKeys,
    );
    return helper.toString();
  }
}

class UntagResourceInputAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<UntagResourceInput> {
  const UntagResourceInputAwsJson10Serializer() : super('UntagResourceInput');

  @override
  Iterable<Type> get types => const [
        UntagResourceInput,
        _$UntagResourceInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  UntagResourceInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UntagResourceInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ResourceArn':
          result.resourceArn = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'TagKeys':
          result.tagKeys.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as UntagResourceInput);
    final result = <Object?>[
      'ResourceArn',
      serializers.serialize(
        payload.resourceArn,
        specifiedType: const FullType(String),
      ),
      'TagKeys',
      serializers.serialize(
        payload.tagKeys,
        specifiedType: const FullType(
          _i3.BuiltList,
          [FullType(String)],
        ),
      ),
    ];
    return result;
  }
}

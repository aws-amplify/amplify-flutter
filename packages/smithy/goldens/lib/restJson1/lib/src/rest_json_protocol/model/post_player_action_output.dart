// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library rest_json1_v1.rest_json_protocol.model.post_player_action_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/player_action.dart'
    as _i2;
import 'package:smithy/smithy.dart' as _i3;

part 'post_player_action_output.g.dart';

abstract class PostPlayerActionOutput
    with _i1.AWSEquatable<PostPlayerActionOutput>
    implements Built<PostPlayerActionOutput, PostPlayerActionOutputBuilder> {
  factory PostPlayerActionOutput({required _i2.PlayerAction action}) {
    return _$PostPlayerActionOutput._(action: action);
  }

  factory PostPlayerActionOutput.build(
          [void Function(PostPlayerActionOutputBuilder) updates]) =
      _$PostPlayerActionOutput;

  const PostPlayerActionOutput._();

  /// Constructs a [PostPlayerActionOutput] from a [payload] and [response].
  factory PostPlayerActionOutput.fromResponse(
    PostPlayerActionOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    PostPlayerActionOutputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PostPlayerActionOutputBuilder b) {}
  _i2.PlayerAction get action;
  @override
  List<Object?> get props => [action];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PostPlayerActionOutput');
    helper.add(
      'action',
      action,
    );
    return helper.toString();
  }
}

class PostPlayerActionOutputRestJson1Serializer
    extends _i3.StructuredSmithySerializer<PostPlayerActionOutput> {
  const PostPlayerActionOutputRestJson1Serializer()
      : super('PostPlayerActionOutput');

  @override
  Iterable<Type> get types => const [
        PostPlayerActionOutput,
        _$PostPlayerActionOutput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  PostPlayerActionOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostPlayerActionOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'action':
          result.action = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i2.PlayerAction),
          ) as _i2.PlayerAction);
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
    final payload = (object as PostPlayerActionOutput);
    final result = <Object?>[
      'action',
      serializers.serialize(
        payload.action,
        specifiedType: const FullType(_i2.PlayerAction),
      ),
    ];
    return result;
  }
}

// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library rest_json1_v2.rest_json_protocol.model.player_action; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

sealed class PlayerAction extends _i1.SmithyUnion<PlayerAction> {
  const PlayerAction._();

  const factory PlayerAction.quit() = PlayerActionQuit;

  const factory PlayerAction.sdkUnknown(
    String name,
    Object value,
  ) = PlayerActionSdkUnknown;

  static const List<_i1.SmithySerializer<PlayerAction>> serializers = [
    PlayerActionRestJson1Serializer()
  ];

  /// Quit the game.
  _i1.Unit? get quit => null;
  @override
  Object get value => (quit)!;
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(r'PlayerAction');
    if (quit != null) {
      helper.add(
        r'quit',
        quit,
      );
    }
    return helper.toString();
  }
}

final class PlayerActionQuit extends PlayerAction {
  const PlayerActionQuit() : super._();

  @override
  String get name => 'quit';
  @override
  _i1.Unit get quit => const _i1.Unit();
}

final class PlayerActionSdkUnknown extends PlayerAction {
  const PlayerActionSdkUnknown(
    this.name,
    this.value,
  ) : super._();

  @override
  final String name;

  @override
  final Object value;
}

class PlayerActionRestJson1Serializer
    extends _i1.StructuredSmithySerializer<PlayerAction> {
  const PlayerActionRestJson1Serializer() : super('PlayerAction');

  @override
  Iterable<Type> get types => const [
        PlayerAction,
        PlayerActionQuit,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  PlayerAction deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final [key as String, value as Object] = serialized.toList();
    switch (key) {
      case 'quit':
        return const PlayerActionQuit();
    }
    return PlayerAction.sdkUnknown(
      key,
      value,
    );
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    PlayerAction object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return [
      object.name,
      switch (object) {
        PlayerActionQuit(:final value) => serializers.serialize(
            value,
            specifiedType: const FullType(_i1.Unit),
          ),
        PlayerActionSdkUnknown(:final value) => value,
      },
    ];
  }
}

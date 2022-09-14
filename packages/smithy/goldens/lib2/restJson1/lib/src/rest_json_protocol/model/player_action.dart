// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library rest_json1_v2.rest_json_protocol.model.player_action; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

abstract class PlayerAction extends _i1.SmithyUnion<PlayerAction> {
  const PlayerAction._();

  const factory PlayerAction.quit(_i1.Unit quit) = PlayerActionQuit;

  const factory PlayerAction.sdkUnknown(String name, Object value) =
      PlayerActionSdkUnknown;

  static const List<_i1.SmithySerializer<PlayerAction>> serializers = [
    PlayerActionRestJson1Serializer()
  ];

  /// Quit the game.
  _i1.Unit? get quit => null;
  @override
  Object get value => (quit)!;
  @override
  T? when<T>(
      {T Function(_i1.Unit)? quit, T Function(String, Object)? sdkUnknown}) {
    if (this is PlayerActionQuit) {
      return quit?.call((this as PlayerActionQuit).quit);
    }
    return sdkUnknown?.call(name, value);
  }

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(r'PlayerAction');
    if (quit != null) {
      helper.add(r'quit', quit);
    }
    return helper.toString();
  }
}

class PlayerActionQuit extends PlayerAction {
  const PlayerActionQuit(this.quit) : super._();

  @override
  final _i1.Unit quit;

  @override
  String get name => 'quit';
}

class PlayerActionSdkUnknown extends PlayerAction {
  const PlayerActionSdkUnknown(this.name, this.value) : super._();

  @override
  final String name;

  @override
  final Object value;
}

class PlayerActionRestJson1Serializer
    extends _i1.StructuredSmithySerializer<PlayerAction> {
  const PlayerActionRestJson1Serializer() : super('PlayerAction');

  @override
  Iterable<Type> get types => const [PlayerAction];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  PlayerAction deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final iterator = serialized.iterator;
    iterator.moveNext();
    final key = iterator.current as String;
    iterator.moveNext();
    final value = iterator.current as Object;
    switch (key) {
      case 'quit':
        return PlayerAction.quit((serializers.deserialize(value,
            specifiedType: const FullType(_i1.Unit)) as _i1.Unit));
    }
    return PlayerAction.sdkUnknown(key, value);
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    (object as PlayerAction);
    return [
      object.name,
      object.when<Object?>(
          quit: (_i1.Unit quit) => serializers.serialize(quit,
              specifiedType: const FullType(_i1.Unit)),
          sdkUnknown: (String _, Object sdkUnknown) => sdkUnknown)!
    ];
  }
}

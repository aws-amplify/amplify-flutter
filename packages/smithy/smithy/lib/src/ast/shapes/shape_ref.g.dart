// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shape_ref.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ShapeRef> _$shapeRefSerializer = new _$ShapeRefSerializer();

class _$ShapeRefSerializer implements StructuredSerializer<ShapeRef> {
  @override
  final Iterable<Type> types = const [ShapeRef, _$ShapeRef];
  @override
  final String wireName = 'ShapeRef';

  @override
  Iterable<Object?> serialize(Serializers serializers, ShapeRef object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'traits',
      serializers.serialize(object.traits,
          specifiedType: const FullType(TraitMap)),
      'target',
      serializers.serialize(object.target,
          specifiedType: const FullType(ShapeId)),
    ];

    return result;
  }

  @override
  ShapeRef deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ShapeRefBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'traits':
          result.traits = serializers.deserialize(value,
              specifiedType: const FullType(TraitMap))! as TraitMap;
          break;
        case 'target':
          result.target = serializers.deserialize(value,
              specifiedType: const FullType(ShapeId))! as ShapeId;
          break;
      }
    }

    return result.build();
  }
}

class _$ShapeRef extends ShapeRef {
  @override
  final TraitMap traits;
  @override
  final ShapeId target;

  factory _$ShapeRef([void Function(ShapeRefBuilder)? updates]) =>
      (new ShapeRefBuilder()..update(updates))._build();

  _$ShapeRef._({required this.traits, required this.target}) : super._() {
    BuiltValueNullFieldError.checkNotNull(traits, r'ShapeRef', 'traits');
    BuiltValueNullFieldError.checkNotNull(target, r'ShapeRef', 'target');
  }

  @override
  ShapeRef rebuild(void Function(ShapeRefBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ShapeRefBuilder toBuilder() => new ShapeRefBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ShapeRef &&
        traits == other.traits &&
        target == other.target;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, traits.hashCode);
    _$hash = $jc(_$hash, target.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ShapeRef')
          ..add('traits', traits)
          ..add('target', target))
        .toString();
  }
}

class ShapeRefBuilder implements Builder<ShapeRef, ShapeRefBuilder> {
  _$ShapeRef? _$v;

  TraitMap? _traits;
  TraitMap? get traits => _$this._traits;
  set traits(TraitMap? traits) => _$this._traits = traits;

  ShapeId? _target;
  ShapeId? get target => _$this._target;
  set target(ShapeId? target) => _$this._target = target;

  ShapeRefBuilder() {
    ShapeRef._init(this);
  }

  ShapeRefBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _traits = $v.traits;
      _target = $v.target;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ShapeRef other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ShapeRef;
  }

  @override
  void update(void Function(ShapeRefBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ShapeRef build() => _build();

  _$ShapeRef _build() {
    final _$result = _$v ??
        new _$ShapeRef._(
            traits: BuiltValueNullFieldError.checkNotNull(
                traits, r'ShapeRef', 'traits'),
            target: BuiltValueNullFieldError.checkNotNull(
                target, r'ShapeRef', 'target'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

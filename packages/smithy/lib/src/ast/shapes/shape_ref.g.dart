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
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'traits':
          result.traits = serializers.deserialize(value,
              specifiedType: const FullType(TraitMap)) as TraitMap;
          break;
        case 'target':
          result.target = serializers.deserialize(value,
              specifiedType: const FullType(ShapeId)) as ShapeId;
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
      (new ShapeRefBuilder()..update(updates)).build();

  _$ShapeRef._({required this.traits, required this.target}) : super._() {
    BuiltValueNullFieldError.checkNotNull(traits, 'ShapeRef', 'traits');
    BuiltValueNullFieldError.checkNotNull(target, 'ShapeRef', 'target');
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
    return $jf($jc($jc(0, traits.hashCode), target.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ShapeRef')
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
  _$ShapeRef build() {
    final _$result = _$v ??
        new _$ShapeRef._(
            traits: BuiltValueNullFieldError.checkNotNull(
                traits, 'ShapeRef', 'traits'),
            target: BuiltValueNullFieldError.checkNotNull(
                target, 'ShapeRef', 'target'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

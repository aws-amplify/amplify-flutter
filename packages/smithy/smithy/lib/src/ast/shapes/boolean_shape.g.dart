// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'boolean_shape.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BooleanShape> _$booleanShapeSerializer =
    new _$BooleanShapeSerializer();

class _$BooleanShapeSerializer implements StructuredSerializer<BooleanShape> {
  @override
  final Iterable<Type> types = const [BooleanShape, _$BooleanShape];
  @override
  final String wireName = 'BooleanShape';

  @override
  Iterable<Object?> serialize(Serializers serializers, BooleanShape object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'traits',
      serializers.serialize(object.traits,
          specifiedType: const FullType(TraitMap)),
    ];

    return result;
  }

  @override
  BooleanShape deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BooleanShapeBuilder();

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
      }
    }

    return result.build();
  }
}

class _$BooleanShape extends BooleanShape {
  @override
  final ShapeId shapeId;
  @override
  final TraitMap traits;

  factory _$BooleanShape([void Function(BooleanShapeBuilder)? updates]) =>
      (new BooleanShapeBuilder()..update(updates))._build();

  _$BooleanShape._({required this.shapeId, required this.traits}) : super._() {
    BuiltValueNullFieldError.checkNotNull(shapeId, r'BooleanShape', 'shapeId');
    BuiltValueNullFieldError.checkNotNull(traits, r'BooleanShape', 'traits');
  }

  @override
  BooleanShape rebuild(void Function(BooleanShapeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BooleanShapeBuilder toBuilder() => new BooleanShapeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BooleanShape &&
        shapeId == other.shapeId &&
        traits == other.traits;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, shapeId.hashCode);
    _$hash = $jc(_$hash, traits.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BooleanShape')
          ..add('shapeId', shapeId)
          ..add('traits', traits))
        .toString();
  }
}

class BooleanShapeBuilder
    implements Builder<BooleanShape, BooleanShapeBuilder>, SimpleShapeBuilder {
  _$BooleanShape? _$v;

  ShapeId? _shapeId;
  ShapeId? get shapeId => _$this._shapeId;
  set shapeId(covariant ShapeId? shapeId) => _$this._shapeId = shapeId;

  TraitMap? _traits;
  TraitMap? get traits => _$this._traits;
  set traits(covariant TraitMap? traits) => _$this._traits = traits;

  BooleanShapeBuilder() {
    BooleanShape._init(this);
  }

  BooleanShapeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _shapeId = $v.shapeId;
      _traits = $v.traits;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant BooleanShape other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BooleanShape;
  }

  @override
  void update(void Function(BooleanShapeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BooleanShape build() => _build();

  _$BooleanShape _build() {
    final _$result = _$v ??
        new _$BooleanShape._(
            shapeId: BuiltValueNullFieldError.checkNotNull(
                shapeId, r'BooleanShape', 'shapeId'),
            traits: BuiltValueNullFieldError.checkNotNull(
                traits, r'BooleanShape', 'traits'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

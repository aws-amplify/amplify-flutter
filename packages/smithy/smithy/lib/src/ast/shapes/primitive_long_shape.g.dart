// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'primitive_long_shape.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PrimitiveLongShape> _$primitiveLongShapeSerializer =
    new _$PrimitiveLongShapeSerializer();

class _$PrimitiveLongShapeSerializer
    implements StructuredSerializer<PrimitiveLongShape> {
  @override
  final Iterable<Type> types = const [PrimitiveLongShape, _$PrimitiveLongShape];
  @override
  final String wireName = 'PrimitiveLongShape';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, PrimitiveLongShape object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'traits',
      serializers.serialize(object.traits,
          specifiedType: const FullType(TraitMap)),
    ];

    return result;
  }

  @override
  PrimitiveLongShape deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PrimitiveLongShapeBuilder();

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

class _$PrimitiveLongShape extends PrimitiveLongShape {
  @override
  final ShapeId shapeId;
  @override
  final TraitMap traits;

  factory _$PrimitiveLongShape(
          [void Function(PrimitiveLongShapeBuilder)? updates]) =>
      (new PrimitiveLongShapeBuilder()..update(updates))._build();

  _$PrimitiveLongShape._({required this.shapeId, required this.traits})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        shapeId, r'PrimitiveLongShape', 'shapeId');
    BuiltValueNullFieldError.checkNotNull(
        traits, r'PrimitiveLongShape', 'traits');
  }

  @override
  PrimitiveLongShape rebuild(
          void Function(PrimitiveLongShapeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PrimitiveLongShapeBuilder toBuilder() =>
      new PrimitiveLongShapeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrimitiveLongShape &&
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
    return (newBuiltValueToStringHelper(r'PrimitiveLongShape')
          ..add('shapeId', shapeId)
          ..add('traits', traits))
        .toString();
  }
}

class PrimitiveLongShapeBuilder
    implements
        Builder<PrimitiveLongShape, PrimitiveLongShapeBuilder>,
        SimpleShapeBuilder {
  _$PrimitiveLongShape? _$v;

  ShapeId? _shapeId;
  ShapeId? get shapeId => _$this._shapeId;
  set shapeId(covariant ShapeId? shapeId) => _$this._shapeId = shapeId;

  TraitMap? _traits;
  TraitMap? get traits => _$this._traits;
  set traits(covariant TraitMap? traits) => _$this._traits = traits;

  PrimitiveLongShapeBuilder() {
    PrimitiveLongShape._init(this);
  }

  PrimitiveLongShapeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _shapeId = $v.shapeId;
      _traits = $v.traits;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant PrimitiveLongShape other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PrimitiveLongShape;
  }

  @override
  void update(void Function(PrimitiveLongShapeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PrimitiveLongShape build() => _build();

  _$PrimitiveLongShape _build() {
    final _$result = _$v ??
        new _$PrimitiveLongShape._(
            shapeId: BuiltValueNullFieldError.checkNotNull(
                shapeId, r'PrimitiveLongShape', 'shapeId'),
            traits: BuiltValueNullFieldError.checkNotNull(
                traits, r'PrimitiveLongShape', 'traits'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'primitive_integer_shape.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PrimitiveIntegerShape> _$primitiveIntegerShapeSerializer =
    new _$PrimitiveIntegerShapeSerializer();

class _$PrimitiveIntegerShapeSerializer
    implements StructuredSerializer<PrimitiveIntegerShape> {
  @override
  final Iterable<Type> types = const [
    PrimitiveIntegerShape,
    _$PrimitiveIntegerShape
  ];
  @override
  final String wireName = 'PrimitiveIntegerShape';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, PrimitiveIntegerShape object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'traits',
      serializers.serialize(object.traits,
          specifiedType: const FullType(TraitMap)),
    ];

    return result;
  }

  @override
  PrimitiveIntegerShape deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PrimitiveIntegerShapeBuilder();

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

class _$PrimitiveIntegerShape extends PrimitiveIntegerShape {
  @override
  final ShapeId shapeId;
  @override
  final TraitMap traits;

  factory _$PrimitiveIntegerShape(
          [void Function(PrimitiveIntegerShapeBuilder)? updates]) =>
      (new PrimitiveIntegerShapeBuilder()..update(updates))._build();

  _$PrimitiveIntegerShape._({required this.shapeId, required this.traits})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        shapeId, r'PrimitiveIntegerShape', 'shapeId');
    BuiltValueNullFieldError.checkNotNull(
        traits, r'PrimitiveIntegerShape', 'traits');
  }

  @override
  PrimitiveIntegerShape rebuild(
          void Function(PrimitiveIntegerShapeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PrimitiveIntegerShapeBuilder toBuilder() =>
      new PrimitiveIntegerShapeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrimitiveIntegerShape &&
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
    return (newBuiltValueToStringHelper(r'PrimitiveIntegerShape')
          ..add('shapeId', shapeId)
          ..add('traits', traits))
        .toString();
  }
}

class PrimitiveIntegerShapeBuilder
    implements
        Builder<PrimitiveIntegerShape, PrimitiveIntegerShapeBuilder>,
        SimpleShapeBuilder {
  _$PrimitiveIntegerShape? _$v;

  ShapeId? _shapeId;
  ShapeId? get shapeId => _$this._shapeId;
  set shapeId(covariant ShapeId? shapeId) => _$this._shapeId = shapeId;

  TraitMap? _traits;
  TraitMap? get traits => _$this._traits;
  set traits(covariant TraitMap? traits) => _$this._traits = traits;

  PrimitiveIntegerShapeBuilder() {
    PrimitiveIntegerShape._init(this);
  }

  PrimitiveIntegerShapeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _shapeId = $v.shapeId;
      _traits = $v.traits;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant PrimitiveIntegerShape other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PrimitiveIntegerShape;
  }

  @override
  void update(void Function(PrimitiveIntegerShapeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PrimitiveIntegerShape build() => _build();

  _$PrimitiveIntegerShape _build() {
    final _$result = _$v ??
        new _$PrimitiveIntegerShape._(
            shapeId: BuiltValueNullFieldError.checkNotNull(
                shapeId, r'PrimitiveIntegerShape', 'shapeId'),
            traits: BuiltValueNullFieldError.checkNotNull(
                traits, r'PrimitiveIntegerShape', 'traits'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

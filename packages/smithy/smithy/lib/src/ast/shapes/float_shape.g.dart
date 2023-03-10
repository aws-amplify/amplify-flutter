// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'float_shape.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FloatShape> _$floatShapeSerializer = new _$FloatShapeSerializer();

class _$FloatShapeSerializer implements StructuredSerializer<FloatShape> {
  @override
  final Iterable<Type> types = const [FloatShape, _$FloatShape];
  @override
  final String wireName = 'FloatShape';

  @override
  Iterable<Object?> serialize(Serializers serializers, FloatShape object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'traits',
      serializers.serialize(object.traits,
          specifiedType: const FullType(TraitMap)),
    ];

    return result;
  }

  @override
  FloatShape deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FloatShapeBuilder();

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

class _$FloatShape extends FloatShape {
  @override
  final ShapeId shapeId;
  @override
  final TraitMap traits;

  factory _$FloatShape([void Function(FloatShapeBuilder)? updates]) =>
      (new FloatShapeBuilder()..update(updates))._build();

  _$FloatShape._({required this.shapeId, required this.traits}) : super._() {
    BuiltValueNullFieldError.checkNotNull(shapeId, r'FloatShape', 'shapeId');
    BuiltValueNullFieldError.checkNotNull(traits, r'FloatShape', 'traits');
  }

  @override
  FloatShape rebuild(void Function(FloatShapeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FloatShapeBuilder toBuilder() => new FloatShapeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FloatShape &&
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
    return (newBuiltValueToStringHelper(r'FloatShape')
          ..add('shapeId', shapeId)
          ..add('traits', traits))
        .toString();
  }
}

class FloatShapeBuilder
    implements Builder<FloatShape, FloatShapeBuilder>, SimpleShapeBuilder {
  _$FloatShape? _$v;

  ShapeId? _shapeId;
  ShapeId? get shapeId => _$this._shapeId;
  set shapeId(covariant ShapeId? shapeId) => _$this._shapeId = shapeId;

  TraitMap? _traits;
  TraitMap? get traits => _$this._traits;
  set traits(covariant TraitMap? traits) => _$this._traits = traits;

  FloatShapeBuilder() {
    FloatShape._init(this);
  }

  FloatShapeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _shapeId = $v.shapeId;
      _traits = $v.traits;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant FloatShape other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FloatShape;
  }

  @override
  void update(void Function(FloatShapeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FloatShape build() => _build();

  _$FloatShape _build() {
    final _$result = _$v ??
        new _$FloatShape._(
            shapeId: BuiltValueNullFieldError.checkNotNull(
                shapeId, r'FloatShape', 'shapeId'),
            traits: BuiltValueNullFieldError.checkNotNull(
                traits, r'FloatShape', 'traits'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'primitive_double_shape.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PrimitiveDoubleShape> _$primitiveDoubleShapeSerializer =
    new _$PrimitiveDoubleShapeSerializer();

class _$PrimitiveDoubleShapeSerializer
    implements StructuredSerializer<PrimitiveDoubleShape> {
  @override
  final Iterable<Type> types = const [
    PrimitiveDoubleShape,
    _$PrimitiveDoubleShape
  ];
  @override
  final String wireName = 'PrimitiveDoubleShape';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, PrimitiveDoubleShape object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'traits',
      serializers.serialize(object.traits,
          specifiedType: const FullType(TraitMap)),
    ];

    return result;
  }

  @override
  PrimitiveDoubleShape deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PrimitiveDoubleShapeBuilder();

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

class _$PrimitiveDoubleShape extends PrimitiveDoubleShape {
  @override
  final ShapeId shapeId;
  @override
  final TraitMap traits;

  factory _$PrimitiveDoubleShape(
          [void Function(PrimitiveDoubleShapeBuilder)? updates]) =>
      (new PrimitiveDoubleShapeBuilder()..update(updates)).build();

  _$PrimitiveDoubleShape._({required this.shapeId, required this.traits})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        shapeId, 'PrimitiveDoubleShape', 'shapeId');
    BuiltValueNullFieldError.checkNotNull(
        traits, 'PrimitiveDoubleShape', 'traits');
  }

  @override
  PrimitiveDoubleShape rebuild(
          void Function(PrimitiveDoubleShapeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PrimitiveDoubleShapeBuilder toBuilder() =>
      new PrimitiveDoubleShapeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrimitiveDoubleShape &&
        shapeId == other.shapeId &&
        traits == other.traits;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, shapeId.hashCode), traits.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PrimitiveDoubleShape')
          ..add('shapeId', shapeId)
          ..add('traits', traits))
        .toString();
  }
}

class PrimitiveDoubleShapeBuilder
    implements
        Builder<PrimitiveDoubleShape, PrimitiveDoubleShapeBuilder>,
        SimpleShapeBuilder {
  _$PrimitiveDoubleShape? _$v;

  ShapeId? _shapeId;
  ShapeId? get shapeId => _$this._shapeId;
  set shapeId(covariant ShapeId? shapeId) => _$this._shapeId = shapeId;

  TraitMap? _traits;
  TraitMap? get traits => _$this._traits;
  set traits(covariant TraitMap? traits) => _$this._traits = traits;

  PrimitiveDoubleShapeBuilder() {
    PrimitiveDoubleShape._init(this);
  }

  PrimitiveDoubleShapeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _shapeId = $v.shapeId;
      _traits = $v.traits;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant PrimitiveDoubleShape other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PrimitiveDoubleShape;
  }

  @override
  void update(void Function(PrimitiveDoubleShapeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PrimitiveDoubleShape build() {
    final _$result = _$v ??
        new _$PrimitiveDoubleShape._(
            shapeId: BuiltValueNullFieldError.checkNotNull(
                shapeId, 'PrimitiveDoubleShape', 'shapeId'),
            traits: BuiltValueNullFieldError.checkNotNull(
                traits, 'PrimitiveDoubleShape', 'traits'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

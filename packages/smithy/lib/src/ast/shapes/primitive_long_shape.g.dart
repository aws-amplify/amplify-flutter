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
      (new PrimitiveLongShapeBuilder()..update(updates)).build();

  _$PrimitiveLongShape._({required this.shapeId, required this.traits})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        shapeId, 'PrimitiveLongShape', 'shapeId');
    BuiltValueNullFieldError.checkNotNull(
        traits, 'PrimitiveLongShape', 'traits');
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
    return $jf($jc($jc(0, shapeId.hashCode), traits.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PrimitiveLongShape')
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
  _$PrimitiveLongShape build() {
    final _$result = _$v ??
        new _$PrimitiveLongShape._(
            shapeId: BuiltValueNullFieldError.checkNotNull(
                shapeId, 'PrimitiveLongShape', 'shapeId'),
            traits: BuiltValueNullFieldError.checkNotNull(
                traits, 'PrimitiveLongShape', 'traits'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

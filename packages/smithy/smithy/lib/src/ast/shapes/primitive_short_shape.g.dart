// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'primitive_short_shape.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PrimitiveShortShape> _$primitiveShortShapeSerializer =
    new _$PrimitiveShortShapeSerializer();

class _$PrimitiveShortShapeSerializer
    implements StructuredSerializer<PrimitiveShortShape> {
  @override
  final Iterable<Type> types = const [
    PrimitiveShortShape,
    _$PrimitiveShortShape
  ];
  @override
  final String wireName = 'PrimitiveShortShape';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, PrimitiveShortShape object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'traits',
      serializers.serialize(object.traits,
          specifiedType: const FullType(TraitMap)),
    ];

    return result;
  }

  @override
  PrimitiveShortShape deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PrimitiveShortShapeBuilder();

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

class _$PrimitiveShortShape extends PrimitiveShortShape {
  @override
  final ShapeId shapeId;
  @override
  final TraitMap traits;

  factory _$PrimitiveShortShape(
          [void Function(PrimitiveShortShapeBuilder)? updates]) =>
      (new PrimitiveShortShapeBuilder()..update(updates))._build();

  _$PrimitiveShortShape._({required this.shapeId, required this.traits})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        shapeId, r'PrimitiveShortShape', 'shapeId');
    BuiltValueNullFieldError.checkNotNull(
        traits, r'PrimitiveShortShape', 'traits');
  }

  @override
  PrimitiveShortShape rebuild(
          void Function(PrimitiveShortShapeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PrimitiveShortShapeBuilder toBuilder() =>
      new PrimitiveShortShapeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrimitiveShortShape &&
        shapeId == other.shapeId &&
        traits == other.traits;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, shapeId.hashCode), traits.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PrimitiveShortShape')
          ..add('shapeId', shapeId)
          ..add('traits', traits))
        .toString();
  }
}

class PrimitiveShortShapeBuilder
    implements
        Builder<PrimitiveShortShape, PrimitiveShortShapeBuilder>,
        SimpleShapeBuilder {
  _$PrimitiveShortShape? _$v;

  ShapeId? _shapeId;
  ShapeId? get shapeId => _$this._shapeId;
  set shapeId(covariant ShapeId? shapeId) => _$this._shapeId = shapeId;

  TraitMap? _traits;
  TraitMap? get traits => _$this._traits;
  set traits(covariant TraitMap? traits) => _$this._traits = traits;

  PrimitiveShortShapeBuilder() {
    PrimitiveShortShape._init(this);
  }

  PrimitiveShortShapeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _shapeId = $v.shapeId;
      _traits = $v.traits;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant PrimitiveShortShape other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PrimitiveShortShape;
  }

  @override
  void update(void Function(PrimitiveShortShapeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PrimitiveShortShape build() => _build();

  _$PrimitiveShortShape _build() {
    final _$result = _$v ??
        new _$PrimitiveShortShape._(
            shapeId: BuiltValueNullFieldError.checkNotNull(
                shapeId, r'PrimitiveShortShape', 'shapeId'),
            traits: BuiltValueNullFieldError.checkNotNull(
                traits, r'PrimitiveShortShape', 'traits'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

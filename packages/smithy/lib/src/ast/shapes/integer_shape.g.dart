// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'integer_shape.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<IntegerShape> _$integerShapeSerializer =
    new _$IntegerShapeSerializer();

class _$IntegerShapeSerializer implements StructuredSerializer<IntegerShape> {
  @override
  final Iterable<Type> types = const [IntegerShape, _$IntegerShape];
  @override
  final String wireName = 'IntegerShape';

  @override
  Iterable<Object?> serialize(Serializers serializers, IntegerShape object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'traits',
      serializers.serialize(object.traits,
          specifiedType: const FullType(TraitMap)),
    ];

    return result;
  }

  @override
  IntegerShape deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new IntegerShapeBuilder();

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

class _$IntegerShape extends IntegerShape {
  @override
  final ShapeId shapeId;
  @override
  final TraitMap traits;

  factory _$IntegerShape([void Function(IntegerShapeBuilder)? updates]) =>
      (new IntegerShapeBuilder()..update(updates)).build();

  _$IntegerShape._({required this.shapeId, required this.traits}) : super._() {
    BuiltValueNullFieldError.checkNotNull(shapeId, 'IntegerShape', 'shapeId');
    BuiltValueNullFieldError.checkNotNull(traits, 'IntegerShape', 'traits');
  }

  @override
  IntegerShape rebuild(void Function(IntegerShapeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IntegerShapeBuilder toBuilder() => new IntegerShapeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IntegerShape &&
        shapeId == other.shapeId &&
        traits == other.traits;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, shapeId.hashCode), traits.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('IntegerShape')
          ..add('shapeId', shapeId)
          ..add('traits', traits))
        .toString();
  }
}

class IntegerShapeBuilder
    implements Builder<IntegerShape, IntegerShapeBuilder>, SimpleShapeBuilder {
  _$IntegerShape? _$v;

  ShapeId? _shapeId;
  ShapeId? get shapeId => _$this._shapeId;
  set shapeId(covariant ShapeId? shapeId) => _$this._shapeId = shapeId;

  TraitMap? _traits;
  TraitMap? get traits => _$this._traits;
  set traits(covariant TraitMap? traits) => _$this._traits = traits;

  IntegerShapeBuilder() {
    IntegerShape._init(this);
  }

  IntegerShapeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _shapeId = $v.shapeId;
      _traits = $v.traits;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant IntegerShape other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IntegerShape;
  }

  @override
  void update(void Function(IntegerShapeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$IntegerShape build() {
    final _$result = _$v ??
        new _$IntegerShape._(
            shapeId: BuiltValueNullFieldError.checkNotNull(
                shapeId, 'IntegerShape', 'shapeId'),
            traits: BuiltValueNullFieldError.checkNotNull(
                traits, 'IntegerShape', 'traits'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

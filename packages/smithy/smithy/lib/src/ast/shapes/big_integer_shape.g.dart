// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'big_integer_shape.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BigIntegerShape> _$bigIntegerShapeSerializer =
    new _$BigIntegerShapeSerializer();

class _$BigIntegerShapeSerializer
    implements StructuredSerializer<BigIntegerShape> {
  @override
  final Iterable<Type> types = const [BigIntegerShape, _$BigIntegerShape];
  @override
  final String wireName = 'BigIntegerShape';

  @override
  Iterable<Object?> serialize(Serializers serializers, BigIntegerShape object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'traits',
      serializers.serialize(object.traits,
          specifiedType: const FullType(TraitMap)),
    ];

    return result;
  }

  @override
  BigIntegerShape deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BigIntegerShapeBuilder();

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

class _$BigIntegerShape extends BigIntegerShape {
  @override
  final ShapeId shapeId;
  @override
  final TraitMap traits;

  factory _$BigIntegerShape([void Function(BigIntegerShapeBuilder)? updates]) =>
      (new BigIntegerShapeBuilder()..update(updates))._build();

  _$BigIntegerShape._({required this.shapeId, required this.traits})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        shapeId, r'BigIntegerShape', 'shapeId');
    BuiltValueNullFieldError.checkNotNull(traits, r'BigIntegerShape', 'traits');
  }

  @override
  BigIntegerShape rebuild(void Function(BigIntegerShapeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BigIntegerShapeBuilder toBuilder() =>
      new BigIntegerShapeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BigIntegerShape &&
        shapeId == other.shapeId &&
        traits == other.traits;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, shapeId.hashCode), traits.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BigIntegerShape')
          ..add('shapeId', shapeId)
          ..add('traits', traits))
        .toString();
  }
}

class BigIntegerShapeBuilder
    implements
        Builder<BigIntegerShape, BigIntegerShapeBuilder>,
        SimpleShapeBuilder {
  _$BigIntegerShape? _$v;

  ShapeId? _shapeId;
  ShapeId? get shapeId => _$this._shapeId;
  set shapeId(covariant ShapeId? shapeId) => _$this._shapeId = shapeId;

  TraitMap? _traits;
  TraitMap? get traits => _$this._traits;
  set traits(covariant TraitMap? traits) => _$this._traits = traits;

  BigIntegerShapeBuilder() {
    BigIntegerShape._init(this);
  }

  BigIntegerShapeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _shapeId = $v.shapeId;
      _traits = $v.traits;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant BigIntegerShape other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BigIntegerShape;
  }

  @override
  void update(void Function(BigIntegerShapeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BigIntegerShape build() => _build();

  _$BigIntegerShape _build() {
    final _$result = _$v ??
        new _$BigIntegerShape._(
            shapeId: BuiltValueNullFieldError.checkNotNull(
                shapeId, r'BigIntegerShape', 'shapeId'),
            traits: BuiltValueNullFieldError.checkNotNull(
                traits, r'BigIntegerShape', 'traits'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

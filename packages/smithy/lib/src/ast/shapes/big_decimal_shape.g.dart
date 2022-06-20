// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'big_decimal_shape.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BigDecimalShape> _$bigDecimalShapeSerializer =
    new _$BigDecimalShapeSerializer();

class _$BigDecimalShapeSerializer
    implements StructuredSerializer<BigDecimalShape> {
  @override
  final Iterable<Type> types = const [BigDecimalShape, _$BigDecimalShape];
  @override
  final String wireName = 'BigDecimalShape';

  @override
  Iterable<Object?> serialize(Serializers serializers, BigDecimalShape object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'traits',
      serializers.serialize(object.traits,
          specifiedType: const FullType(TraitMap)),
    ];

    return result;
  }

  @override
  BigDecimalShape deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BigDecimalShapeBuilder();

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

class _$BigDecimalShape extends BigDecimalShape {
  @override
  final ShapeId shapeId;
  @override
  final TraitMap traits;

  factory _$BigDecimalShape([void Function(BigDecimalShapeBuilder)? updates]) =>
      (new BigDecimalShapeBuilder()..update(updates))._build();

  _$BigDecimalShape._({required this.shapeId, required this.traits})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        shapeId, r'BigDecimalShape', 'shapeId');
    BuiltValueNullFieldError.checkNotNull(traits, r'BigDecimalShape', 'traits');
  }

  @override
  BigDecimalShape rebuild(void Function(BigDecimalShapeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BigDecimalShapeBuilder toBuilder() =>
      new BigDecimalShapeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BigDecimalShape &&
        shapeId == other.shapeId &&
        traits == other.traits;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, shapeId.hashCode), traits.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BigDecimalShape')
          ..add('shapeId', shapeId)
          ..add('traits', traits))
        .toString();
  }
}

class BigDecimalShapeBuilder
    implements
        Builder<BigDecimalShape, BigDecimalShapeBuilder>,
        SimpleShapeBuilder {
  _$BigDecimalShape? _$v;

  ShapeId? _shapeId;
  ShapeId? get shapeId => _$this._shapeId;
  set shapeId(covariant ShapeId? shapeId) => _$this._shapeId = shapeId;

  TraitMap? _traits;
  TraitMap? get traits => _$this._traits;
  set traits(covariant TraitMap? traits) => _$this._traits = traits;

  BigDecimalShapeBuilder() {
    BigDecimalShape._init(this);
  }

  BigDecimalShapeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _shapeId = $v.shapeId;
      _traits = $v.traits;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant BigDecimalShape other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BigDecimalShape;
  }

  @override
  void update(void Function(BigDecimalShapeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BigDecimalShape build() => _build();

  _$BigDecimalShape _build() {
    final _$result = _$v ??
        new _$BigDecimalShape._(
            shapeId: BuiltValueNullFieldError.checkNotNull(
                shapeId, r'BigDecimalShape', 'shapeId'),
            traits: BuiltValueNullFieldError.checkNotNull(
                traits, r'BigDecimalShape', 'traits'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

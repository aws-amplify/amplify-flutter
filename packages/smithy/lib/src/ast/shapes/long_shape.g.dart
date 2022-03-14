// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'long_shape.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LongShape> _$longShapeSerializer = new _$LongShapeSerializer();

class _$LongShapeSerializer implements StructuredSerializer<LongShape> {
  @override
  final Iterable<Type> types = const [LongShape, _$LongShape];
  @override
  final String wireName = 'LongShape';

  @override
  Iterable<Object?> serialize(Serializers serializers, LongShape object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'traits',
      serializers.serialize(object.traits,
          specifiedType: const FullType(TraitMap)),
    ];

    return result;
  }

  @override
  LongShape deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LongShapeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'traits':
          result.traits = serializers.deserialize(value,
              specifiedType: const FullType(TraitMap)) as TraitMap;
          break;
      }
    }

    return result.build();
  }
}

class _$LongShape extends LongShape {
  @override
  final ShapeId shapeId;
  @override
  final TraitMap traits;

  factory _$LongShape([void Function(LongShapeBuilder)? updates]) =>
      (new LongShapeBuilder()..update(updates)).build();

  _$LongShape._({required this.shapeId, required this.traits}) : super._() {
    BuiltValueNullFieldError.checkNotNull(shapeId, 'LongShape', 'shapeId');
    BuiltValueNullFieldError.checkNotNull(traits, 'LongShape', 'traits');
  }

  @override
  LongShape rebuild(void Function(LongShapeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LongShapeBuilder toBuilder() => new LongShapeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LongShape &&
        shapeId == other.shapeId &&
        traits == other.traits;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, shapeId.hashCode), traits.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LongShape')
          ..add('shapeId', shapeId)
          ..add('traits', traits))
        .toString();
  }
}

class LongShapeBuilder
    implements Builder<LongShape, LongShapeBuilder>, SimpleShapeBuilder {
  _$LongShape? _$v;

  ShapeId? _shapeId;
  ShapeId? get shapeId => _$this._shapeId;
  set shapeId(covariant ShapeId? shapeId) => _$this._shapeId = shapeId;

  TraitMap? _traits;
  TraitMap? get traits => _$this._traits;
  set traits(covariant TraitMap? traits) => _$this._traits = traits;

  LongShapeBuilder() {
    LongShape._init(this);
  }

  LongShapeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _shapeId = $v.shapeId;
      _traits = $v.traits;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant LongShape other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LongShape;
  }

  @override
  void update(void Function(LongShapeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LongShape build() {
    final _$result = _$v ??
        new _$LongShape._(
            shapeId: BuiltValueNullFieldError.checkNotNull(
                shapeId, 'LongShape', 'shapeId'),
            traits: BuiltValueNullFieldError.checkNotNull(
                traits, 'LongShape', 'traits'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'short_shape.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ShortShape> _$shortShapeSerializer = new _$ShortShapeSerializer();

class _$ShortShapeSerializer implements StructuredSerializer<ShortShape> {
  @override
  final Iterable<Type> types = const [ShortShape, _$ShortShape];
  @override
  final String wireName = 'ShortShape';

  @override
  Iterable<Object?> serialize(Serializers serializers, ShortShape object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'traits',
      serializers.serialize(object.traits,
          specifiedType: const FullType(TraitMap)),
    ];

    return result;
  }

  @override
  ShortShape deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ShortShapeBuilder();

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

class _$ShortShape extends ShortShape {
  @override
  final ShapeId shapeId;
  @override
  final TraitMap traits;

  factory _$ShortShape([void Function(ShortShapeBuilder)? updates]) =>
      (new ShortShapeBuilder()..update(updates)).build();

  _$ShortShape._({required this.shapeId, required this.traits}) : super._() {
    BuiltValueNullFieldError.checkNotNull(shapeId, 'ShortShape', 'shapeId');
    BuiltValueNullFieldError.checkNotNull(traits, 'ShortShape', 'traits');
  }

  @override
  ShortShape rebuild(void Function(ShortShapeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ShortShapeBuilder toBuilder() => new ShortShapeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ShortShape &&
        shapeId == other.shapeId &&
        traits == other.traits;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, shapeId.hashCode), traits.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ShortShape')
          ..add('shapeId', shapeId)
          ..add('traits', traits))
        .toString();
  }
}

class ShortShapeBuilder
    implements Builder<ShortShape, ShortShapeBuilder>, SimpleShapeBuilder {
  _$ShortShape? _$v;

  ShapeId? _shapeId;
  ShapeId? get shapeId => _$this._shapeId;
  set shapeId(covariant ShapeId? shapeId) => _$this._shapeId = shapeId;

  TraitMap? _traits;
  TraitMap? get traits => _$this._traits;
  set traits(covariant TraitMap? traits) => _$this._traits = traits;

  ShortShapeBuilder() {
    ShortShape._init(this);
  }

  ShortShapeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _shapeId = $v.shapeId;
      _traits = $v.traits;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant ShortShape other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ShortShape;
  }

  @override
  void update(void Function(ShortShapeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ShortShape build() {
    final _$result = _$v ??
        new _$ShortShape._(
            shapeId: BuiltValueNullFieldError.checkNotNull(
                shapeId, 'ShortShape', 'shapeId'),
            traits: BuiltValueNullFieldError.checkNotNull(
                traits, 'ShortShape', 'traits'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

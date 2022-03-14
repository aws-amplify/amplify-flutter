// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'byte_shape.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ByteShape> _$byteShapeSerializer = new _$ByteShapeSerializer();

class _$ByteShapeSerializer implements StructuredSerializer<ByteShape> {
  @override
  final Iterable<Type> types = const [ByteShape, _$ByteShape];
  @override
  final String wireName = 'ByteShape';

  @override
  Iterable<Object?> serialize(Serializers serializers, ByteShape object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'traits',
      serializers.serialize(object.traits,
          specifiedType: const FullType(TraitMap)),
    ];

    return result;
  }

  @override
  ByteShape deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ByteShapeBuilder();

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

class _$ByteShape extends ByteShape {
  @override
  final ShapeId shapeId;
  @override
  final TraitMap traits;

  factory _$ByteShape([void Function(ByteShapeBuilder)? updates]) =>
      (new ByteShapeBuilder()..update(updates)).build();

  _$ByteShape._({required this.shapeId, required this.traits}) : super._() {
    BuiltValueNullFieldError.checkNotNull(shapeId, 'ByteShape', 'shapeId');
    BuiltValueNullFieldError.checkNotNull(traits, 'ByteShape', 'traits');
  }

  @override
  ByteShape rebuild(void Function(ByteShapeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ByteShapeBuilder toBuilder() => new ByteShapeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ByteShape &&
        shapeId == other.shapeId &&
        traits == other.traits;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, shapeId.hashCode), traits.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ByteShape')
          ..add('shapeId', shapeId)
          ..add('traits', traits))
        .toString();
  }
}

class ByteShapeBuilder
    implements Builder<ByteShape, ByteShapeBuilder>, SimpleShapeBuilder {
  _$ByteShape? _$v;

  ShapeId? _shapeId;
  ShapeId? get shapeId => _$this._shapeId;
  set shapeId(covariant ShapeId? shapeId) => _$this._shapeId = shapeId;

  TraitMap? _traits;
  TraitMap? get traits => _$this._traits;
  set traits(covariant TraitMap? traits) => _$this._traits = traits;

  ByteShapeBuilder() {
    ByteShape._init(this);
  }

  ByteShapeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _shapeId = $v.shapeId;
      _traits = $v.traits;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant ByteShape other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ByteShape;
  }

  @override
  void update(void Function(ByteShapeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ByteShape build() {
    final _$result = _$v ??
        new _$ByteShape._(
            shapeId: BuiltValueNullFieldError.checkNotNull(
                shapeId, 'ByteShape', 'shapeId'),
            traits: BuiltValueNullFieldError.checkNotNull(
                traits, 'ByteShape', 'traits'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

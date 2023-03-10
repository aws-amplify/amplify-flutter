// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timestamp_shape.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TimestampShape> _$timestampShapeSerializer =
    new _$TimestampShapeSerializer();

class _$TimestampShapeSerializer
    implements StructuredSerializer<TimestampShape> {
  @override
  final Iterable<Type> types = const [TimestampShape, _$TimestampShape];
  @override
  final String wireName = 'TimestampShape';

  @override
  Iterable<Object?> serialize(Serializers serializers, TimestampShape object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'traits',
      serializers.serialize(object.traits,
          specifiedType: const FullType(TraitMap)),
    ];

    return result;
  }

  @override
  TimestampShape deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TimestampShapeBuilder();

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

class _$TimestampShape extends TimestampShape {
  @override
  final ShapeId shapeId;
  @override
  final TraitMap traits;

  factory _$TimestampShape([void Function(TimestampShapeBuilder)? updates]) =>
      (new TimestampShapeBuilder()..update(updates))._build();

  _$TimestampShape._({required this.shapeId, required this.traits})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        shapeId, r'TimestampShape', 'shapeId');
    BuiltValueNullFieldError.checkNotNull(traits, r'TimestampShape', 'traits');
  }

  @override
  TimestampShape rebuild(void Function(TimestampShapeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TimestampShapeBuilder toBuilder() =>
      new TimestampShapeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TimestampShape &&
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
    return (newBuiltValueToStringHelper(r'TimestampShape')
          ..add('shapeId', shapeId)
          ..add('traits', traits))
        .toString();
  }
}

class TimestampShapeBuilder
    implements
        Builder<TimestampShape, TimestampShapeBuilder>,
        SimpleShapeBuilder {
  _$TimestampShape? _$v;

  ShapeId? _shapeId;
  ShapeId? get shapeId => _$this._shapeId;
  set shapeId(covariant ShapeId? shapeId) => _$this._shapeId = shapeId;

  TraitMap? _traits;
  TraitMap? get traits => _$this._traits;
  set traits(covariant TraitMap? traits) => _$this._traits = traits;

  TimestampShapeBuilder() {
    TimestampShape._init(this);
  }

  TimestampShapeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _shapeId = $v.shapeId;
      _traits = $v.traits;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant TimestampShape other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TimestampShape;
  }

  @override
  void update(void Function(TimestampShapeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TimestampShape build() => _build();

  _$TimestampShape _build() {
    final _$result = _$v ??
        new _$TimestampShape._(
            shapeId: BuiltValueNullFieldError.checkNotNull(
                shapeId, r'TimestampShape', 'shapeId'),
            traits: BuiltValueNullFieldError.checkNotNull(
                traits, r'TimestampShape', 'traits'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

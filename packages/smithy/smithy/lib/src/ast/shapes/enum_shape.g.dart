// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enum_shape.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<StringEnumShape> _$stringEnumShapeSerializer =
    new _$StringEnumShapeSerializer();
Serializer<IntEnumShape> _$intEnumShapeSerializer =
    new _$IntEnumShapeSerializer();

class _$StringEnumShapeSerializer
    implements StructuredSerializer<StringEnumShape> {
  @override
  final Iterable<Type> types = const [StringEnumShape, _$StringEnumShape];
  @override
  final String wireName = 'StringEnumShape';

  @override
  Iterable<Object?> serialize(Serializers serializers, StringEnumShape object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'members',
      serializers.serialize(object.members,
          specifiedType: const FullType(NamedMembersMap)),
      'traits',
      serializers.serialize(object.traits,
          specifiedType: const FullType(TraitMap)),
    ];

    return result;
  }

  @override
  StringEnumShape deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StringEnumShapeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'members':
          result.members = serializers.deserialize(value,
                  specifiedType: const FullType(NamedMembersMap))!
              as NamedMembersMap;
          break;
        case 'traits':
          result.traits = serializers.deserialize(value,
              specifiedType: const FullType(TraitMap))! as TraitMap;
          break;
      }
    }

    return result.build();
  }
}

class _$IntEnumShapeSerializer implements StructuredSerializer<IntEnumShape> {
  @override
  final Iterable<Type> types = const [IntEnumShape, _$IntEnumShape];
  @override
  final String wireName = 'IntEnumShape';

  @override
  Iterable<Object?> serialize(Serializers serializers, IntEnumShape object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'members',
      serializers.serialize(object.members,
          specifiedType: const FullType(NamedMembersMap)),
      'traits',
      serializers.serialize(object.traits,
          specifiedType: const FullType(TraitMap)),
    ];

    return result;
  }

  @override
  IntEnumShape deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new IntEnumShapeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'members':
          result.members = serializers.deserialize(value,
                  specifiedType: const FullType(NamedMembersMap))!
              as NamedMembersMap;
          break;
        case 'traits':
          result.traits = serializers.deserialize(value,
              specifiedType: const FullType(TraitMap))! as TraitMap;
          break;
      }
    }

    return result.build();
  }
}

abstract class EnumShapeBuilder implements NamedMembersShapeBuilder {
  void replace(covariant EnumShape other);
  void update(void Function(EnumShapeBuilder) updates);
  NamedMembersMap? get members;
  set members(covariant NamedMembersMap? members);

  ShapeId? get shapeId;
  set shapeId(covariant ShapeId? shapeId);

  TraitMap? get traits;
  set traits(covariant TraitMap? traits);
}

class _$StringEnumShape extends StringEnumShape {
  @override
  final NamedMembersMap members;
  @override
  final ShapeId shapeId;
  @override
  final TraitMap traits;

  factory _$StringEnumShape([void Function(StringEnumShapeBuilder)? updates]) =>
      (new StringEnumShapeBuilder()..update(updates))._build();

  _$StringEnumShape._(
      {required this.members, required this.shapeId, required this.traits})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        members, r'StringEnumShape', 'members');
    BuiltValueNullFieldError.checkNotNull(
        shapeId, r'StringEnumShape', 'shapeId');
    BuiltValueNullFieldError.checkNotNull(traits, r'StringEnumShape', 'traits');
  }

  @override
  StringEnumShape rebuild(void Function(StringEnumShapeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StringEnumShapeBuilder toBuilder() =>
      new StringEnumShapeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StringEnumShape &&
        members == other.members &&
        shapeId == other.shapeId &&
        traits == other.traits;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, members.hashCode);
    _$hash = $jc(_$hash, shapeId.hashCode);
    _$hash = $jc(_$hash, traits.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StringEnumShape')
          ..add('members', members)
          ..add('shapeId', shapeId)
          ..add('traits', traits))
        .toString();
  }
}

class StringEnumShapeBuilder
    implements
        Builder<StringEnumShape, StringEnumShapeBuilder>,
        EnumShapeBuilder {
  _$StringEnumShape? _$v;

  NamedMembersMap? _members;
  NamedMembersMap? get members => _$this._members;
  set members(covariant NamedMembersMap? members) => _$this._members = members;

  ShapeId? _shapeId;
  ShapeId? get shapeId => _$this._shapeId;
  set shapeId(covariant ShapeId? shapeId) => _$this._shapeId = shapeId;

  TraitMap? _traits;
  TraitMap? get traits => _$this._traits;
  set traits(covariant TraitMap? traits) => _$this._traits = traits;

  StringEnumShapeBuilder() {
    StringEnumShape._init(this);
  }

  StringEnumShapeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _members = $v.members;
      _shapeId = $v.shapeId;
      _traits = $v.traits;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant StringEnumShape other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StringEnumShape;
  }

  @override
  void update(void Function(StringEnumShapeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StringEnumShape build() => _build();

  _$StringEnumShape _build() {
    final _$result = _$v ??
        new _$StringEnumShape._(
            members: BuiltValueNullFieldError.checkNotNull(
                members, r'StringEnumShape', 'members'),
            shapeId: BuiltValueNullFieldError.checkNotNull(
                shapeId, r'StringEnumShape', 'shapeId'),
            traits: BuiltValueNullFieldError.checkNotNull(
                traits, r'StringEnumShape', 'traits'));
    replace(_$result);
    return _$result;
  }
}

class _$IntEnumShape extends IntEnumShape {
  @override
  final NamedMembersMap members;
  @override
  final ShapeId shapeId;
  @override
  final TraitMap traits;

  factory _$IntEnumShape([void Function(IntEnumShapeBuilder)? updates]) =>
      (new IntEnumShapeBuilder()..update(updates))._build();

  _$IntEnumShape._(
      {required this.members, required this.shapeId, required this.traits})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(members, r'IntEnumShape', 'members');
    BuiltValueNullFieldError.checkNotNull(shapeId, r'IntEnumShape', 'shapeId');
    BuiltValueNullFieldError.checkNotNull(traits, r'IntEnumShape', 'traits');
  }

  @override
  IntEnumShape rebuild(void Function(IntEnumShapeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IntEnumShapeBuilder toBuilder() => new IntEnumShapeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IntEnumShape &&
        members == other.members &&
        shapeId == other.shapeId &&
        traits == other.traits;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, members.hashCode);
    _$hash = $jc(_$hash, shapeId.hashCode);
    _$hash = $jc(_$hash, traits.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IntEnumShape')
          ..add('members', members)
          ..add('shapeId', shapeId)
          ..add('traits', traits))
        .toString();
  }
}

class IntEnumShapeBuilder
    implements Builder<IntEnumShape, IntEnumShapeBuilder>, EnumShapeBuilder {
  _$IntEnumShape? _$v;

  NamedMembersMap? _members;
  NamedMembersMap? get members => _$this._members;
  set members(covariant NamedMembersMap? members) => _$this._members = members;

  ShapeId? _shapeId;
  ShapeId? get shapeId => _$this._shapeId;
  set shapeId(covariant ShapeId? shapeId) => _$this._shapeId = shapeId;

  TraitMap? _traits;
  TraitMap? get traits => _$this._traits;
  set traits(covariant TraitMap? traits) => _$this._traits = traits;

  IntEnumShapeBuilder() {
    IntEnumShape._init(this);
  }

  IntEnumShapeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _members = $v.members;
      _shapeId = $v.shapeId;
      _traits = $v.traits;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant IntEnumShape other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IntEnumShape;
  }

  @override
  void update(void Function(IntEnumShapeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IntEnumShape build() => _build();

  _$IntEnumShape _build() {
    final _$result = _$v ??
        new _$IntEnumShape._(
            members: BuiltValueNullFieldError.checkNotNull(
                members, r'IntEnumShape', 'members'),
            shapeId: BuiltValueNullFieldError.checkNotNull(
                shapeId, r'IntEnumShape', 'shapeId'),
            traits: BuiltValueNullFieldError.checkNotNull(
                traits, r'IntEnumShape', 'traits'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

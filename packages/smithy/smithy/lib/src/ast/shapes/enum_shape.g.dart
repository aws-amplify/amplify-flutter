// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enum_shape.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EnumShape> _$enumShapeSerializer = new _$EnumShapeSerializer();

class _$EnumShapeSerializer implements StructuredSerializer<EnumShape> {
  @override
  final Iterable<Type> types = const [EnumShape, _$EnumShape];
  @override
  final String wireName = 'EnumShape';

  @override
  Iterable<Object?> serialize(Serializers serializers, EnumShape object,
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
  EnumShape deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EnumShapeBuilder();

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

class _$EnumShape extends EnumShape {
  @override
  final NamedMembersMap members;
  @override
  final ShapeId shapeId;
  @override
  final TraitMap traits;

  factory _$EnumShape([void Function(EnumShapeBuilder)? updates]) =>
      (new EnumShapeBuilder()..update(updates))._build();

  _$EnumShape._(
      {required this.members, required this.shapeId, required this.traits})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(members, r'EnumShape', 'members');
    BuiltValueNullFieldError.checkNotNull(shapeId, r'EnumShape', 'shapeId');
    BuiltValueNullFieldError.checkNotNull(traits, r'EnumShape', 'traits');
  }

  @override
  EnumShape rebuild(void Function(EnumShapeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnumShapeBuilder toBuilder() => new EnumShapeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnumShape &&
        members == other.members &&
        shapeId == other.shapeId &&
        traits == other.traits;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, members.hashCode), shapeId.hashCode), traits.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EnumShape')
          ..add('members', members)
          ..add('shapeId', shapeId)
          ..add('traits', traits))
        .toString();
  }
}

class EnumShapeBuilder
    implements Builder<EnumShape, EnumShapeBuilder>, NamedMembersShapeBuilder {
  _$EnumShape? _$v;

  NamedMembersMap? _members;
  NamedMembersMap? get members => _$this._members;
  set members(covariant NamedMembersMap? members) => _$this._members = members;

  ShapeId? _shapeId;
  ShapeId? get shapeId => _$this._shapeId;
  set shapeId(covariant ShapeId? shapeId) => _$this._shapeId = shapeId;

  TraitMap? _traits;
  TraitMap? get traits => _$this._traits;
  set traits(covariant TraitMap? traits) => _$this._traits = traits;

  EnumShapeBuilder() {
    EnumShape._init(this);
  }

  EnumShapeBuilder get _$this {
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
  void replace(covariant EnumShape other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EnumShape;
  }

  @override
  void update(void Function(EnumShapeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EnumShape build() => _build();

  _$EnumShape _build() {
    final _$result = _$v ??
        new _$EnumShape._(
            members: BuiltValueNullFieldError.checkNotNull(
                members, r'EnumShape', 'members'),
            shapeId: BuiltValueNullFieldError.checkNotNull(
                shapeId, r'EnumShape', 'shapeId'),
            traits: BuiltValueNullFieldError.checkNotNull(
                traits, r'EnumShape', 'traits'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

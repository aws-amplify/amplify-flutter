// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_shape.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SetShape> _$setShapeSerializer = new _$SetShapeSerializer();

class _$SetShapeSerializer implements StructuredSerializer<SetShape> {
  @override
  final Iterable<Type> types = const [SetShape, _$SetShape];
  @override
  final String wireName = 'SetShape';

  @override
  Iterable<Object?> serialize(Serializers serializers, SetShape object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'member',
      serializers.serialize(object.member,
          specifiedType: const FullType(MemberShape)),
      'traits',
      serializers.serialize(object.traits,
          specifiedType: const FullType(TraitMap)),
    ];

    return result;
  }

  @override
  SetShape deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SetShapeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'member':
          result.member.replace(serializers.deserialize(value,
              specifiedType: const FullType(MemberShape))! as MemberShape);
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

class _$SetShape extends SetShape {
  @override
  final MemberShape member;
  @override
  final ShapeId shapeId;
  @override
  final TraitMap traits;

  factory _$SetShape([void Function(SetShapeBuilder)? updates]) =>
      (new SetShapeBuilder()..update(updates))._build();

  _$SetShape._(
      {required this.member, required this.shapeId, required this.traits})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(member, r'SetShape', 'member');
    BuiltValueNullFieldError.checkNotNull(shapeId, r'SetShape', 'shapeId');
    BuiltValueNullFieldError.checkNotNull(traits, r'SetShape', 'traits');
  }

  @override
  SetShape rebuild(void Function(SetShapeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SetShapeBuilder toBuilder() => new SetShapeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SetShape &&
        member == other.member &&
        shapeId == other.shapeId &&
        traits == other.traits;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, member.hashCode);
    _$hash = $jc(_$hash, shapeId.hashCode);
    _$hash = $jc(_$hash, traits.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SetShape')
          ..add('member', member)
          ..add('shapeId', shapeId)
          ..add('traits', traits))
        .toString();
  }
}

class SetShapeBuilder
    implements Builder<SetShape, SetShapeBuilder>, CollectionShapeBuilder {
  _$SetShape? _$v;

  MemberShapeBuilder? _member;
  MemberShapeBuilder get member => _$this._member ??= new MemberShapeBuilder();
  set member(covariant MemberShapeBuilder? member) => _$this._member = member;

  ShapeId? _shapeId;
  ShapeId? get shapeId => _$this._shapeId;
  set shapeId(covariant ShapeId? shapeId) => _$this._shapeId = shapeId;

  TraitMap? _traits;
  TraitMap? get traits => _$this._traits;
  set traits(covariant TraitMap? traits) => _$this._traits = traits;

  SetShapeBuilder() {
    SetShape._init(this);
  }

  SetShapeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _member = $v.member.toBuilder();
      _shapeId = $v.shapeId;
      _traits = $v.traits;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant SetShape other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SetShape;
  }

  @override
  void update(void Function(SetShapeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SetShape build() => _build();

  _$SetShape _build() {
    _$SetShape _$result;
    try {
      _$result = _$v ??
          new _$SetShape._(
              member: member.build(),
              shapeId: BuiltValueNullFieldError.checkNotNull(
                  shapeId, r'SetShape', 'shapeId'),
              traits: BuiltValueNullFieldError.checkNotNull(
                  traits, r'SetShape', 'traits'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'member';
        member.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SetShape', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

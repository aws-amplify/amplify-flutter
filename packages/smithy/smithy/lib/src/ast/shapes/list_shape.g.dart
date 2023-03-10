// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_shape.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ListShape> _$listShapeSerializer = new _$ListShapeSerializer();

class _$ListShapeSerializer implements StructuredSerializer<ListShape> {
  @override
  final Iterable<Type> types = const [ListShape, _$ListShape];
  @override
  final String wireName = 'ListShape';

  @override
  Iterable<Object?> serialize(Serializers serializers, ListShape object,
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
  ListShape deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ListShapeBuilder();

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

class _$ListShape extends ListShape {
  @override
  final MemberShape member;
  @override
  final ShapeId shapeId;
  @override
  final TraitMap traits;

  factory _$ListShape([void Function(ListShapeBuilder)? updates]) =>
      (new ListShapeBuilder()..update(updates))._build();

  _$ListShape._(
      {required this.member, required this.shapeId, required this.traits})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(member, r'ListShape', 'member');
    BuiltValueNullFieldError.checkNotNull(shapeId, r'ListShape', 'shapeId');
    BuiltValueNullFieldError.checkNotNull(traits, r'ListShape', 'traits');
  }

  @override
  ListShape rebuild(void Function(ListShapeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListShapeBuilder toBuilder() => new ListShapeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListShape &&
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
    return (newBuiltValueToStringHelper(r'ListShape')
          ..add('member', member)
          ..add('shapeId', shapeId)
          ..add('traits', traits))
        .toString();
  }
}

class ListShapeBuilder
    implements Builder<ListShape, ListShapeBuilder>, CollectionShapeBuilder {
  _$ListShape? _$v;

  MemberShapeBuilder? _member;
  MemberShapeBuilder get member => _$this._member ??= new MemberShapeBuilder();
  set member(covariant MemberShapeBuilder? member) => _$this._member = member;

  ShapeId? _shapeId;
  ShapeId? get shapeId => _$this._shapeId;
  set shapeId(covariant ShapeId? shapeId) => _$this._shapeId = shapeId;

  TraitMap? _traits;
  TraitMap? get traits => _$this._traits;
  set traits(covariant TraitMap? traits) => _$this._traits = traits;

  ListShapeBuilder() {
    ListShape._init(this);
  }

  ListShapeBuilder get _$this {
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
  void replace(covariant ListShape other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListShape;
  }

  @override
  void update(void Function(ListShapeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListShape build() => _build();

  _$ListShape _build() {
    _$ListShape _$result;
    try {
      _$result = _$v ??
          new _$ListShape._(
              member: member.build(),
              shapeId: BuiltValueNullFieldError.checkNotNull(
                  shapeId, r'ListShape', 'shapeId'),
              traits: BuiltValueNullFieldError.checkNotNull(
                  traits, r'ListShape', 'traits'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'member';
        member.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListShape', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

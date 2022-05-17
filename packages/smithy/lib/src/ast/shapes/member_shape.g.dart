// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_shape.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MemberShape> _$memberShapeSerializer = new _$MemberShapeSerializer();

class _$MemberShapeSerializer implements StructuredSerializer<MemberShape> {
  @override
  final Iterable<Type> types = const [MemberShape, _$MemberShape];
  @override
  final String wireName = 'MemberShape';

  @override
  Iterable<Object?> serialize(Serializers serializers, MemberShape object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'target',
      serializers.serialize(object.target,
          specifiedType: const FullType(ShapeId)),
      'memberName',
      serializers.serialize(object.memberName,
          specifiedType: const FullType(String)),
      'traits',
      serializers.serialize(object.traits,
          specifiedType: const FullType(TraitMap)),
    ];

    return result;
  }

  @override
  MemberShape deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MemberShapeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'target':
          result.target = serializers.deserialize(value,
              specifiedType: const FullType(ShapeId))! as ShapeId;
          break;
        case 'memberName':
          result.memberName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
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

class _$MemberShape extends MemberShape {
  @override
  final ShapeId target;
  @override
  final String memberName;
  @override
  final ShapeId shapeId;
  @override
  final TraitMap traits;

  factory _$MemberShape([void Function(MemberShapeBuilder)? updates]) =>
      (new MemberShapeBuilder()..update(updates))._build();

  _$MemberShape._(
      {required this.target,
      required this.memberName,
      required this.shapeId,
      required this.traits})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(target, 'MemberShape', 'target');
    BuiltValueNullFieldError.checkNotNull(
        memberName, 'MemberShape', 'memberName');
    BuiltValueNullFieldError.checkNotNull(shapeId, 'MemberShape', 'shapeId');
    BuiltValueNullFieldError.checkNotNull(traits, 'MemberShape', 'traits');
  }

  @override
  MemberShape rebuild(void Function(MemberShapeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MemberShapeBuilder toBuilder() => new MemberShapeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MemberShape &&
        target == other.target &&
        memberName == other.memberName &&
        shapeId == other.shapeId &&
        traits == other.traits;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, target.hashCode), memberName.hashCode),
            shapeId.hashCode),
        traits.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MemberShape')
          ..add('target', target)
          ..add('memberName', memberName)
          ..add('shapeId', shapeId)
          ..add('traits', traits))
        .toString();
  }
}

class MemberShapeBuilder
    implements Builder<MemberShape, MemberShapeBuilder>, ShapeBuilder {
  _$MemberShape? _$v;

  ShapeId? _target;
  ShapeId? get target => _$this._target;
  set target(covariant ShapeId? target) => _$this._target = target;

  String? _memberName;
  String? get memberName => _$this._memberName;
  set memberName(covariant String? memberName) =>
      _$this._memberName = memberName;

  ShapeId? _shapeId;
  ShapeId? get shapeId => _$this._shapeId;
  set shapeId(covariant ShapeId? shapeId) => _$this._shapeId = shapeId;

  TraitMap? _traits;
  TraitMap? get traits => _$this._traits;
  set traits(covariant TraitMap? traits) => _$this._traits = traits;

  MemberShapeBuilder() {
    MemberShape._init(this);
  }

  MemberShapeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _target = $v.target;
      _memberName = $v.memberName;
      _shapeId = $v.shapeId;
      _traits = $v.traits;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant MemberShape other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MemberShape;
  }

  @override
  void update(void Function(MemberShapeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MemberShape build() => _build();

  _$MemberShape _build() {
    final _$result = _$v ??
        new _$MemberShape._(
            target: BuiltValueNullFieldError.checkNotNull(
                target, 'MemberShape', 'target'),
            memberName: BuiltValueNullFieldError.checkNotNull(
                memberName, 'MemberShape', 'memberName'),
            shapeId: BuiltValueNullFieldError.checkNotNull(
                shapeId, 'MemberShape', 'shapeId'),
            traits: BuiltValueNullFieldError.checkNotNull(
                traits, 'MemberShape', 'traits'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

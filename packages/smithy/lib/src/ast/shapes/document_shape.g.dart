// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_shape.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DocumentShape> _$documentShapeSerializer =
    new _$DocumentShapeSerializer();

class _$DocumentShapeSerializer implements StructuredSerializer<DocumentShape> {
  @override
  final Iterable<Type> types = const [DocumentShape, _$DocumentShape];
  @override
  final String wireName = 'DocumentShape';

  @override
  Iterable<Object?> serialize(Serializers serializers, DocumentShape object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'traits',
      serializers.serialize(object.traits,
          specifiedType: const FullType(TraitMap)),
    ];

    return result;
  }

  @override
  DocumentShape deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DocumentShapeBuilder();

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

class _$DocumentShape extends DocumentShape {
  @override
  final ShapeId shapeId;
  @override
  final TraitMap traits;

  factory _$DocumentShape([void Function(DocumentShapeBuilder)? updates]) =>
      (new DocumentShapeBuilder()..update(updates)).build();

  _$DocumentShape._({required this.shapeId, required this.traits}) : super._() {
    BuiltValueNullFieldError.checkNotNull(shapeId, 'DocumentShape', 'shapeId');
    BuiltValueNullFieldError.checkNotNull(traits, 'DocumentShape', 'traits');
  }

  @override
  DocumentShape rebuild(void Function(DocumentShapeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DocumentShapeBuilder toBuilder() => new DocumentShapeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DocumentShape &&
        shapeId == other.shapeId &&
        traits == other.traits;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, shapeId.hashCode), traits.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DocumentShape')
          ..add('shapeId', shapeId)
          ..add('traits', traits))
        .toString();
  }
}

class DocumentShapeBuilder
    implements
        Builder<DocumentShape, DocumentShapeBuilder>,
        SimpleShapeBuilder {
  _$DocumentShape? _$v;

  ShapeId? _shapeId;
  ShapeId? get shapeId => _$this._shapeId;
  set shapeId(covariant ShapeId? shapeId) => _$this._shapeId = shapeId;

  TraitMap? _traits;
  TraitMap? get traits => _$this._traits;
  set traits(covariant TraitMap? traits) => _$this._traits = traits;

  DocumentShapeBuilder() {
    DocumentShape._init(this);
  }

  DocumentShapeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _shapeId = $v.shapeId;
      _traits = $v.traits;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant DocumentShape other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DocumentShape;
  }

  @override
  void update(void Function(DocumentShapeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DocumentShape build() {
    final _$result = _$v ??
        new _$DocumentShape._(
            shapeId: BuiltValueNullFieldError.checkNotNull(
                shapeId, 'DocumentShape', 'shapeId'),
            traits: BuiltValueNullFieldError.checkNotNull(
                traits, 'DocumentShape', 'traits'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_index.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ModelIndexType _$primary = const ModelIndexType._('primary');
const ModelIndexType _$secondary = const ModelIndexType._('secondary');
const ModelIndexType _$foreign = const ModelIndexType._('foreign');

ModelIndexType _$ModelIndexTypeValueOf(String name) {
  switch (name) {
    case 'primary':
      return _$primary;
    case 'secondary':
      return _$secondary;
    case 'foreign':
      return _$foreign;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<ModelIndexType> _$ModelIndexTypeValues =
    new BuiltSet<ModelIndexType>(const <ModelIndexType>[
  _$primary,
  _$secondary,
  _$foreign,
]);

Serializer<ModelIndexType> _$modelIndexTypeSerializer =
    new _$ModelIndexTypeSerializer();
Serializer<ModelIndex> _$modelIndexSerializer = new _$ModelIndexSerializer();

class _$ModelIndexTypeSerializer
    implements PrimitiveSerializer<ModelIndexType> {
  @override
  final Iterable<Type> types = const <Type>[ModelIndexType];
  @override
  final String wireName = 'ModelIndexType';

  @override
  Object serialize(Serializers serializers, ModelIndexType object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  ModelIndexType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ModelIndexType.valueOf(serialized as String);
}

class _$ModelIndexSerializer implements StructuredSerializer<ModelIndex> {
  @override
  final Iterable<Type> types = const [ModelIndex, _$ModelIndex];
  @override
  final String wireName = 'ModelIndex';

  @override
  Iterable<Object?> serialize(Serializers serializers, ModelIndex object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'type',
      serializers.serialize(object.type,
          specifiedType: const FullType(ModelIndexType)),
      'primaryField',
      serializers.serialize(object.primaryField,
          specifiedType: const FullType(String)),
      'sortKeyFields',
      serializers.serialize(object.sortKeyFields,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.queryField;
    if (value != null) {
      result
        ..add('queryField')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ModelIndex deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ModelIndexBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(ModelIndexType))! as ModelIndexType;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'queryField':
          result.queryField = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'primaryField':
          result.primaryField = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'sortKeyFields':
          result.sortKeyFields.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$ModelIndex extends ModelIndex {
  @override
  final ModelIndexType type;
  @override
  final String? name;
  @override
  final String? queryField;
  @override
  final String primaryField;
  @override
  final BuiltList<String> sortKeyFields;

  factory _$ModelIndex([void Function(ModelIndexBuilder)? updates]) =>
      (new ModelIndexBuilder()..update(updates))._build();

  _$ModelIndex._(
      {required this.type,
      this.name,
      this.queryField,
      required this.primaryField,
      required this.sortKeyFields})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(type, r'ModelIndex', 'type');
    BuiltValueNullFieldError.checkNotNull(
        primaryField, r'ModelIndex', 'primaryField');
    BuiltValueNullFieldError.checkNotNull(
        sortKeyFields, r'ModelIndex', 'sortKeyFields');
  }

  @override
  ModelIndex rebuild(void Function(ModelIndexBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModelIndexBuilder toBuilder() => new ModelIndexBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModelIndex &&
        type == other.type &&
        name == other.name &&
        queryField == other.queryField &&
        primaryField == other.primaryField &&
        sortKeyFields == other.sortKeyFields;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, type.hashCode), name.hashCode), queryField.hashCode),
            primaryField.hashCode),
        sortKeyFields.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ModelIndex')
          ..add('type', type)
          ..add('name', name)
          ..add('queryField', queryField)
          ..add('primaryField', primaryField)
          ..add('sortKeyFields', sortKeyFields))
        .toString();
  }
}

class ModelIndexBuilder implements Builder<ModelIndex, ModelIndexBuilder> {
  _$ModelIndex? _$v;

  ModelIndexType? _type;
  ModelIndexType? get type => _$this._type;
  set type(ModelIndexType? type) => _$this._type = type;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _queryField;
  String? get queryField => _$this._queryField;
  set queryField(String? queryField) => _$this._queryField = queryField;

  String? _primaryField;
  String? get primaryField => _$this._primaryField;
  set primaryField(String? primaryField) => _$this._primaryField = primaryField;

  ListBuilder<String>? _sortKeyFields;
  ListBuilder<String> get sortKeyFields =>
      _$this._sortKeyFields ??= new ListBuilder<String>();
  set sortKeyFields(ListBuilder<String>? sortKeyFields) =>
      _$this._sortKeyFields = sortKeyFields;

  ModelIndexBuilder();

  ModelIndexBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _name = $v.name;
      _queryField = $v.queryField;
      _primaryField = $v.primaryField;
      _sortKeyFields = $v.sortKeyFields.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModelIndex other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModelIndex;
  }

  @override
  void update(void Function(ModelIndexBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModelIndex build() => _build();

  _$ModelIndex _build() {
    _$ModelIndex _$result;
    try {
      _$result = _$v ??
          new _$ModelIndex._(
              type: BuiltValueNullFieldError.checkNotNull(
                  type, r'ModelIndex', 'type'),
              name: name,
              queryField: queryField,
              primaryField: BuiltValueNullFieldError.checkNotNull(
                  primaryField, r'ModelIndex', 'primaryField'),
              sortKeyFields: sortKeyFields.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sortKeyFields';
        sortKeyFields.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModelIndex', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

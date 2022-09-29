// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_index.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ModelIndex> _$modelIndexSerializer = new _$ModelIndexSerializer();

class _$ModelIndexSerializer implements StructuredSerializer<ModelIndex> {
  @override
  final Iterable<Type> types = const [ModelIndex, _$ModelIndex];
  @override
  final String wireName = 'ModelIndex';

  @override
  Iterable<Object?> serialize(Serializers serializers, ModelIndex object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
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
        case 'name':
          result.name = serializers.deserialize(value,
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
  final String? name;
  @override
  final String primaryField;
  @override
  final BuiltList<String> sortKeyFields;

  factory _$ModelIndex([void Function(ModelIndexBuilder)? updates]) =>
      (new ModelIndexBuilder()..update(updates))._build();

  _$ModelIndex._(
      {this.name, required this.primaryField, required this.sortKeyFields})
      : super._() {
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
        name == other.name &&
        primaryField == other.primaryField &&
        sortKeyFields == other.sortKeyFields;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, name.hashCode), primaryField.hashCode),
        sortKeyFields.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ModelIndex')
          ..add('name', name)
          ..add('primaryField', primaryField)
          ..add('sortKeyFields', sortKeyFields))
        .toString();
  }
}

class ModelIndexBuilder implements Builder<ModelIndex, ModelIndexBuilder> {
  _$ModelIndex? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

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
      _name = $v.name;
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
              name: name,
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

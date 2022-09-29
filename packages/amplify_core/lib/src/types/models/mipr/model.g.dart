// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ModelTypeDefinition> _$modelTypeDefinitionSerializer =
    new _$ModelTypeDefinitionSerializer();
Serializer<NonModelTypeDefinition> _$nonModelTypeDefinitionSerializer =
    new _$NonModelTypeDefinitionSerializer();
Serializer<EnumTypeDefinition> _$enumTypeDefinitionSerializer =
    new _$EnumTypeDefinitionSerializer();

class _$ModelTypeDefinitionSerializer
    implements StructuredSerializer<ModelTypeDefinition> {
  @override
  final Iterable<Type> types = const [
    ModelTypeDefinition,
    _$ModelTypeDefinition
  ];
  @override
  final String wireName = 'ModelTypeDefinition';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ModelTypeDefinition object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'pluralName',
      serializers.serialize(object.pluralName,
          specifiedType: const FullType(String)),
      'fields',
      serializers.serialize(object.fields,
          specifiedType: const FullType(BuiltMap,
              const [const FullType(String), const FullType(ModelField)])),
      'authRules',
      serializers.serialize(object.authRules,
          specifiedType:
              const FullType(BuiltList, const [const FullType(AuthRule)])),
      'indexes',
      serializers.serialize(object.indexes,
          specifiedType:
              const FullType(BuiltList, const [const FullType(ModelIndex)])),
    ];

    return result;
  }

  @override
  ModelTypeDefinition deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ModelTypeDefinitionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'pluralName':
          result.pluralName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'fields':
          result.fields.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(String),
                const FullType(ModelField)
              ]))!);
          break;
        case 'authRules':
          result.authRules.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(AuthRule)]))!
              as BuiltList<Object?>);
          break;
        case 'indexes':
          result.indexes.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ModelIndex)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$NonModelTypeDefinitionSerializer
    implements StructuredSerializer<NonModelTypeDefinition> {
  @override
  final Iterable<Type> types = const [
    NonModelTypeDefinition,
    _$NonModelTypeDefinition
  ];
  @override
  final String wireName = 'NonModelTypeDefinition';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, NonModelTypeDefinition object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'fields',
      serializers.serialize(object.fields,
          specifiedType: const FullType(BuiltMap,
              const [const FullType(String), const FullType(ModelField)])),
    ];

    return result;
  }

  @override
  NonModelTypeDefinition deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NonModelTypeDefinitionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'fields':
          result.fields.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(String),
                const FullType(ModelField)
              ]))!);
          break;
      }
    }

    return result.build();
  }
}

class _$EnumTypeDefinitionSerializer
    implements StructuredSerializer<EnumTypeDefinition> {
  @override
  final Iterable<Type> types = const [EnumTypeDefinition, _$EnumTypeDefinition];
  @override
  final String wireName = 'EnumTypeDefinition';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, EnumTypeDefinition object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'values',
      serializers.serialize(object.values,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  EnumTypeDefinition deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EnumTypeDefinitionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'values':
          result.values.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

abstract class SchemaTypeDefinitionBuilder {
  void replace(SchemaTypeDefinition other);
  void update(void Function(SchemaTypeDefinitionBuilder) updates);
  String? get name;
  set name(String? name);
}

abstract class StructureTypeDefinitionBuilder
    implements SchemaTypeDefinitionBuilder {
  void replace(covariant StructureTypeDefinition other);
  void update(void Function(StructureTypeDefinitionBuilder) updates);
  MapBuilder<String, ModelField> get fields;
  set fields(covariant MapBuilder<String, ModelField>? fields);

  String? get name;
  set name(covariant String? name);
}

class _$ModelTypeDefinition extends ModelTypeDefinition {
  @override
  final String name;
  @override
  final String pluralName;
  @override
  final BuiltMap<String, ModelField> fields;
  @override
  final BuiltList<AuthRule> authRules;
  @override
  final BuiltList<ModelIndex> indexes;

  factory _$ModelTypeDefinition(
          [void Function(ModelTypeDefinitionBuilder)? updates]) =>
      (new ModelTypeDefinitionBuilder()..update(updates))._build();

  _$ModelTypeDefinition._(
      {required this.name,
      required this.pluralName,
      required this.fields,
      required this.authRules,
      required this.indexes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'ModelTypeDefinition', 'name');
    BuiltValueNullFieldError.checkNotNull(
        pluralName, r'ModelTypeDefinition', 'pluralName');
    BuiltValueNullFieldError.checkNotNull(
        fields, r'ModelTypeDefinition', 'fields');
    BuiltValueNullFieldError.checkNotNull(
        authRules, r'ModelTypeDefinition', 'authRules');
    BuiltValueNullFieldError.checkNotNull(
        indexes, r'ModelTypeDefinition', 'indexes');
  }

  @override
  ModelTypeDefinition rebuild(
          void Function(ModelTypeDefinitionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModelTypeDefinitionBuilder toBuilder() =>
      new ModelTypeDefinitionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModelTypeDefinition &&
        name == other.name &&
        pluralName == other.pluralName &&
        fields == other.fields &&
        authRules == other.authRules &&
        indexes == other.indexes;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, name.hashCode), pluralName.hashCode),
                fields.hashCode),
            authRules.hashCode),
        indexes.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ModelTypeDefinition')
          ..add('name', name)
          ..add('pluralName', pluralName)
          ..add('fields', fields)
          ..add('authRules', authRules)
          ..add('indexes', indexes))
        .toString();
  }
}

class ModelTypeDefinitionBuilder
    implements
        Builder<ModelTypeDefinition, ModelTypeDefinitionBuilder>,
        StructureTypeDefinitionBuilder {
  _$ModelTypeDefinition? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(covariant String? name) => _$this._name = name;

  String? _pluralName;
  String? get pluralName => _$this._pluralName;
  set pluralName(covariant String? pluralName) =>
      _$this._pluralName = pluralName;

  MapBuilder<String, ModelField>? _fields;
  MapBuilder<String, ModelField> get fields =>
      _$this._fields ??= new MapBuilder<String, ModelField>();
  set fields(covariant MapBuilder<String, ModelField>? fields) =>
      _$this._fields = fields;

  ListBuilder<AuthRule>? _authRules;
  ListBuilder<AuthRule> get authRules =>
      _$this._authRules ??= new ListBuilder<AuthRule>();
  set authRules(covariant ListBuilder<AuthRule>? authRules) =>
      _$this._authRules = authRules;

  ListBuilder<ModelIndex>? _indexes;
  ListBuilder<ModelIndex> get indexes =>
      _$this._indexes ??= new ListBuilder<ModelIndex>();
  set indexes(covariant ListBuilder<ModelIndex>? indexes) =>
      _$this._indexes = indexes;

  ModelTypeDefinitionBuilder();

  ModelTypeDefinitionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _pluralName = $v.pluralName;
      _fields = $v.fields.toBuilder();
      _authRules = $v.authRules.toBuilder();
      _indexes = $v.indexes.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant ModelTypeDefinition other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModelTypeDefinition;
  }

  @override
  void update(void Function(ModelTypeDefinitionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModelTypeDefinition build() => _build();

  _$ModelTypeDefinition _build() {
    _$ModelTypeDefinition _$result;
    try {
      _$result = _$v ??
          new _$ModelTypeDefinition._(
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'ModelTypeDefinition', 'name'),
              pluralName: BuiltValueNullFieldError.checkNotNull(
                  pluralName, r'ModelTypeDefinition', 'pluralName'),
              fields: fields.build(),
              authRules: authRules.build(),
              indexes: indexes.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fields';
        fields.build();
        _$failedField = 'authRules';
        authRules.build();
        _$failedField = 'indexes';
        indexes.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModelTypeDefinition', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$NonModelTypeDefinition extends NonModelTypeDefinition {
  @override
  final String name;
  @override
  final BuiltMap<String, ModelField> fields;

  factory _$NonModelTypeDefinition(
          [void Function(NonModelTypeDefinitionBuilder)? updates]) =>
      (new NonModelTypeDefinitionBuilder()..update(updates))._build();

  _$NonModelTypeDefinition._({required this.name, required this.fields})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        name, r'NonModelTypeDefinition', 'name');
    BuiltValueNullFieldError.checkNotNull(
        fields, r'NonModelTypeDefinition', 'fields');
  }

  @override
  NonModelTypeDefinition rebuild(
          void Function(NonModelTypeDefinitionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NonModelTypeDefinitionBuilder toBuilder() =>
      new NonModelTypeDefinitionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NonModelTypeDefinition &&
        name == other.name &&
        fields == other.fields;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, name.hashCode), fields.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NonModelTypeDefinition')
          ..add('name', name)
          ..add('fields', fields))
        .toString();
  }
}

class NonModelTypeDefinitionBuilder
    implements
        Builder<NonModelTypeDefinition, NonModelTypeDefinitionBuilder>,
        StructureTypeDefinitionBuilder {
  _$NonModelTypeDefinition? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(covariant String? name) => _$this._name = name;

  MapBuilder<String, ModelField>? _fields;
  MapBuilder<String, ModelField> get fields =>
      _$this._fields ??= new MapBuilder<String, ModelField>();
  set fields(covariant MapBuilder<String, ModelField>? fields) =>
      _$this._fields = fields;

  NonModelTypeDefinitionBuilder();

  NonModelTypeDefinitionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _fields = $v.fields.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant NonModelTypeDefinition other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NonModelTypeDefinition;
  }

  @override
  void update(void Function(NonModelTypeDefinitionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NonModelTypeDefinition build() => _build();

  _$NonModelTypeDefinition _build() {
    _$NonModelTypeDefinition _$result;
    try {
      _$result = _$v ??
          new _$NonModelTypeDefinition._(
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'NonModelTypeDefinition', 'name'),
              fields: fields.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fields';
        fields.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'NonModelTypeDefinition', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$EnumTypeDefinition extends EnumTypeDefinition {
  @override
  final BuiltList<String> values;
  @override
  final String name;

  factory _$EnumTypeDefinition(
          [void Function(EnumTypeDefinitionBuilder)? updates]) =>
      (new EnumTypeDefinitionBuilder()..update(updates))._build();

  _$EnumTypeDefinition._({required this.values, required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        values, r'EnumTypeDefinition', 'values');
    BuiltValueNullFieldError.checkNotNull(name, r'EnumTypeDefinition', 'name');
  }

  @override
  EnumTypeDefinition rebuild(
          void Function(EnumTypeDefinitionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnumTypeDefinitionBuilder toBuilder() =>
      new EnumTypeDefinitionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnumTypeDefinition &&
        values == other.values &&
        name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, values.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EnumTypeDefinition')
          ..add('values', values)
          ..add('name', name))
        .toString();
  }
}

class EnumTypeDefinitionBuilder
    implements
        Builder<EnumTypeDefinition, EnumTypeDefinitionBuilder>,
        SchemaTypeDefinitionBuilder {
  _$EnumTypeDefinition? _$v;

  ListBuilder<String>? _values;
  ListBuilder<String> get values =>
      _$this._values ??= new ListBuilder<String>();
  set values(covariant ListBuilder<String>? values) => _$this._values = values;

  String? _name;
  String? get name => _$this._name;
  set name(covariant String? name) => _$this._name = name;

  EnumTypeDefinitionBuilder();

  EnumTypeDefinitionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _values = $v.values.toBuilder();
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant EnumTypeDefinition other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EnumTypeDefinition;
  }

  @override
  void update(void Function(EnumTypeDefinitionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EnumTypeDefinition build() => _build();

  _$EnumTypeDefinition _build() {
    _$EnumTypeDefinition _$result;
    try {
      _$result = _$v ??
          new _$EnumTypeDefinition._(
              values: values.build(),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'EnumTypeDefinition', 'name'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'values';
        values.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'EnumTypeDefinition', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SchemaDefinition> _$schemaDefinitionSerializer =
    new _$SchemaDefinitionSerializer();

class _$SchemaDefinitionSerializer
    implements StructuredSerializer<SchemaDefinition> {
  @override
  final Iterable<Type> types = const [SchemaDefinition, _$SchemaDefinition];
  @override
  final String wireName = 'SchemaDefinition';

  @override
  Iterable<Object?> serialize(Serializers serializers, SchemaDefinition object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'typeDefinitions',
      serializers.serialize(object.typeDefinitions,
          specifiedType: const FullType(BuiltMap, const [
            const FullType(String),
            const FullType(SchemaTypeDefinition)
          ])),
    ];

    return result;
  }

  @override
  SchemaDefinition deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SchemaDefinitionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'typeDefinitions':
          result.typeDefinitions.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(String),
                const FullType(SchemaTypeDefinition)
              ]))!);
          break;
      }
    }

    return result.build();
  }
}

class _$SchemaDefinition extends SchemaDefinition {
  @override
  final BuiltMap<String, SchemaTypeDefinition> typeDefinitions;

  factory _$SchemaDefinition(
          [void Function(SchemaDefinitionBuilder)? updates]) =>
      (new SchemaDefinitionBuilder()..update(updates))._build();

  _$SchemaDefinition._({required this.typeDefinitions}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        typeDefinitions, r'SchemaDefinition', 'typeDefinitions');
  }

  @override
  SchemaDefinition rebuild(void Function(SchemaDefinitionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SchemaDefinitionBuilder toBuilder() =>
      new SchemaDefinitionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SchemaDefinition &&
        typeDefinitions == other.typeDefinitions;
  }

  @override
  int get hashCode {
    return $jf($jc(0, typeDefinitions.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SchemaDefinition')
          ..add('typeDefinitions', typeDefinitions))
        .toString();
  }
}

class SchemaDefinitionBuilder
    implements Builder<SchemaDefinition, SchemaDefinitionBuilder> {
  _$SchemaDefinition? _$v;

  MapBuilder<String, SchemaTypeDefinition>? _typeDefinitions;
  MapBuilder<String, SchemaTypeDefinition> get typeDefinitions =>
      _$this._typeDefinitions ??=
          new MapBuilder<String, SchemaTypeDefinition>();
  set typeDefinitions(
          MapBuilder<String, SchemaTypeDefinition>? typeDefinitions) =>
      _$this._typeDefinitions = typeDefinitions;

  SchemaDefinitionBuilder();

  SchemaDefinitionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _typeDefinitions = $v.typeDefinitions.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SchemaDefinition other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SchemaDefinition;
  }

  @override
  void update(void Function(SchemaDefinitionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SchemaDefinition build() => _build();

  _$SchemaDefinition _build() {
    _$SchemaDefinition _$result;
    try {
      _$result = _$v ??
          new _$SchemaDefinition._(typeDefinitions: typeDefinitions.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'typeDefinitions';
        typeDefinitions.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SchemaDefinition', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_field.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ModelField> _$modelFieldSerializer = new _$ModelFieldSerializer();

class _$ModelFieldSerializer implements StructuredSerializer<ModelField> {
  @override
  final Iterable<Type> types = const [ModelField, _$ModelField];
  @override
  final String wireName = 'ModelField';

  @override
  Iterable<Object?> serialize(Serializers serializers, ModelField object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'type',
      serializers.serialize(object.type,
          specifiedType: const FullType(SchemaType)),
      'isReadOnly',
      serializers.serialize(object.isReadOnly,
          specifiedType: const FullType(bool)),
      'authRules',
      serializers.serialize(object.authRules,
          specifiedType:
              const FullType(BuiltList, const [const FullType(AuthRule)])),
    ];
    Object? value;
    value = object.association;
    if (value != null) {
      result
        ..add('association')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(ModelAssociation)));
    }
    return result;
  }

  @override
  ModelField deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ModelFieldBuilder();

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
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(SchemaType))! as SchemaType;
          break;
        case 'isReadOnly':
          result.isReadOnly = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'association':
          result.association.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ModelAssociation))!
              as ModelAssociation);
          break;
        case 'authRules':
          result.authRules.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(AuthRule)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$ModelField extends ModelField {
  @override
  final String name;
  @override
  final SchemaType type;
  @override
  final bool isReadOnly;
  @override
  final ModelAssociation? association;
  @override
  final BuiltList<AuthRule> authRules;

  factory _$ModelField([void Function(ModelFieldBuilder)? updates]) =>
      (new ModelFieldBuilder()..update(updates))._build();

  _$ModelField._(
      {required this.name,
      required this.type,
      required this.isReadOnly,
      this.association,
      required this.authRules})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'ModelField', 'name');
    BuiltValueNullFieldError.checkNotNull(type, r'ModelField', 'type');
    BuiltValueNullFieldError.checkNotNull(
        isReadOnly, r'ModelField', 'isReadOnly');
    BuiltValueNullFieldError.checkNotNull(
        authRules, r'ModelField', 'authRules');
  }

  @override
  ModelField rebuild(void Function(ModelFieldBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModelFieldBuilder toBuilder() => new ModelFieldBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModelField &&
        name == other.name &&
        type == other.type &&
        isReadOnly == other.isReadOnly &&
        association == other.association &&
        authRules == other.authRules;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, name.hashCode), type.hashCode), isReadOnly.hashCode),
            association.hashCode),
        authRules.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ModelField')
          ..add('name', name)
          ..add('type', type)
          ..add('isReadOnly', isReadOnly)
          ..add('association', association)
          ..add('authRules', authRules))
        .toString();
  }
}

class ModelFieldBuilder implements Builder<ModelField, ModelFieldBuilder> {
  _$ModelField? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  SchemaType? _type;
  SchemaType? get type => _$this._type;
  set type(SchemaType? type) => _$this._type = type;

  bool? _isReadOnly;
  bool? get isReadOnly => _$this._isReadOnly;
  set isReadOnly(bool? isReadOnly) => _$this._isReadOnly = isReadOnly;

  ModelAssociationBuilder? _association;
  ModelAssociationBuilder get association =>
      _$this._association ??= new ModelAssociationBuilder();
  set association(ModelAssociationBuilder? association) =>
      _$this._association = association;

  ListBuilder<AuthRule>? _authRules;
  ListBuilder<AuthRule> get authRules =>
      _$this._authRules ??= new ListBuilder<AuthRule>();
  set authRules(ListBuilder<AuthRule>? authRules) =>
      _$this._authRules = authRules;

  ModelFieldBuilder() {
    ModelField._setDefaults(this);
  }

  ModelFieldBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _type = $v.type;
      _isReadOnly = $v.isReadOnly;
      _association = $v.association?.toBuilder();
      _authRules = $v.authRules.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModelField other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModelField;
  }

  @override
  void update(void Function(ModelFieldBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModelField build() => _build();

  _$ModelField _build() {
    _$ModelField _$result;
    try {
      _$result = _$v ??
          new _$ModelField._(
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'ModelField', 'name'),
              type: BuiltValueNullFieldError.checkNotNull(
                  type, r'ModelField', 'type'),
              isReadOnly: BuiltValueNullFieldError.checkNotNull(
                  isReadOnly, r'ModelField', 'isReadOnly'),
              association: _association?.build(),
              authRules: authRules.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'association';
        _association?.build();
        _$failedField = 'authRules';
        authRules.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModelField', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

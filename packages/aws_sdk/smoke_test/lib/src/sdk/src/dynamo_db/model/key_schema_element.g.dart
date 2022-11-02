// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.key_schema_element;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$KeySchemaElement extends KeySchemaElement {
  @override
  final String attributeName;
  @override
  final _i2.KeyType keyType;

  factory _$KeySchemaElement(
          [void Function(KeySchemaElementBuilder)? updates]) =>
      (new KeySchemaElementBuilder()..update(updates))._build();

  _$KeySchemaElement._({required this.attributeName, required this.keyType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        attributeName, r'KeySchemaElement', 'attributeName');
    BuiltValueNullFieldError.checkNotNull(
        keyType, r'KeySchemaElement', 'keyType');
  }

  @override
  KeySchemaElement rebuild(void Function(KeySchemaElementBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  KeySchemaElementBuilder toBuilder() =>
      new KeySchemaElementBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is KeySchemaElement &&
        attributeName == other.attributeName &&
        keyType == other.keyType;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, attributeName.hashCode), keyType.hashCode));
  }
}

class KeySchemaElementBuilder
    implements Builder<KeySchemaElement, KeySchemaElementBuilder> {
  _$KeySchemaElement? _$v;

  String? _attributeName;
  String? get attributeName => _$this._attributeName;
  set attributeName(String? attributeName) =>
      _$this._attributeName = attributeName;

  _i2.KeyType? _keyType;
  _i2.KeyType? get keyType => _$this._keyType;
  set keyType(_i2.KeyType? keyType) => _$this._keyType = keyType;

  KeySchemaElementBuilder() {
    KeySchemaElement._init(this);
  }

  KeySchemaElementBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _attributeName = $v.attributeName;
      _keyType = $v.keyType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(KeySchemaElement other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$KeySchemaElement;
  }

  @override
  void update(void Function(KeySchemaElementBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  KeySchemaElement build() => _build();

  _$KeySchemaElement _build() {
    final _$result = _$v ??
        new _$KeySchemaElement._(
            attributeName: BuiltValueNullFieldError.checkNotNull(
                attributeName, r'KeySchemaElement', 'attributeName'),
            keyType: BuiltValueNullFieldError.checkNotNull(
                keyType, r'KeySchemaElement', 'keyType'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

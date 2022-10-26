// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.keys_and_attributes;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$KeysAndAttributes extends KeysAndAttributes {
  @override
  final _i3.BuiltList<String>? attributesToGet;
  @override
  final bool? consistentRead;
  @override
  final _i3.BuiltMap<String, String>? expressionAttributeNames;
  @override
  final _i3.BuiltList<_i3.BuiltMap<String, _i2.AttributeValue>> keys;
  @override
  final String? projectionExpression;

  factory _$KeysAndAttributes(
          [void Function(KeysAndAttributesBuilder)? updates]) =>
      (new KeysAndAttributesBuilder()..update(updates))._build();

  _$KeysAndAttributes._(
      {this.attributesToGet,
      this.consistentRead,
      this.expressionAttributeNames,
      required this.keys,
      this.projectionExpression})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(keys, r'KeysAndAttributes', 'keys');
  }

  @override
  KeysAndAttributes rebuild(void Function(KeysAndAttributesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  KeysAndAttributesBuilder toBuilder() =>
      new KeysAndAttributesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is KeysAndAttributes &&
        attributesToGet == other.attributesToGet &&
        consistentRead == other.consistentRead &&
        expressionAttributeNames == other.expressionAttributeNames &&
        keys == other.keys &&
        projectionExpression == other.projectionExpression;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, attributesToGet.hashCode), consistentRead.hashCode),
                expressionAttributeNames.hashCode),
            keys.hashCode),
        projectionExpression.hashCode));
  }
}

class KeysAndAttributesBuilder
    implements Builder<KeysAndAttributes, KeysAndAttributesBuilder> {
  _$KeysAndAttributes? _$v;

  _i3.ListBuilder<String>? _attributesToGet;
  _i3.ListBuilder<String> get attributesToGet =>
      _$this._attributesToGet ??= new _i3.ListBuilder<String>();
  set attributesToGet(_i3.ListBuilder<String>? attributesToGet) =>
      _$this._attributesToGet = attributesToGet;

  bool? _consistentRead;
  bool? get consistentRead => _$this._consistentRead;
  set consistentRead(bool? consistentRead) =>
      _$this._consistentRead = consistentRead;

  _i3.MapBuilder<String, String>? _expressionAttributeNames;
  _i3.MapBuilder<String, String> get expressionAttributeNames =>
      _$this._expressionAttributeNames ??= new _i3.MapBuilder<String, String>();
  set expressionAttributeNames(
          _i3.MapBuilder<String, String>? expressionAttributeNames) =>
      _$this._expressionAttributeNames = expressionAttributeNames;

  _i3.ListBuilder<_i3.BuiltMap<String, _i2.AttributeValue>>? _keys;
  _i3.ListBuilder<_i3.BuiltMap<String, _i2.AttributeValue>> get keys =>
      _$this._keys ??=
          new _i3.ListBuilder<_i3.BuiltMap<String, _i2.AttributeValue>>();
  set keys(_i3.ListBuilder<_i3.BuiltMap<String, _i2.AttributeValue>>? keys) =>
      _$this._keys = keys;

  String? _projectionExpression;
  String? get projectionExpression => _$this._projectionExpression;
  set projectionExpression(String? projectionExpression) =>
      _$this._projectionExpression = projectionExpression;

  KeysAndAttributesBuilder() {
    KeysAndAttributes._init(this);
  }

  KeysAndAttributesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _attributesToGet = $v.attributesToGet?.toBuilder();
      _consistentRead = $v.consistentRead;
      _expressionAttributeNames = $v.expressionAttributeNames?.toBuilder();
      _keys = $v.keys.toBuilder();
      _projectionExpression = $v.projectionExpression;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(KeysAndAttributes other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$KeysAndAttributes;
  }

  @override
  void update(void Function(KeysAndAttributesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  KeysAndAttributes build() => _build();

  _$KeysAndAttributes _build() {
    _$KeysAndAttributes _$result;
    try {
      _$result = _$v ??
          new _$KeysAndAttributes._(
              attributesToGet: _attributesToGet?.build(),
              consistentRead: consistentRead,
              expressionAttributeNames: _expressionAttributeNames?.build(),
              keys: keys.build(),
              projectionExpression: projectionExpression);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'attributesToGet';
        _attributesToGet?.build();

        _$failedField = 'expressionAttributeNames';
        _expressionAttributeNames?.build();
        _$failedField = 'keys';
        keys.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'KeysAndAttributes', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

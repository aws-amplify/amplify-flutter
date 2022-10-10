// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.get_item_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetItemInput extends GetItemInput {
  @override
  final _i5.BuiltList<String>? attributesToGet;
  @override
  final bool? consistentRead;
  @override
  final _i5.BuiltMap<String, String>? expressionAttributeNames;
  @override
  final _i5.BuiltMap<String, _i3.AttributeValue> key;
  @override
  final String? projectionExpression;
  @override
  final _i4.ReturnConsumedCapacity? returnConsumedCapacity;
  @override
  final String tableName;

  factory _$GetItemInput([void Function(GetItemInputBuilder)? updates]) =>
      (new GetItemInputBuilder()..update(updates))._build();

  _$GetItemInput._(
      {this.attributesToGet,
      this.consistentRead,
      this.expressionAttributeNames,
      required this.key,
      this.projectionExpression,
      this.returnConsumedCapacity,
      required this.tableName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(key, r'GetItemInput', 'key');
    BuiltValueNullFieldError.checkNotNull(
        tableName, r'GetItemInput', 'tableName');
  }

  @override
  GetItemInput rebuild(void Function(GetItemInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetItemInputBuilder toBuilder() => new GetItemInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetItemInput &&
        attributesToGet == other.attributesToGet &&
        consistentRead == other.consistentRead &&
        expressionAttributeNames == other.expressionAttributeNames &&
        key == other.key &&
        projectionExpression == other.projectionExpression &&
        returnConsumedCapacity == other.returnConsumedCapacity &&
        tableName == other.tableName;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc(0, attributesToGet.hashCode),
                            consistentRead.hashCode),
                        expressionAttributeNames.hashCode),
                    key.hashCode),
                projectionExpression.hashCode),
            returnConsumedCapacity.hashCode),
        tableName.hashCode));
  }
}

class GetItemInputBuilder
    implements Builder<GetItemInput, GetItemInputBuilder> {
  _$GetItemInput? _$v;

  _i5.ListBuilder<String>? _attributesToGet;
  _i5.ListBuilder<String> get attributesToGet =>
      _$this._attributesToGet ??= new _i5.ListBuilder<String>();
  set attributesToGet(_i5.ListBuilder<String>? attributesToGet) =>
      _$this._attributesToGet = attributesToGet;

  bool? _consistentRead;
  bool? get consistentRead => _$this._consistentRead;
  set consistentRead(bool? consistentRead) =>
      _$this._consistentRead = consistentRead;

  _i5.MapBuilder<String, String>? _expressionAttributeNames;
  _i5.MapBuilder<String, String> get expressionAttributeNames =>
      _$this._expressionAttributeNames ??= new _i5.MapBuilder<String, String>();
  set expressionAttributeNames(
          _i5.MapBuilder<String, String>? expressionAttributeNames) =>
      _$this._expressionAttributeNames = expressionAttributeNames;

  _i5.MapBuilder<String, _i3.AttributeValue>? _key;
  _i5.MapBuilder<String, _i3.AttributeValue> get key =>
      _$this._key ??= new _i5.MapBuilder<String, _i3.AttributeValue>();
  set key(_i5.MapBuilder<String, _i3.AttributeValue>? key) => _$this._key = key;

  String? _projectionExpression;
  String? get projectionExpression => _$this._projectionExpression;
  set projectionExpression(String? projectionExpression) =>
      _$this._projectionExpression = projectionExpression;

  _i4.ReturnConsumedCapacity? _returnConsumedCapacity;
  _i4.ReturnConsumedCapacity? get returnConsumedCapacity =>
      _$this._returnConsumedCapacity;
  set returnConsumedCapacity(
          _i4.ReturnConsumedCapacity? returnConsumedCapacity) =>
      _$this._returnConsumedCapacity = returnConsumedCapacity;

  String? _tableName;
  String? get tableName => _$this._tableName;
  set tableName(String? tableName) => _$this._tableName = tableName;

  GetItemInputBuilder() {
    GetItemInput._init(this);
  }

  GetItemInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _attributesToGet = $v.attributesToGet?.toBuilder();
      _consistentRead = $v.consistentRead;
      _expressionAttributeNames = $v.expressionAttributeNames?.toBuilder();
      _key = $v.key.toBuilder();
      _projectionExpression = $v.projectionExpression;
      _returnConsumedCapacity = $v.returnConsumedCapacity;
      _tableName = $v.tableName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetItemInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetItemInput;
  }

  @override
  void update(void Function(GetItemInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetItemInput build() => _build();

  _$GetItemInput _build() {
    _$GetItemInput _$result;
    try {
      _$result = _$v ??
          new _$GetItemInput._(
              attributesToGet: _attributesToGet?.build(),
              consistentRead: consistentRead,
              expressionAttributeNames: _expressionAttributeNames?.build(),
              key: key.build(),
              projectionExpression: projectionExpression,
              returnConsumedCapacity: returnConsumedCapacity,
              tableName: BuiltValueNullFieldError.checkNotNull(
                  tableName, r'GetItemInput', 'tableName'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'attributesToGet';
        _attributesToGet?.build();

        _$failedField = 'expressionAttributeNames';
        _expressionAttributeNames?.build();
        _$failedField = 'key';
        key.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetItemInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.condition_check;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConditionCheck extends ConditionCheck {
  @override
  final String conditionExpression;
  @override
  final _i4.BuiltMap<String, String>? expressionAttributeNames;
  @override
  final _i4.BuiltMap<String, _i2.AttributeValue>? expressionAttributeValues;
  @override
  final _i4.BuiltMap<String, _i2.AttributeValue> key;
  @override
  final _i3.ReturnValuesOnConditionCheckFailure?
      returnValuesOnConditionCheckFailure;
  @override
  final String tableName;

  factory _$ConditionCheck([void Function(ConditionCheckBuilder)? updates]) =>
      (new ConditionCheckBuilder()..update(updates))._build();

  _$ConditionCheck._(
      {required this.conditionExpression,
      this.expressionAttributeNames,
      this.expressionAttributeValues,
      required this.key,
      this.returnValuesOnConditionCheckFailure,
      required this.tableName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        conditionExpression, r'ConditionCheck', 'conditionExpression');
    BuiltValueNullFieldError.checkNotNull(key, r'ConditionCheck', 'key');
    BuiltValueNullFieldError.checkNotNull(
        tableName, r'ConditionCheck', 'tableName');
  }

  @override
  ConditionCheck rebuild(void Function(ConditionCheckBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConditionCheckBuilder toBuilder() =>
      new ConditionCheckBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConditionCheck &&
        conditionExpression == other.conditionExpression &&
        expressionAttributeNames == other.expressionAttributeNames &&
        expressionAttributeValues == other.expressionAttributeValues &&
        key == other.key &&
        returnValuesOnConditionCheckFailure ==
            other.returnValuesOnConditionCheckFailure &&
        tableName == other.tableName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, conditionExpression.hashCode);
    _$hash = $jc(_$hash, expressionAttributeNames.hashCode);
    _$hash = $jc(_$hash, expressionAttributeValues.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, returnValuesOnConditionCheckFailure.hashCode);
    _$hash = $jc(_$hash, tableName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ConditionCheckBuilder
    implements Builder<ConditionCheck, ConditionCheckBuilder> {
  _$ConditionCheck? _$v;

  String? _conditionExpression;
  String? get conditionExpression => _$this._conditionExpression;
  set conditionExpression(String? conditionExpression) =>
      _$this._conditionExpression = conditionExpression;

  _i4.MapBuilder<String, String>? _expressionAttributeNames;
  _i4.MapBuilder<String, String> get expressionAttributeNames =>
      _$this._expressionAttributeNames ??= new _i4.MapBuilder<String, String>();
  set expressionAttributeNames(
          _i4.MapBuilder<String, String>? expressionAttributeNames) =>
      _$this._expressionAttributeNames = expressionAttributeNames;

  _i4.MapBuilder<String, _i2.AttributeValue>? _expressionAttributeValues;
  _i4.MapBuilder<String, _i2.AttributeValue> get expressionAttributeValues =>
      _$this._expressionAttributeValues ??=
          new _i4.MapBuilder<String, _i2.AttributeValue>();
  set expressionAttributeValues(
          _i4.MapBuilder<String, _i2.AttributeValue>?
              expressionAttributeValues) =>
      _$this._expressionAttributeValues = expressionAttributeValues;

  _i4.MapBuilder<String, _i2.AttributeValue>? _key;
  _i4.MapBuilder<String, _i2.AttributeValue> get key =>
      _$this._key ??= new _i4.MapBuilder<String, _i2.AttributeValue>();
  set key(_i4.MapBuilder<String, _i2.AttributeValue>? key) => _$this._key = key;

  _i3.ReturnValuesOnConditionCheckFailure? _returnValuesOnConditionCheckFailure;
  _i3.ReturnValuesOnConditionCheckFailure?
      get returnValuesOnConditionCheckFailure =>
          _$this._returnValuesOnConditionCheckFailure;
  set returnValuesOnConditionCheckFailure(
          _i3.ReturnValuesOnConditionCheckFailure?
              returnValuesOnConditionCheckFailure) =>
      _$this._returnValuesOnConditionCheckFailure =
          returnValuesOnConditionCheckFailure;

  String? _tableName;
  String? get tableName => _$this._tableName;
  set tableName(String? tableName) => _$this._tableName = tableName;

  ConditionCheckBuilder() {
    ConditionCheck._init(this);
  }

  ConditionCheckBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _conditionExpression = $v.conditionExpression;
      _expressionAttributeNames = $v.expressionAttributeNames?.toBuilder();
      _expressionAttributeValues = $v.expressionAttributeValues?.toBuilder();
      _key = $v.key.toBuilder();
      _returnValuesOnConditionCheckFailure =
          $v.returnValuesOnConditionCheckFailure;
      _tableName = $v.tableName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConditionCheck other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConditionCheck;
  }

  @override
  void update(void Function(ConditionCheckBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConditionCheck build() => _build();

  _$ConditionCheck _build() {
    _$ConditionCheck _$result;
    try {
      _$result = _$v ??
          new _$ConditionCheck._(
              conditionExpression: BuiltValueNullFieldError.checkNotNull(
                  conditionExpression,
                  r'ConditionCheck',
                  'conditionExpression'),
              expressionAttributeNames: _expressionAttributeNames?.build(),
              expressionAttributeValues: _expressionAttributeValues?.build(),
              key: key.build(),
              returnValuesOnConditionCheckFailure:
                  returnValuesOnConditionCheckFailure,
              tableName: BuiltValueNullFieldError.checkNotNull(
                  tableName, r'ConditionCheck', 'tableName'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'expressionAttributeNames';
        _expressionAttributeNames?.build();
        _$failedField = 'expressionAttributeValues';
        _expressionAttributeValues?.build();
        _$failedField = 'key';
        key.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ConditionCheck', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

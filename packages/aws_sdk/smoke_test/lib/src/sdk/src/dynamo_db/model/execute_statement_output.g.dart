// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.execute_statement_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExecuteStatementOutput extends ExecuteStatementOutput {
  @override
  final _i2.ConsumedCapacity? consumedCapacity;
  @override
  final _i4.BuiltList<_i4.BuiltMap<String, _i3.AttributeValue>>? items;
  @override
  final _i4.BuiltMap<String, _i3.AttributeValue>? lastEvaluatedKey;
  @override
  final String? nextToken;

  factory _$ExecuteStatementOutput(
          [void Function(ExecuteStatementOutputBuilder)? updates]) =>
      (new ExecuteStatementOutputBuilder()..update(updates))._build();

  _$ExecuteStatementOutput._(
      {this.consumedCapacity,
      this.items,
      this.lastEvaluatedKey,
      this.nextToken})
      : super._();

  @override
  ExecuteStatementOutput rebuild(
          void Function(ExecuteStatementOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExecuteStatementOutputBuilder toBuilder() =>
      new ExecuteStatementOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExecuteStatementOutput &&
        consumedCapacity == other.consumedCapacity &&
        items == other.items &&
        lastEvaluatedKey == other.lastEvaluatedKey &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, consumedCapacity.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, lastEvaluatedKey.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ExecuteStatementOutputBuilder
    implements Builder<ExecuteStatementOutput, ExecuteStatementOutputBuilder> {
  _$ExecuteStatementOutput? _$v;

  _i2.ConsumedCapacityBuilder? _consumedCapacity;
  _i2.ConsumedCapacityBuilder get consumedCapacity =>
      _$this._consumedCapacity ??= new _i2.ConsumedCapacityBuilder();
  set consumedCapacity(_i2.ConsumedCapacityBuilder? consumedCapacity) =>
      _$this._consumedCapacity = consumedCapacity;

  _i4.ListBuilder<_i4.BuiltMap<String, _i3.AttributeValue>>? _items;
  _i4.ListBuilder<_i4.BuiltMap<String, _i3.AttributeValue>> get items =>
      _$this._items ??=
          new _i4.ListBuilder<_i4.BuiltMap<String, _i3.AttributeValue>>();
  set items(_i4.ListBuilder<_i4.BuiltMap<String, _i3.AttributeValue>>? items) =>
      _$this._items = items;

  _i4.MapBuilder<String, _i3.AttributeValue>? _lastEvaluatedKey;
  _i4.MapBuilder<String, _i3.AttributeValue> get lastEvaluatedKey =>
      _$this._lastEvaluatedKey ??=
          new _i4.MapBuilder<String, _i3.AttributeValue>();
  set lastEvaluatedKey(
          _i4.MapBuilder<String, _i3.AttributeValue>? lastEvaluatedKey) =>
      _$this._lastEvaluatedKey = lastEvaluatedKey;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  ExecuteStatementOutputBuilder() {
    ExecuteStatementOutput._init(this);
  }

  ExecuteStatementOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _consumedCapacity = $v.consumedCapacity?.toBuilder();
      _items = $v.items?.toBuilder();
      _lastEvaluatedKey = $v.lastEvaluatedKey?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExecuteStatementOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ExecuteStatementOutput;
  }

  @override
  void update(void Function(ExecuteStatementOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExecuteStatementOutput build() => _build();

  _$ExecuteStatementOutput _build() {
    _$ExecuteStatementOutput _$result;
    try {
      _$result = _$v ??
          new _$ExecuteStatementOutput._(
              consumedCapacity: _consumedCapacity?.build(),
              items: _items?.build(),
              lastEvaluatedKey: _lastEvaluatedKey?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'consumedCapacity';
        _consumedCapacity?.build();
        _$failedField = 'items';
        _items?.build();
        _$failedField = 'lastEvaluatedKey';
        _lastEvaluatedKey?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ExecuteStatementOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

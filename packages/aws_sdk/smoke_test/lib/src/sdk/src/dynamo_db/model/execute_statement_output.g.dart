// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'execute_statement_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExecuteStatementOutput extends ExecuteStatementOutput {
  @override
  final _i2.BuiltList<_i2.BuiltMap<String, AttributeValue>>? items;
  @override
  final String? nextToken;
  @override
  final ConsumedCapacity? consumedCapacity;
  @override
  final _i2.BuiltMap<String, AttributeValue>? lastEvaluatedKey;

  factory _$ExecuteStatementOutput(
          [void Function(ExecuteStatementOutputBuilder)? updates]) =>
      (new ExecuteStatementOutputBuilder()..update(updates))._build();

  _$ExecuteStatementOutput._(
      {this.items,
      this.nextToken,
      this.consumedCapacity,
      this.lastEvaluatedKey})
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
        items == other.items &&
        nextToken == other.nextToken &&
        consumedCapacity == other.consumedCapacity &&
        lastEvaluatedKey == other.lastEvaluatedKey;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, consumedCapacity.hashCode);
    _$hash = $jc(_$hash, lastEvaluatedKey.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ExecuteStatementOutputBuilder
    implements Builder<ExecuteStatementOutput, ExecuteStatementOutputBuilder> {
  _$ExecuteStatementOutput? _$v;

  _i2.ListBuilder<_i2.BuiltMap<String, AttributeValue>>? _items;
  _i2.ListBuilder<_i2.BuiltMap<String, AttributeValue>> get items =>
      _$this._items ??=
          new _i2.ListBuilder<_i2.BuiltMap<String, AttributeValue>>();
  set items(_i2.ListBuilder<_i2.BuiltMap<String, AttributeValue>>? items) =>
      _$this._items = items;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  ConsumedCapacityBuilder? _consumedCapacity;
  ConsumedCapacityBuilder get consumedCapacity =>
      _$this._consumedCapacity ??= new ConsumedCapacityBuilder();
  set consumedCapacity(ConsumedCapacityBuilder? consumedCapacity) =>
      _$this._consumedCapacity = consumedCapacity;

  _i2.MapBuilder<String, AttributeValue>? _lastEvaluatedKey;
  _i2.MapBuilder<String, AttributeValue> get lastEvaluatedKey =>
      _$this._lastEvaluatedKey ??= new _i2.MapBuilder<String, AttributeValue>();
  set lastEvaluatedKey(
          _i2.MapBuilder<String, AttributeValue>? lastEvaluatedKey) =>
      _$this._lastEvaluatedKey = lastEvaluatedKey;

  ExecuteStatementOutputBuilder();

  ExecuteStatementOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items?.toBuilder();
      _nextToken = $v.nextToken;
      _consumedCapacity = $v.consumedCapacity?.toBuilder();
      _lastEvaluatedKey = $v.lastEvaluatedKey?.toBuilder();
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
              items: _items?.build(),
              nextToken: nextToken,
              consumedCapacity: _consumedCapacity?.build(),
              lastEvaluatedKey: _lastEvaluatedKey?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        _items?.build();

        _$failedField = 'consumedCapacity';
        _consumedCapacity?.build();
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

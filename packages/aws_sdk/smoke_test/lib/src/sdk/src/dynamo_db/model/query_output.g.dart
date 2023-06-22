// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QueryOutput extends QueryOutput {
  @override
  final _i4.BuiltList<_i4.BuiltMap<String, _i2.AttributeValue>>? items;
  @override
  final int count;
  @override
  final int scannedCount;
  @override
  final _i4.BuiltMap<String, _i2.AttributeValue>? lastEvaluatedKey;
  @override
  final _i3.ConsumedCapacity? consumedCapacity;

  factory _$QueryOutput([void Function(QueryOutputBuilder)? updates]) =>
      (new QueryOutputBuilder()..update(updates))._build();

  _$QueryOutput._(
      {this.items,
      required this.count,
      required this.scannedCount,
      this.lastEvaluatedKey,
      this.consumedCapacity})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(count, r'QueryOutput', 'count');
    BuiltValueNullFieldError.checkNotNull(
        scannedCount, r'QueryOutput', 'scannedCount');
  }

  @override
  QueryOutput rebuild(void Function(QueryOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QueryOutputBuilder toBuilder() => new QueryOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QueryOutput &&
        items == other.items &&
        count == other.count &&
        scannedCount == other.scannedCount &&
        lastEvaluatedKey == other.lastEvaluatedKey &&
        consumedCapacity == other.consumedCapacity;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jc(_$hash, scannedCount.hashCode);
    _$hash = $jc(_$hash, lastEvaluatedKey.hashCode);
    _$hash = $jc(_$hash, consumedCapacity.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class QueryOutputBuilder implements Builder<QueryOutput, QueryOutputBuilder> {
  _$QueryOutput? _$v;

  _i4.ListBuilder<_i4.BuiltMap<String, _i2.AttributeValue>>? _items;
  _i4.ListBuilder<_i4.BuiltMap<String, _i2.AttributeValue>> get items =>
      _$this._items ??=
          new _i4.ListBuilder<_i4.BuiltMap<String, _i2.AttributeValue>>();
  set items(_i4.ListBuilder<_i4.BuiltMap<String, _i2.AttributeValue>>? items) =>
      _$this._items = items;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  int? _scannedCount;
  int? get scannedCount => _$this._scannedCount;
  set scannedCount(int? scannedCount) => _$this._scannedCount = scannedCount;

  _i4.MapBuilder<String, _i2.AttributeValue>? _lastEvaluatedKey;
  _i4.MapBuilder<String, _i2.AttributeValue> get lastEvaluatedKey =>
      _$this._lastEvaluatedKey ??=
          new _i4.MapBuilder<String, _i2.AttributeValue>();
  set lastEvaluatedKey(
          _i4.MapBuilder<String, _i2.AttributeValue>? lastEvaluatedKey) =>
      _$this._lastEvaluatedKey = lastEvaluatedKey;

  _i3.ConsumedCapacityBuilder? _consumedCapacity;
  _i3.ConsumedCapacityBuilder get consumedCapacity =>
      _$this._consumedCapacity ??= new _i3.ConsumedCapacityBuilder();
  set consumedCapacity(_i3.ConsumedCapacityBuilder? consumedCapacity) =>
      _$this._consumedCapacity = consumedCapacity;

  QueryOutputBuilder() {
    QueryOutput._init(this);
  }

  QueryOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items?.toBuilder();
      _count = $v.count;
      _scannedCount = $v.scannedCount;
      _lastEvaluatedKey = $v.lastEvaluatedKey?.toBuilder();
      _consumedCapacity = $v.consumedCapacity?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QueryOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$QueryOutput;
  }

  @override
  void update(void Function(QueryOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QueryOutput build() => _build();

  _$QueryOutput _build() {
    _$QueryOutput _$result;
    try {
      _$result = _$v ??
          new _$QueryOutput._(
              items: _items?.build(),
              count: BuiltValueNullFieldError.checkNotNull(
                  count, r'QueryOutput', 'count'),
              scannedCount: BuiltValueNullFieldError.checkNotNull(
                  scannedCount, r'QueryOutput', 'scannedCount'),
              lastEvaluatedKey: _lastEvaluatedKey?.build(),
              consumedCapacity: _consumedCapacity?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        _items?.build();

        _$failedField = 'lastEvaluatedKey';
        _lastEvaluatedKey?.build();
        _$failedField = 'consumedCapacity';
        _consumedCapacity?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'QueryOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

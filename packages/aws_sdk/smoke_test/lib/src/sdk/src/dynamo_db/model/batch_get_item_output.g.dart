// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.batch_get_item_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BatchGetItemOutput extends BatchGetItemOutput {
  @override
  final _i5.BuiltListMultimap<String, _i5.BuiltMap<String, _i2.AttributeValue>>?
      responses;
  @override
  final _i5.BuiltMap<String, _i3.KeysAndAttributes>? unprocessedKeys;
  @override
  final _i5.BuiltList<_i4.ConsumedCapacity>? consumedCapacity;

  factory _$BatchGetItemOutput(
          [void Function(BatchGetItemOutputBuilder)? updates]) =>
      (new BatchGetItemOutputBuilder()..update(updates))._build();

  _$BatchGetItemOutput._(
      {this.responses, this.unprocessedKeys, this.consumedCapacity})
      : super._();

  @override
  BatchGetItemOutput rebuild(
          void Function(BatchGetItemOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BatchGetItemOutputBuilder toBuilder() =>
      new BatchGetItemOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BatchGetItemOutput &&
        responses == other.responses &&
        unprocessedKeys == other.unprocessedKeys &&
        consumedCapacity == other.consumedCapacity;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, responses.hashCode);
    _$hash = $jc(_$hash, unprocessedKeys.hashCode);
    _$hash = $jc(_$hash, consumedCapacity.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class BatchGetItemOutputBuilder
    implements Builder<BatchGetItemOutput, BatchGetItemOutputBuilder> {
  _$BatchGetItemOutput? _$v;

  _i5.ListMultimapBuilder<String, _i5.BuiltMap<String, _i2.AttributeValue>>?
      _responses;
  _i5.ListMultimapBuilder<String, _i5.BuiltMap<String, _i2.AttributeValue>>
      get responses => _$this._responses ??= new _i5.ListMultimapBuilder<String,
          _i5.BuiltMap<String, _i2.AttributeValue>>();
  set responses(
          _i5.ListMultimapBuilder<String,
                  _i5.BuiltMap<String, _i2.AttributeValue>>?
              responses) =>
      _$this._responses = responses;

  _i5.MapBuilder<String, _i3.KeysAndAttributes>? _unprocessedKeys;
  _i5.MapBuilder<String, _i3.KeysAndAttributes> get unprocessedKeys =>
      _$this._unprocessedKeys ??=
          new _i5.MapBuilder<String, _i3.KeysAndAttributes>();
  set unprocessedKeys(
          _i5.MapBuilder<String, _i3.KeysAndAttributes>? unprocessedKeys) =>
      _$this._unprocessedKeys = unprocessedKeys;

  _i5.ListBuilder<_i4.ConsumedCapacity>? _consumedCapacity;
  _i5.ListBuilder<_i4.ConsumedCapacity> get consumedCapacity =>
      _$this._consumedCapacity ??= new _i5.ListBuilder<_i4.ConsumedCapacity>();
  set consumedCapacity(
          _i5.ListBuilder<_i4.ConsumedCapacity>? consumedCapacity) =>
      _$this._consumedCapacity = consumedCapacity;

  BatchGetItemOutputBuilder() {
    BatchGetItemOutput._init(this);
  }

  BatchGetItemOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _responses = $v.responses?.toBuilder();
      _unprocessedKeys = $v.unprocessedKeys?.toBuilder();
      _consumedCapacity = $v.consumedCapacity?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BatchGetItemOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BatchGetItemOutput;
  }

  @override
  void update(void Function(BatchGetItemOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BatchGetItemOutput build() => _build();

  _$BatchGetItemOutput _build() {
    _$BatchGetItemOutput _$result;
    try {
      _$result = _$v ??
          new _$BatchGetItemOutput._(
              responses: _responses?.build(),
              unprocessedKeys: _unprocessedKeys?.build(),
              consumedCapacity: _consumedCapacity?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'responses';
        _responses?.build();
        _$failedField = 'unprocessedKeys';
        _unprocessedKeys?.build();
        _$failedField = 'consumedCapacity';
        _consumedCapacity?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BatchGetItemOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

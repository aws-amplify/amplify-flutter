// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.batch_get_item_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BatchGetItemOutput extends BatchGetItemOutput {
  @override
  final _i5.BuiltList<_i2.ConsumedCapacity>? consumedCapacity;
  @override
  final _i5.BuiltListMultimap<String, _i5.BuiltMap<String, _i3.AttributeValue>>?
      responses;
  @override
  final _i5.BuiltMap<String, _i4.KeysAndAttributes>? unprocessedKeys;

  factory _$BatchGetItemOutput(
          [void Function(BatchGetItemOutputBuilder)? updates]) =>
      (new BatchGetItemOutputBuilder()..update(updates))._build();

  _$BatchGetItemOutput._(
      {this.consumedCapacity, this.responses, this.unprocessedKeys})
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
        consumedCapacity == other.consumedCapacity &&
        responses == other.responses &&
        unprocessedKeys == other.unprocessedKeys;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, consumedCapacity.hashCode), responses.hashCode),
        unprocessedKeys.hashCode));
  }
}

class BatchGetItemOutputBuilder
    implements Builder<BatchGetItemOutput, BatchGetItemOutputBuilder> {
  _$BatchGetItemOutput? _$v;

  _i5.ListBuilder<_i2.ConsumedCapacity>? _consumedCapacity;
  _i5.ListBuilder<_i2.ConsumedCapacity> get consumedCapacity =>
      _$this._consumedCapacity ??= new _i5.ListBuilder<_i2.ConsumedCapacity>();
  set consumedCapacity(
          _i5.ListBuilder<_i2.ConsumedCapacity>? consumedCapacity) =>
      _$this._consumedCapacity = consumedCapacity;

  _i5.ListMultimapBuilder<String, _i5.BuiltMap<String, _i3.AttributeValue>>?
      _responses;
  _i5.ListMultimapBuilder<String, _i5.BuiltMap<String, _i3.AttributeValue>>
      get responses => _$this._responses ??= new _i5.ListMultimapBuilder<String,
          _i5.BuiltMap<String, _i3.AttributeValue>>();
  set responses(
          _i5.ListMultimapBuilder<String,
                  _i5.BuiltMap<String, _i3.AttributeValue>>?
              responses) =>
      _$this._responses = responses;

  _i5.MapBuilder<String, _i4.KeysAndAttributes>? _unprocessedKeys;
  _i5.MapBuilder<String, _i4.KeysAndAttributes> get unprocessedKeys =>
      _$this._unprocessedKeys ??=
          new _i5.MapBuilder<String, _i4.KeysAndAttributes>();
  set unprocessedKeys(
          _i5.MapBuilder<String, _i4.KeysAndAttributes>? unprocessedKeys) =>
      _$this._unprocessedKeys = unprocessedKeys;

  BatchGetItemOutputBuilder() {
    BatchGetItemOutput._init(this);
  }

  BatchGetItemOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _consumedCapacity = $v.consumedCapacity?.toBuilder();
      _responses = $v.responses?.toBuilder();
      _unprocessedKeys = $v.unprocessedKeys?.toBuilder();
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
              consumedCapacity: _consumedCapacity?.build(),
              responses: _responses?.build(),
              unprocessedKeys: _unprocessedKeys?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'consumedCapacity';
        _consumedCapacity?.build();
        _$failedField = 'responses';
        _responses?.build();
        _$failedField = 'unprocessedKeys';
        _unprocessedKeys?.build();
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

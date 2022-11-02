// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.batch_get_item_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BatchGetItemInput extends BatchGetItemInput {
  @override
  final _i5.BuiltMap<String, _i3.KeysAndAttributes> requestItems;
  @override
  final _i4.ReturnConsumedCapacity? returnConsumedCapacity;

  factory _$BatchGetItemInput(
          [void Function(BatchGetItemInputBuilder)? updates]) =>
      (new BatchGetItemInputBuilder()..update(updates))._build();

  _$BatchGetItemInput._(
      {required this.requestItems, this.returnConsumedCapacity})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        requestItems, r'BatchGetItemInput', 'requestItems');
  }

  @override
  BatchGetItemInput rebuild(void Function(BatchGetItemInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BatchGetItemInputBuilder toBuilder() =>
      new BatchGetItemInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BatchGetItemInput &&
        requestItems == other.requestItems &&
        returnConsumedCapacity == other.returnConsumedCapacity;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc(0, requestItems.hashCode), returnConsumedCapacity.hashCode));
  }
}

class BatchGetItemInputBuilder
    implements Builder<BatchGetItemInput, BatchGetItemInputBuilder> {
  _$BatchGetItemInput? _$v;

  _i5.MapBuilder<String, _i3.KeysAndAttributes>? _requestItems;
  _i5.MapBuilder<String, _i3.KeysAndAttributes> get requestItems =>
      _$this._requestItems ??=
          new _i5.MapBuilder<String, _i3.KeysAndAttributes>();
  set requestItems(
          _i5.MapBuilder<String, _i3.KeysAndAttributes>? requestItems) =>
      _$this._requestItems = requestItems;

  _i4.ReturnConsumedCapacity? _returnConsumedCapacity;
  _i4.ReturnConsumedCapacity? get returnConsumedCapacity =>
      _$this._returnConsumedCapacity;
  set returnConsumedCapacity(
          _i4.ReturnConsumedCapacity? returnConsumedCapacity) =>
      _$this._returnConsumedCapacity = returnConsumedCapacity;

  BatchGetItemInputBuilder() {
    BatchGetItemInput._init(this);
  }

  BatchGetItemInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _requestItems = $v.requestItems.toBuilder();
      _returnConsumedCapacity = $v.returnConsumedCapacity;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BatchGetItemInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BatchGetItemInput;
  }

  @override
  void update(void Function(BatchGetItemInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BatchGetItemInput build() => _build();

  _$BatchGetItemInput _build() {
    _$BatchGetItemInput _$result;
    try {
      _$result = _$v ??
          new _$BatchGetItemInput._(
              requestItems: requestItems.build(),
              returnConsumedCapacity: returnConsumedCapacity);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'requestItems';
        requestItems.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BatchGetItemInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

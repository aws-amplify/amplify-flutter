// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batch_get_item_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BatchGetItemInput extends BatchGetItemInput {
  @override
  final _i3.BuiltMap<String, KeysAndAttributes> requestItems;
  @override
  final ReturnConsumedCapacity? returnConsumedCapacity;

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
    var _$hash = 0;
    _$hash = $jc(_$hash, requestItems.hashCode);
    _$hash = $jc(_$hash, returnConsumedCapacity.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class BatchGetItemInputBuilder
    implements Builder<BatchGetItemInput, BatchGetItemInputBuilder> {
  _$BatchGetItemInput? _$v;

  _i3.MapBuilder<String, KeysAndAttributes>? _requestItems;
  _i3.MapBuilder<String, KeysAndAttributes> get requestItems =>
      _$this._requestItems ??= new _i3.MapBuilder<String, KeysAndAttributes>();
  set requestItems(_i3.MapBuilder<String, KeysAndAttributes>? requestItems) =>
      _$this._requestItems = requestItems;

  ReturnConsumedCapacity? _returnConsumedCapacity;
  ReturnConsumedCapacity? get returnConsumedCapacity =>
      _$this._returnConsumedCapacity;
  set returnConsumedCapacity(ReturnConsumedCapacity? returnConsumedCapacity) =>
      _$this._returnConsumedCapacity = returnConsumedCapacity;

  BatchGetItemInputBuilder();

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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batch_write_item_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BatchWriteItemInput extends BatchWriteItemInput {
  @override
  final _i3.BuiltListMultimap<String, WriteRequest> requestItems;
  @override
  final ReturnConsumedCapacity? returnConsumedCapacity;
  @override
  final ReturnItemCollectionMetrics? returnItemCollectionMetrics;

  factory _$BatchWriteItemInput(
          [void Function(BatchWriteItemInputBuilder)? updates]) =>
      (new BatchWriteItemInputBuilder()..update(updates))._build();

  _$BatchWriteItemInput._(
      {required this.requestItems,
      this.returnConsumedCapacity,
      this.returnItemCollectionMetrics})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        requestItems, r'BatchWriteItemInput', 'requestItems');
  }

  @override
  BatchWriteItemInput rebuild(
          void Function(BatchWriteItemInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BatchWriteItemInputBuilder toBuilder() =>
      new BatchWriteItemInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BatchWriteItemInput &&
        requestItems == other.requestItems &&
        returnConsumedCapacity == other.returnConsumedCapacity &&
        returnItemCollectionMetrics == other.returnItemCollectionMetrics;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, requestItems.hashCode);
    _$hash = $jc(_$hash, returnConsumedCapacity.hashCode);
    _$hash = $jc(_$hash, returnItemCollectionMetrics.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class BatchWriteItemInputBuilder
    implements Builder<BatchWriteItemInput, BatchWriteItemInputBuilder> {
  _$BatchWriteItemInput? _$v;

  _i3.ListMultimapBuilder<String, WriteRequest>? _requestItems;
  _i3.ListMultimapBuilder<String, WriteRequest> get requestItems =>
      _$this._requestItems ??=
          new _i3.ListMultimapBuilder<String, WriteRequest>();
  set requestItems(
          _i3.ListMultimapBuilder<String, WriteRequest>? requestItems) =>
      _$this._requestItems = requestItems;

  ReturnConsumedCapacity? _returnConsumedCapacity;
  ReturnConsumedCapacity? get returnConsumedCapacity =>
      _$this._returnConsumedCapacity;
  set returnConsumedCapacity(ReturnConsumedCapacity? returnConsumedCapacity) =>
      _$this._returnConsumedCapacity = returnConsumedCapacity;

  ReturnItemCollectionMetrics? _returnItemCollectionMetrics;
  ReturnItemCollectionMetrics? get returnItemCollectionMetrics =>
      _$this._returnItemCollectionMetrics;
  set returnItemCollectionMetrics(
          ReturnItemCollectionMetrics? returnItemCollectionMetrics) =>
      _$this._returnItemCollectionMetrics = returnItemCollectionMetrics;

  BatchWriteItemInputBuilder();

  BatchWriteItemInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _requestItems = $v.requestItems.toBuilder();
      _returnConsumedCapacity = $v.returnConsumedCapacity;
      _returnItemCollectionMetrics = $v.returnItemCollectionMetrics;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BatchWriteItemInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BatchWriteItemInput;
  }

  @override
  void update(void Function(BatchWriteItemInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BatchWriteItemInput build() => _build();

  _$BatchWriteItemInput _build() {
    _$BatchWriteItemInput _$result;
    try {
      _$result = _$v ??
          new _$BatchWriteItemInput._(
              requestItems: requestItems.build(),
              returnConsumedCapacity: returnConsumedCapacity,
              returnItemCollectionMetrics: returnItemCollectionMetrics);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'requestItems';
        requestItems.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BatchWriteItemInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.transact_write_items_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransactWriteItemsOutput extends TransactWriteItemsOutput {
  @override
  final _i4.BuiltList<_i2.ConsumedCapacity>? consumedCapacity;
  @override
  final _i4.BuiltListMultimap<String, _i3.ItemCollectionMetrics>?
      itemCollectionMetrics;

  factory _$TransactWriteItemsOutput(
          [void Function(TransactWriteItemsOutputBuilder)? updates]) =>
      (new TransactWriteItemsOutputBuilder()..update(updates))._build();

  _$TransactWriteItemsOutput._(
      {this.consumedCapacity, this.itemCollectionMetrics})
      : super._();

  @override
  TransactWriteItemsOutput rebuild(
          void Function(TransactWriteItemsOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransactWriteItemsOutputBuilder toBuilder() =>
      new TransactWriteItemsOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransactWriteItemsOutput &&
        consumedCapacity == other.consumedCapacity &&
        itemCollectionMetrics == other.itemCollectionMetrics;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc(0, consumedCapacity.hashCode), itemCollectionMetrics.hashCode));
  }
}

class TransactWriteItemsOutputBuilder
    implements
        Builder<TransactWriteItemsOutput, TransactWriteItemsOutputBuilder> {
  _$TransactWriteItemsOutput? _$v;

  _i4.ListBuilder<_i2.ConsumedCapacity>? _consumedCapacity;
  _i4.ListBuilder<_i2.ConsumedCapacity> get consumedCapacity =>
      _$this._consumedCapacity ??= new _i4.ListBuilder<_i2.ConsumedCapacity>();
  set consumedCapacity(
          _i4.ListBuilder<_i2.ConsumedCapacity>? consumedCapacity) =>
      _$this._consumedCapacity = consumedCapacity;

  _i4.ListMultimapBuilder<String, _i3.ItemCollectionMetrics>?
      _itemCollectionMetrics;
  _i4.ListMultimapBuilder<String, _i3.ItemCollectionMetrics>
      get itemCollectionMetrics => _$this._itemCollectionMetrics ??=
          new _i4.ListMultimapBuilder<String, _i3.ItemCollectionMetrics>();
  set itemCollectionMetrics(
          _i4.ListMultimapBuilder<String, _i3.ItemCollectionMetrics>?
              itemCollectionMetrics) =>
      _$this._itemCollectionMetrics = itemCollectionMetrics;

  TransactWriteItemsOutputBuilder() {
    TransactWriteItemsOutput._init(this);
  }

  TransactWriteItemsOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _consumedCapacity = $v.consumedCapacity?.toBuilder();
      _itemCollectionMetrics = $v.itemCollectionMetrics?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransactWriteItemsOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransactWriteItemsOutput;
  }

  @override
  void update(void Function(TransactWriteItemsOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransactWriteItemsOutput build() => _build();

  _$TransactWriteItemsOutput _build() {
    _$TransactWriteItemsOutput _$result;
    try {
      _$result = _$v ??
          new _$TransactWriteItemsOutput._(
              consumedCapacity: _consumedCapacity?.build(),
              itemCollectionMetrics: _itemCollectionMetrics?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'consumedCapacity';
        _consumedCapacity?.build();
        _$failedField = 'itemCollectionMetrics';
        _itemCollectionMetrics?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TransactWriteItemsOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

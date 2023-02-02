// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.transact_get_item;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransactGetItem extends TransactGetItem {
  @override
  final _i2.Get get;

  factory _$TransactGetItem([void Function(TransactGetItemBuilder)? updates]) =>
      (new TransactGetItemBuilder()..update(updates))._build();

  _$TransactGetItem._({required this.get}) : super._() {
    BuiltValueNullFieldError.checkNotNull(get, r'TransactGetItem', 'get');
  }

  @override
  TransactGetItem rebuild(void Function(TransactGetItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransactGetItemBuilder toBuilder() =>
      new TransactGetItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransactGetItem && get == other.get;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, get.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TransactGetItemBuilder
    implements Builder<TransactGetItem, TransactGetItemBuilder> {
  _$TransactGetItem? _$v;

  _i2.GetBuilder? _get;
  _i2.GetBuilder get get => _$this._get ??= new _i2.GetBuilder();
  set get(_i2.GetBuilder? get) => _$this._get = get;

  TransactGetItemBuilder() {
    TransactGetItem._init(this);
  }

  TransactGetItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _get = $v.get.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransactGetItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransactGetItem;
  }

  @override
  void update(void Function(TransactGetItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransactGetItem build() => _build();

  _$TransactGetItem _build() {
    _$TransactGetItem _$result;
    try {
      _$result = _$v ?? new _$TransactGetItem._(get: get.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'get';
        get.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TransactGetItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

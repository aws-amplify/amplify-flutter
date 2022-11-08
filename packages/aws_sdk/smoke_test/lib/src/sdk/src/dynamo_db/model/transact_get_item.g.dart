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
    return $jf($jc(0, get.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

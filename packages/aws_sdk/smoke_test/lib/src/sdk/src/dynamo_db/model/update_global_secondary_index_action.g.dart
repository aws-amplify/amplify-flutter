// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_global_secondary_index_action.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateGlobalSecondaryIndexAction
    extends UpdateGlobalSecondaryIndexAction {
  @override
  final String indexName;
  @override
  final _i2.ProvisionedThroughput provisionedThroughput;

  factory _$UpdateGlobalSecondaryIndexAction(
          [void Function(UpdateGlobalSecondaryIndexActionBuilder)? updates]) =>
      (new UpdateGlobalSecondaryIndexActionBuilder()..update(updates))._build();

  _$UpdateGlobalSecondaryIndexAction._(
      {required this.indexName, required this.provisionedThroughput})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        indexName, r'UpdateGlobalSecondaryIndexAction', 'indexName');
    BuiltValueNullFieldError.checkNotNull(provisionedThroughput,
        r'UpdateGlobalSecondaryIndexAction', 'provisionedThroughput');
  }

  @override
  UpdateGlobalSecondaryIndexAction rebuild(
          void Function(UpdateGlobalSecondaryIndexActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateGlobalSecondaryIndexActionBuilder toBuilder() =>
      new UpdateGlobalSecondaryIndexActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateGlobalSecondaryIndexAction &&
        indexName == other.indexName &&
        provisionedThroughput == other.provisionedThroughput;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, indexName.hashCode);
    _$hash = $jc(_$hash, provisionedThroughput.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UpdateGlobalSecondaryIndexActionBuilder
    implements
        Builder<UpdateGlobalSecondaryIndexAction,
            UpdateGlobalSecondaryIndexActionBuilder> {
  _$UpdateGlobalSecondaryIndexAction? _$v;

  String? _indexName;
  String? get indexName => _$this._indexName;
  set indexName(String? indexName) => _$this._indexName = indexName;

  _i2.ProvisionedThroughputBuilder? _provisionedThroughput;
  _i2.ProvisionedThroughputBuilder get provisionedThroughput =>
      _$this._provisionedThroughput ??= new _i2.ProvisionedThroughputBuilder();
  set provisionedThroughput(
          _i2.ProvisionedThroughputBuilder? provisionedThroughput) =>
      _$this._provisionedThroughput = provisionedThroughput;

  UpdateGlobalSecondaryIndexActionBuilder() {
    UpdateGlobalSecondaryIndexAction._init(this);
  }

  UpdateGlobalSecondaryIndexActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _indexName = $v.indexName;
      _provisionedThroughput = $v.provisionedThroughput.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateGlobalSecondaryIndexAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateGlobalSecondaryIndexAction;
  }

  @override
  void update(void Function(UpdateGlobalSecondaryIndexActionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateGlobalSecondaryIndexAction build() => _build();

  _$UpdateGlobalSecondaryIndexAction _build() {
    _$UpdateGlobalSecondaryIndexAction _$result;
    try {
      _$result = _$v ??
          new _$UpdateGlobalSecondaryIndexAction._(
              indexName: BuiltValueNullFieldError.checkNotNull(
                  indexName, r'UpdateGlobalSecondaryIndexAction', 'indexName'),
              provisionedThroughput: provisionedThroughput.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'provisionedThroughput';
        provisionedThroughput.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateGlobalSecondaryIndexAction', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

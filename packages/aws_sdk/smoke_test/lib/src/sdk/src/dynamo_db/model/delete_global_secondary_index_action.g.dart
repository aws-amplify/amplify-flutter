// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.delete_global_secondary_index_action;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteGlobalSecondaryIndexAction
    extends DeleteGlobalSecondaryIndexAction {
  @override
  final String indexName;

  factory _$DeleteGlobalSecondaryIndexAction(
          [void Function(DeleteGlobalSecondaryIndexActionBuilder)? updates]) =>
      (new DeleteGlobalSecondaryIndexActionBuilder()..update(updates))._build();

  _$DeleteGlobalSecondaryIndexAction._({required this.indexName}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        indexName, r'DeleteGlobalSecondaryIndexAction', 'indexName');
  }

  @override
  DeleteGlobalSecondaryIndexAction rebuild(
          void Function(DeleteGlobalSecondaryIndexActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteGlobalSecondaryIndexActionBuilder toBuilder() =>
      new DeleteGlobalSecondaryIndexActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteGlobalSecondaryIndexAction &&
        indexName == other.indexName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, indexName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteGlobalSecondaryIndexActionBuilder
    implements
        Builder<DeleteGlobalSecondaryIndexAction,
            DeleteGlobalSecondaryIndexActionBuilder> {
  _$DeleteGlobalSecondaryIndexAction? _$v;

  String? _indexName;
  String? get indexName => _$this._indexName;
  set indexName(String? indexName) => _$this._indexName = indexName;

  DeleteGlobalSecondaryIndexActionBuilder() {
    DeleteGlobalSecondaryIndexAction._init(this);
  }

  DeleteGlobalSecondaryIndexActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _indexName = $v.indexName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteGlobalSecondaryIndexAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteGlobalSecondaryIndexAction;
  }

  @override
  void update(void Function(DeleteGlobalSecondaryIndexActionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteGlobalSecondaryIndexAction build() => _build();

  _$DeleteGlobalSecondaryIndexAction _build() {
    final _$result = _$v ??
        new _$DeleteGlobalSecondaryIndexAction._(
            indexName: BuiltValueNullFieldError.checkNotNull(
                indexName, r'DeleteGlobalSecondaryIndexAction', 'indexName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.stored_query_metadata;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StoredQueryMetadata extends StoredQueryMetadata {
  @override
  final String queryId;
  @override
  final String queryArn;
  @override
  final String queryName;
  @override
  final String? description;

  factory _$StoredQueryMetadata(
          [void Function(StoredQueryMetadataBuilder)? updates]) =>
      (new StoredQueryMetadataBuilder()..update(updates))._build();

  _$StoredQueryMetadata._(
      {required this.queryId,
      required this.queryArn,
      required this.queryName,
      this.description})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        queryId, r'StoredQueryMetadata', 'queryId');
    BuiltValueNullFieldError.checkNotNull(
        queryArn, r'StoredQueryMetadata', 'queryArn');
    BuiltValueNullFieldError.checkNotNull(
        queryName, r'StoredQueryMetadata', 'queryName');
  }

  @override
  StoredQueryMetadata rebuild(
          void Function(StoredQueryMetadataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StoredQueryMetadataBuilder toBuilder() =>
      new StoredQueryMetadataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StoredQueryMetadata &&
        queryId == other.queryId &&
        queryArn == other.queryArn &&
        queryName == other.queryName &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, queryId.hashCode);
    _$hash = $jc(_$hash, queryArn.hashCode);
    _$hash = $jc(_$hash, queryName.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class StoredQueryMetadataBuilder
    implements Builder<StoredQueryMetadata, StoredQueryMetadataBuilder> {
  _$StoredQueryMetadata? _$v;

  String? _queryId;
  String? get queryId => _$this._queryId;
  set queryId(String? queryId) => _$this._queryId = queryId;

  String? _queryArn;
  String? get queryArn => _$this._queryArn;
  set queryArn(String? queryArn) => _$this._queryArn = queryArn;

  String? _queryName;
  String? get queryName => _$this._queryName;
  set queryName(String? queryName) => _$this._queryName = queryName;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  StoredQueryMetadataBuilder() {
    StoredQueryMetadata._init(this);
  }

  StoredQueryMetadataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _queryId = $v.queryId;
      _queryArn = $v.queryArn;
      _queryName = $v.queryName;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StoredQueryMetadata other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StoredQueryMetadata;
  }

  @override
  void update(void Function(StoredQueryMetadataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StoredQueryMetadata build() => _build();

  _$StoredQueryMetadata _build() {
    final _$result = _$v ??
        new _$StoredQueryMetadata._(
            queryId: BuiltValueNullFieldError.checkNotNull(
                queryId, r'StoredQueryMetadata', 'queryId'),
            queryArn: BuiltValueNullFieldError.checkNotNull(
                queryArn, r'StoredQueryMetadata', 'queryArn'),
            queryName: BuiltValueNullFieldError.checkNotNull(
                queryName, r'StoredQueryMetadata', 'queryName'),
            description: description);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

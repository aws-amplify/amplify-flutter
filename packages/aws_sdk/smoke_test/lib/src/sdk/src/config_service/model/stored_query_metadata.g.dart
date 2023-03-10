// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.stored_query_metadata;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StoredQueryMetadata extends StoredQueryMetadata {
  @override
  final String? description;
  @override
  final String queryArn;
  @override
  final String queryId;
  @override
  final String queryName;

  factory _$StoredQueryMetadata(
          [void Function(StoredQueryMetadataBuilder)? updates]) =>
      (new StoredQueryMetadataBuilder()..update(updates))._build();

  _$StoredQueryMetadata._(
      {this.description,
      required this.queryArn,
      required this.queryId,
      required this.queryName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        queryArn, r'StoredQueryMetadata', 'queryArn');
    BuiltValueNullFieldError.checkNotNull(
        queryId, r'StoredQueryMetadata', 'queryId');
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
        description == other.description &&
        queryArn == other.queryArn &&
        queryId == other.queryId &&
        queryName == other.queryName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, queryArn.hashCode);
    _$hash = $jc(_$hash, queryId.hashCode);
    _$hash = $jc(_$hash, queryName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class StoredQueryMetadataBuilder
    implements Builder<StoredQueryMetadata, StoredQueryMetadataBuilder> {
  _$StoredQueryMetadata? _$v;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _queryArn;
  String? get queryArn => _$this._queryArn;
  set queryArn(String? queryArn) => _$this._queryArn = queryArn;

  String? _queryId;
  String? get queryId => _$this._queryId;
  set queryId(String? queryId) => _$this._queryId = queryId;

  String? _queryName;
  String? get queryName => _$this._queryName;
  set queryName(String? queryName) => _$this._queryName = queryName;

  StoredQueryMetadataBuilder() {
    StoredQueryMetadata._init(this);
  }

  StoredQueryMetadataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _queryArn = $v.queryArn;
      _queryId = $v.queryId;
      _queryName = $v.queryName;
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
            description: description,
            queryArn: BuiltValueNullFieldError.checkNotNull(
                queryArn, r'StoredQueryMetadata', 'queryArn'),
            queryId: BuiltValueNullFieldError.checkNotNull(
                queryId, r'StoredQueryMetadata', 'queryId'),
            queryName: BuiltValueNullFieldError.checkNotNull(
                queryName, r'StoredQueryMetadata', 'queryName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

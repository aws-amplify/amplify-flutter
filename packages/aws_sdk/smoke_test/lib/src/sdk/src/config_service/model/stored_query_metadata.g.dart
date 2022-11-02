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
    return $jf($jc(
        $jc($jc($jc(0, description.hashCode), queryArn.hashCode),
            queryId.hashCode),
        queryName.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

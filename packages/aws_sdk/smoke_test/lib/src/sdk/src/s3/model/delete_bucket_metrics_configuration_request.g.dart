// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.delete_bucket_metrics_configuration_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteBucketMetricsConfigurationRequest
    extends DeleteBucketMetricsConfigurationRequest {
  @override
  final String bucket;
  @override
  final String? expectedBucketOwner;
  @override
  final String id;

  factory _$DeleteBucketMetricsConfigurationRequest(
          [void Function(DeleteBucketMetricsConfigurationRequestBuilder)?
              updates]) =>
      (new DeleteBucketMetricsConfigurationRequestBuilder()..update(updates))
          ._build();

  _$DeleteBucketMetricsConfigurationRequest._(
      {required this.bucket, this.expectedBucketOwner, required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'DeleteBucketMetricsConfigurationRequest', 'bucket');
    BuiltValueNullFieldError.checkNotNull(
        id, r'DeleteBucketMetricsConfigurationRequest', 'id');
  }

  @override
  DeleteBucketMetricsConfigurationRequest rebuild(
          void Function(DeleteBucketMetricsConfigurationRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteBucketMetricsConfigurationRequestBuilder toBuilder() =>
      new DeleteBucketMetricsConfigurationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteBucketMetricsConfigurationRequest &&
        bucket == other.bucket &&
        expectedBucketOwner == other.expectedBucketOwner &&
        id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, bucket.hashCode), expectedBucketOwner.hashCode),
        id.hashCode));
  }
}

class DeleteBucketMetricsConfigurationRequestBuilder
    implements
        Builder<DeleteBucketMetricsConfigurationRequest,
            DeleteBucketMetricsConfigurationRequestBuilder> {
  _$DeleteBucketMetricsConfigurationRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  DeleteBucketMetricsConfigurationRequestBuilder() {
    DeleteBucketMetricsConfigurationRequest._init(this);
  }

  DeleteBucketMetricsConfigurationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteBucketMetricsConfigurationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteBucketMetricsConfigurationRequest;
  }

  @override
  void update(
      void Function(DeleteBucketMetricsConfigurationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteBucketMetricsConfigurationRequest build() => _build();

  _$DeleteBucketMetricsConfigurationRequest _build() {
    final _$result = _$v ??
        new _$DeleteBucketMetricsConfigurationRequest._(
            bucket: BuiltValueNullFieldError.checkNotNull(
                bucket, r'DeleteBucketMetricsConfigurationRequest', 'bucket'),
            expectedBucketOwner: expectedBucketOwner,
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'DeleteBucketMetricsConfigurationRequest', 'id'));
    replace(_$result);
    return _$result;
  }
}

class _$DeleteBucketMetricsConfigurationRequestPayload
    extends DeleteBucketMetricsConfigurationRequestPayload {
  factory _$DeleteBucketMetricsConfigurationRequestPayload(
          [void Function(DeleteBucketMetricsConfigurationRequestPayloadBuilder)?
              updates]) =>
      (new DeleteBucketMetricsConfigurationRequestPayloadBuilder()
            ..update(updates))
          ._build();

  _$DeleteBucketMetricsConfigurationRequestPayload._() : super._();

  @override
  DeleteBucketMetricsConfigurationRequestPayload rebuild(
          void Function(DeleteBucketMetricsConfigurationRequestPayloadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteBucketMetricsConfigurationRequestPayloadBuilder toBuilder() =>
      new DeleteBucketMetricsConfigurationRequestPayloadBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteBucketMetricsConfigurationRequestPayload;
  }

  @override
  int get hashCode {
    return 284154980;
  }
}

class DeleteBucketMetricsConfigurationRequestPayloadBuilder
    implements
        Builder<DeleteBucketMetricsConfigurationRequestPayload,
            DeleteBucketMetricsConfigurationRequestPayloadBuilder> {
  _$DeleteBucketMetricsConfigurationRequestPayload? _$v;

  DeleteBucketMetricsConfigurationRequestPayloadBuilder() {
    DeleteBucketMetricsConfigurationRequestPayload._init(this);
  }

  @override
  void replace(DeleteBucketMetricsConfigurationRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteBucketMetricsConfigurationRequestPayload;
  }

  @override
  void update(
      void Function(DeleteBucketMetricsConfigurationRequestPayloadBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteBucketMetricsConfigurationRequestPayload build() => _build();

  _$DeleteBucketMetricsConfigurationRequestPayload _build() {
    final _$result =
        _$v ?? new _$DeleteBucketMetricsConfigurationRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

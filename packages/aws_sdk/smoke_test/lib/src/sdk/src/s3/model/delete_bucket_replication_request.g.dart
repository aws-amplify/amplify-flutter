// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.delete_bucket_replication_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteBucketReplicationRequest extends DeleteBucketReplicationRequest {
  @override
  final String bucket;
  @override
  final String? expectedBucketOwner;

  factory _$DeleteBucketReplicationRequest(
          [void Function(DeleteBucketReplicationRequestBuilder)? updates]) =>
      (new DeleteBucketReplicationRequestBuilder()..update(updates))._build();

  _$DeleteBucketReplicationRequest._(
      {required this.bucket, this.expectedBucketOwner})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'DeleteBucketReplicationRequest', 'bucket');
  }

  @override
  DeleteBucketReplicationRequest rebuild(
          void Function(DeleteBucketReplicationRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteBucketReplicationRequestBuilder toBuilder() =>
      new DeleteBucketReplicationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteBucketReplicationRequest &&
        bucket == other.bucket &&
        expectedBucketOwner == other.expectedBucketOwner;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, bucket.hashCode), expectedBucketOwner.hashCode));
  }
}

class DeleteBucketReplicationRequestBuilder
    implements
        Builder<DeleteBucketReplicationRequest,
            DeleteBucketReplicationRequestBuilder> {
  _$DeleteBucketReplicationRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  DeleteBucketReplicationRequestBuilder() {
    DeleteBucketReplicationRequest._init(this);
  }

  DeleteBucketReplicationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteBucketReplicationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteBucketReplicationRequest;
  }

  @override
  void update(void Function(DeleteBucketReplicationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteBucketReplicationRequest build() => _build();

  _$DeleteBucketReplicationRequest _build() {
    final _$result = _$v ??
        new _$DeleteBucketReplicationRequest._(
            bucket: BuiltValueNullFieldError.checkNotNull(
                bucket, r'DeleteBucketReplicationRequest', 'bucket'),
            expectedBucketOwner: expectedBucketOwner);
    replace(_$result);
    return _$result;
  }
}

class _$DeleteBucketReplicationRequestPayload
    extends DeleteBucketReplicationRequestPayload {
  factory _$DeleteBucketReplicationRequestPayload(
          [void Function(DeleteBucketReplicationRequestPayloadBuilder)?
              updates]) =>
      (new DeleteBucketReplicationRequestPayloadBuilder()..update(updates))
          ._build();

  _$DeleteBucketReplicationRequestPayload._() : super._();

  @override
  DeleteBucketReplicationRequestPayload rebuild(
          void Function(DeleteBucketReplicationRequestPayloadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteBucketReplicationRequestPayloadBuilder toBuilder() =>
      new DeleteBucketReplicationRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteBucketReplicationRequestPayload;
  }

  @override
  int get hashCode {
    return 92642088;
  }
}

class DeleteBucketReplicationRequestPayloadBuilder
    implements
        Builder<DeleteBucketReplicationRequestPayload,
            DeleteBucketReplicationRequestPayloadBuilder> {
  _$DeleteBucketReplicationRequestPayload? _$v;

  DeleteBucketReplicationRequestPayloadBuilder() {
    DeleteBucketReplicationRequestPayload._init(this);
  }

  @override
  void replace(DeleteBucketReplicationRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteBucketReplicationRequestPayload;
  }

  @override
  void update(
      void Function(DeleteBucketReplicationRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteBucketReplicationRequestPayload build() => _build();

  _$DeleteBucketReplicationRequestPayload _build() {
    final _$result = _$v ?? new _$DeleteBucketReplicationRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

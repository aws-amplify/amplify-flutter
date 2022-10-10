// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.delete_bucket_lifecycle_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteBucketLifecycleRequest extends DeleteBucketLifecycleRequest {
  @override
  final String bucket;
  @override
  final String? expectedBucketOwner;

  factory _$DeleteBucketLifecycleRequest(
          [void Function(DeleteBucketLifecycleRequestBuilder)? updates]) =>
      (new DeleteBucketLifecycleRequestBuilder()..update(updates))._build();

  _$DeleteBucketLifecycleRequest._(
      {required this.bucket, this.expectedBucketOwner})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'DeleteBucketLifecycleRequest', 'bucket');
  }

  @override
  DeleteBucketLifecycleRequest rebuild(
          void Function(DeleteBucketLifecycleRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteBucketLifecycleRequestBuilder toBuilder() =>
      new DeleteBucketLifecycleRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteBucketLifecycleRequest &&
        bucket == other.bucket &&
        expectedBucketOwner == other.expectedBucketOwner;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, bucket.hashCode), expectedBucketOwner.hashCode));
  }
}

class DeleteBucketLifecycleRequestBuilder
    implements
        Builder<DeleteBucketLifecycleRequest,
            DeleteBucketLifecycleRequestBuilder> {
  _$DeleteBucketLifecycleRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  DeleteBucketLifecycleRequestBuilder() {
    DeleteBucketLifecycleRequest._init(this);
  }

  DeleteBucketLifecycleRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteBucketLifecycleRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteBucketLifecycleRequest;
  }

  @override
  void update(void Function(DeleteBucketLifecycleRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteBucketLifecycleRequest build() => _build();

  _$DeleteBucketLifecycleRequest _build() {
    final _$result = _$v ??
        new _$DeleteBucketLifecycleRequest._(
            bucket: BuiltValueNullFieldError.checkNotNull(
                bucket, r'DeleteBucketLifecycleRequest', 'bucket'),
            expectedBucketOwner: expectedBucketOwner);
    replace(_$result);
    return _$result;
  }
}

class _$DeleteBucketLifecycleRequestPayload
    extends DeleteBucketLifecycleRequestPayload {
  factory _$DeleteBucketLifecycleRequestPayload(
          [void Function(DeleteBucketLifecycleRequestPayloadBuilder)?
              updates]) =>
      (new DeleteBucketLifecycleRequestPayloadBuilder()..update(updates))
          ._build();

  _$DeleteBucketLifecycleRequestPayload._() : super._();

  @override
  DeleteBucketLifecycleRequestPayload rebuild(
          void Function(DeleteBucketLifecycleRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteBucketLifecycleRequestPayloadBuilder toBuilder() =>
      new DeleteBucketLifecycleRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteBucketLifecycleRequestPayload;
  }

  @override
  int get hashCode {
    return 547538049;
  }
}

class DeleteBucketLifecycleRequestPayloadBuilder
    implements
        Builder<DeleteBucketLifecycleRequestPayload,
            DeleteBucketLifecycleRequestPayloadBuilder> {
  _$DeleteBucketLifecycleRequestPayload? _$v;

  DeleteBucketLifecycleRequestPayloadBuilder() {
    DeleteBucketLifecycleRequestPayload._init(this);
  }

  @override
  void replace(DeleteBucketLifecycleRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteBucketLifecycleRequestPayload;
  }

  @override
  void update(
      void Function(DeleteBucketLifecycleRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteBucketLifecycleRequestPayload build() => _build();

  _$DeleteBucketLifecycleRequestPayload _build() {
    final _$result = _$v ?? new _$DeleteBucketLifecycleRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

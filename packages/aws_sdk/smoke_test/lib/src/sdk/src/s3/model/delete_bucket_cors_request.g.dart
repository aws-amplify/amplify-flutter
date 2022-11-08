// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.delete_bucket_cors_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteBucketCorsRequest extends DeleteBucketCorsRequest {
  @override
  final String bucket;
  @override
  final String? expectedBucketOwner;

  factory _$DeleteBucketCorsRequest(
          [void Function(DeleteBucketCorsRequestBuilder)? updates]) =>
      (new DeleteBucketCorsRequestBuilder()..update(updates))._build();

  _$DeleteBucketCorsRequest._({required this.bucket, this.expectedBucketOwner})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'DeleteBucketCorsRequest', 'bucket');
  }

  @override
  DeleteBucketCorsRequest rebuild(
          void Function(DeleteBucketCorsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteBucketCorsRequestBuilder toBuilder() =>
      new DeleteBucketCorsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteBucketCorsRequest &&
        bucket == other.bucket &&
        expectedBucketOwner == other.expectedBucketOwner;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, bucket.hashCode), expectedBucketOwner.hashCode));
  }
}

class DeleteBucketCorsRequestBuilder
    implements
        Builder<DeleteBucketCorsRequest, DeleteBucketCorsRequestBuilder> {
  _$DeleteBucketCorsRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  DeleteBucketCorsRequestBuilder() {
    DeleteBucketCorsRequest._init(this);
  }

  DeleteBucketCorsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteBucketCorsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteBucketCorsRequest;
  }

  @override
  void update(void Function(DeleteBucketCorsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteBucketCorsRequest build() => _build();

  _$DeleteBucketCorsRequest _build() {
    final _$result = _$v ??
        new _$DeleteBucketCorsRequest._(
            bucket: BuiltValueNullFieldError.checkNotNull(
                bucket, r'DeleteBucketCorsRequest', 'bucket'),
            expectedBucketOwner: expectedBucketOwner);
    replace(_$result);
    return _$result;
  }
}

class _$DeleteBucketCorsRequestPayload extends DeleteBucketCorsRequestPayload {
  factory _$DeleteBucketCorsRequestPayload(
          [void Function(DeleteBucketCorsRequestPayloadBuilder)? updates]) =>
      (new DeleteBucketCorsRequestPayloadBuilder()..update(updates))._build();

  _$DeleteBucketCorsRequestPayload._() : super._();

  @override
  DeleteBucketCorsRequestPayload rebuild(
          void Function(DeleteBucketCorsRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteBucketCorsRequestPayloadBuilder toBuilder() =>
      new DeleteBucketCorsRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteBucketCorsRequestPayload;
  }

  @override
  int get hashCode {
    return 95859977;
  }
}

class DeleteBucketCorsRequestPayloadBuilder
    implements
        Builder<DeleteBucketCorsRequestPayload,
            DeleteBucketCorsRequestPayloadBuilder> {
  _$DeleteBucketCorsRequestPayload? _$v;

  DeleteBucketCorsRequestPayloadBuilder() {
    DeleteBucketCorsRequestPayload._init(this);
  }

  @override
  void replace(DeleteBucketCorsRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteBucketCorsRequestPayload;
  }

  @override
  void update(void Function(DeleteBucketCorsRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteBucketCorsRequestPayload build() => _build();

  _$DeleteBucketCorsRequestPayload _build() {
    final _$result = _$v ?? new _$DeleteBucketCorsRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

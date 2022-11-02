// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.delete_bucket_website_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteBucketWebsiteRequest extends DeleteBucketWebsiteRequest {
  @override
  final String bucket;
  @override
  final String? expectedBucketOwner;

  factory _$DeleteBucketWebsiteRequest(
          [void Function(DeleteBucketWebsiteRequestBuilder)? updates]) =>
      (new DeleteBucketWebsiteRequestBuilder()..update(updates))._build();

  _$DeleteBucketWebsiteRequest._(
      {required this.bucket, this.expectedBucketOwner})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'DeleteBucketWebsiteRequest', 'bucket');
  }

  @override
  DeleteBucketWebsiteRequest rebuild(
          void Function(DeleteBucketWebsiteRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteBucketWebsiteRequestBuilder toBuilder() =>
      new DeleteBucketWebsiteRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteBucketWebsiteRequest &&
        bucket == other.bucket &&
        expectedBucketOwner == other.expectedBucketOwner;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, bucket.hashCode), expectedBucketOwner.hashCode));
  }
}

class DeleteBucketWebsiteRequestBuilder
    implements
        Builder<DeleteBucketWebsiteRequest, DeleteBucketWebsiteRequestBuilder> {
  _$DeleteBucketWebsiteRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  DeleteBucketWebsiteRequestBuilder() {
    DeleteBucketWebsiteRequest._init(this);
  }

  DeleteBucketWebsiteRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteBucketWebsiteRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteBucketWebsiteRequest;
  }

  @override
  void update(void Function(DeleteBucketWebsiteRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteBucketWebsiteRequest build() => _build();

  _$DeleteBucketWebsiteRequest _build() {
    final _$result = _$v ??
        new _$DeleteBucketWebsiteRequest._(
            bucket: BuiltValueNullFieldError.checkNotNull(
                bucket, r'DeleteBucketWebsiteRequest', 'bucket'),
            expectedBucketOwner: expectedBucketOwner);
    replace(_$result);
    return _$result;
  }
}

class _$DeleteBucketWebsiteRequestPayload
    extends DeleteBucketWebsiteRequestPayload {
  factory _$DeleteBucketWebsiteRequestPayload(
          [void Function(DeleteBucketWebsiteRequestPayloadBuilder)? updates]) =>
      (new DeleteBucketWebsiteRequestPayloadBuilder()..update(updates))
          ._build();

  _$DeleteBucketWebsiteRequestPayload._() : super._();

  @override
  DeleteBucketWebsiteRequestPayload rebuild(
          void Function(DeleteBucketWebsiteRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteBucketWebsiteRequestPayloadBuilder toBuilder() =>
      new DeleteBucketWebsiteRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteBucketWebsiteRequestPayload;
  }

  @override
  int get hashCode {
    return 906636542;
  }
}

class DeleteBucketWebsiteRequestPayloadBuilder
    implements
        Builder<DeleteBucketWebsiteRequestPayload,
            DeleteBucketWebsiteRequestPayloadBuilder> {
  _$DeleteBucketWebsiteRequestPayload? _$v;

  DeleteBucketWebsiteRequestPayloadBuilder() {
    DeleteBucketWebsiteRequestPayload._init(this);
  }

  @override
  void replace(DeleteBucketWebsiteRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteBucketWebsiteRequestPayload;
  }

  @override
  void update(
      void Function(DeleteBucketWebsiteRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteBucketWebsiteRequestPayload build() => _build();

  _$DeleteBucketWebsiteRequestPayload _build() {
    final _$result = _$v ?? new _$DeleteBucketWebsiteRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

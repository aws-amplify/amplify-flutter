// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.abort_multipart_upload_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AbortMultipartUploadRequest extends AbortMultipartUploadRequest {
  @override
  final String bucket;
  @override
  final String? expectedBucketOwner;
  @override
  final String key;
  @override
  final _i3.RequestPayer? requestPayer;
  @override
  final String uploadId;

  factory _$AbortMultipartUploadRequest(
          [void Function(AbortMultipartUploadRequestBuilder)? updates]) =>
      (new AbortMultipartUploadRequestBuilder()..update(updates))._build();

  _$AbortMultipartUploadRequest._(
      {required this.bucket,
      this.expectedBucketOwner,
      required this.key,
      this.requestPayer,
      required this.uploadId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'AbortMultipartUploadRequest', 'bucket');
    BuiltValueNullFieldError.checkNotNull(
        key, r'AbortMultipartUploadRequest', 'key');
    BuiltValueNullFieldError.checkNotNull(
        uploadId, r'AbortMultipartUploadRequest', 'uploadId');
  }

  @override
  AbortMultipartUploadRequest rebuild(
          void Function(AbortMultipartUploadRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AbortMultipartUploadRequestBuilder toBuilder() =>
      new AbortMultipartUploadRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AbortMultipartUploadRequest &&
        bucket == other.bucket &&
        expectedBucketOwner == other.expectedBucketOwner &&
        key == other.key &&
        requestPayer == other.requestPayer &&
        uploadId == other.uploadId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, bucket.hashCode), expectedBucketOwner.hashCode),
                key.hashCode),
            requestPayer.hashCode),
        uploadId.hashCode));
  }
}

class AbortMultipartUploadRequestBuilder
    implements
        Builder<AbortMultipartUploadRequest,
            AbortMultipartUploadRequestBuilder> {
  _$AbortMultipartUploadRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  _i3.RequestPayer? _requestPayer;
  _i3.RequestPayer? get requestPayer => _$this._requestPayer;
  set requestPayer(_i3.RequestPayer? requestPayer) =>
      _$this._requestPayer = requestPayer;

  String? _uploadId;
  String? get uploadId => _$this._uploadId;
  set uploadId(String? uploadId) => _$this._uploadId = uploadId;

  AbortMultipartUploadRequestBuilder() {
    AbortMultipartUploadRequest._init(this);
  }

  AbortMultipartUploadRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _key = $v.key;
      _requestPayer = $v.requestPayer;
      _uploadId = $v.uploadId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AbortMultipartUploadRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AbortMultipartUploadRequest;
  }

  @override
  void update(void Function(AbortMultipartUploadRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AbortMultipartUploadRequest build() => _build();

  _$AbortMultipartUploadRequest _build() {
    final _$result = _$v ??
        new _$AbortMultipartUploadRequest._(
            bucket: BuiltValueNullFieldError.checkNotNull(
                bucket, r'AbortMultipartUploadRequest', 'bucket'),
            expectedBucketOwner: expectedBucketOwner,
            key: BuiltValueNullFieldError.checkNotNull(
                key, r'AbortMultipartUploadRequest', 'key'),
            requestPayer: requestPayer,
            uploadId: BuiltValueNullFieldError.checkNotNull(
                uploadId, r'AbortMultipartUploadRequest', 'uploadId'));
    replace(_$result);
    return _$result;
  }
}

class _$AbortMultipartUploadRequestPayload
    extends AbortMultipartUploadRequestPayload {
  factory _$AbortMultipartUploadRequestPayload(
          [void Function(AbortMultipartUploadRequestPayloadBuilder)?
              updates]) =>
      (new AbortMultipartUploadRequestPayloadBuilder()..update(updates))
          ._build();

  _$AbortMultipartUploadRequestPayload._() : super._();

  @override
  AbortMultipartUploadRequestPayload rebuild(
          void Function(AbortMultipartUploadRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AbortMultipartUploadRequestPayloadBuilder toBuilder() =>
      new AbortMultipartUploadRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AbortMultipartUploadRequestPayload;
  }

  @override
  int get hashCode {
    return 260264418;
  }
}

class AbortMultipartUploadRequestPayloadBuilder
    implements
        Builder<AbortMultipartUploadRequestPayload,
            AbortMultipartUploadRequestPayloadBuilder> {
  _$AbortMultipartUploadRequestPayload? _$v;

  AbortMultipartUploadRequestPayloadBuilder() {
    AbortMultipartUploadRequestPayload._init(this);
  }

  @override
  void replace(AbortMultipartUploadRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AbortMultipartUploadRequestPayload;
  }

  @override
  void update(
      void Function(AbortMultipartUploadRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AbortMultipartUploadRequestPayload build() => _build();

  _$AbortMultipartUploadRequestPayload _build() {
    final _$result = _$v ?? new _$AbortMultipartUploadRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

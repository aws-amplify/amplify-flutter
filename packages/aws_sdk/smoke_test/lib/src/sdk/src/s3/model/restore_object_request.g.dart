// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.restore_object_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RestoreObjectRequest extends RestoreObjectRequest {
  @override
  final String bucket;
  @override
  final String key;
  @override
  final String? versionId;
  @override
  final _i2.RestoreRequest? restoreRequest;
  @override
  final _i4.RequestPayer? requestPayer;
  @override
  final _i5.ChecksumAlgorithm? checksumAlgorithm;
  @override
  final String? expectedBucketOwner;

  factory _$RestoreObjectRequest(
          [void Function(RestoreObjectRequestBuilder)? updates]) =>
      (new RestoreObjectRequestBuilder()..update(updates))._build();

  _$RestoreObjectRequest._(
      {required this.bucket,
      required this.key,
      this.versionId,
      this.restoreRequest,
      this.requestPayer,
      this.checksumAlgorithm,
      this.expectedBucketOwner})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'RestoreObjectRequest', 'bucket');
    BuiltValueNullFieldError.checkNotNull(key, r'RestoreObjectRequest', 'key');
  }

  @override
  RestoreObjectRequest rebuild(
          void Function(RestoreObjectRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RestoreObjectRequestBuilder toBuilder() =>
      new RestoreObjectRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestoreObjectRequest &&
        bucket == other.bucket &&
        key == other.key &&
        versionId == other.versionId &&
        restoreRequest == other.restoreRequest &&
        requestPayer == other.requestPayer &&
        checksumAlgorithm == other.checksumAlgorithm &&
        expectedBucketOwner == other.expectedBucketOwner;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, versionId.hashCode);
    _$hash = $jc(_$hash, restoreRequest.hashCode);
    _$hash = $jc(_$hash, requestPayer.hashCode);
    _$hash = $jc(_$hash, checksumAlgorithm.hashCode);
    _$hash = $jc(_$hash, expectedBucketOwner.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RestoreObjectRequestBuilder
    implements Builder<RestoreObjectRequest, RestoreObjectRequestBuilder> {
  _$RestoreObjectRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  String? _versionId;
  String? get versionId => _$this._versionId;
  set versionId(String? versionId) => _$this._versionId = versionId;

  _i2.RestoreRequestBuilder? _restoreRequest;
  _i2.RestoreRequestBuilder get restoreRequest =>
      _$this._restoreRequest ??= new _i2.RestoreRequestBuilder();
  set restoreRequest(_i2.RestoreRequestBuilder? restoreRequest) =>
      _$this._restoreRequest = restoreRequest;

  _i4.RequestPayer? _requestPayer;
  _i4.RequestPayer? get requestPayer => _$this._requestPayer;
  set requestPayer(_i4.RequestPayer? requestPayer) =>
      _$this._requestPayer = requestPayer;

  _i5.ChecksumAlgorithm? _checksumAlgorithm;
  _i5.ChecksumAlgorithm? get checksumAlgorithm => _$this._checksumAlgorithm;
  set checksumAlgorithm(_i5.ChecksumAlgorithm? checksumAlgorithm) =>
      _$this._checksumAlgorithm = checksumAlgorithm;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  RestoreObjectRequestBuilder() {
    RestoreObjectRequest._init(this);
  }

  RestoreObjectRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _key = $v.key;
      _versionId = $v.versionId;
      _restoreRequest = $v.restoreRequest?.toBuilder();
      _requestPayer = $v.requestPayer;
      _checksumAlgorithm = $v.checksumAlgorithm;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RestoreObjectRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RestoreObjectRequest;
  }

  @override
  void update(void Function(RestoreObjectRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RestoreObjectRequest build() => _build();

  _$RestoreObjectRequest _build() {
    _$RestoreObjectRequest _$result;
    try {
      _$result = _$v ??
          new _$RestoreObjectRequest._(
              bucket: BuiltValueNullFieldError.checkNotNull(
                  bucket, r'RestoreObjectRequest', 'bucket'),
              key: BuiltValueNullFieldError.checkNotNull(
                  key, r'RestoreObjectRequest', 'key'),
              versionId: versionId,
              restoreRequest: _restoreRequest?.build(),
              requestPayer: requestPayer,
              checksumAlgorithm: checksumAlgorithm,
              expectedBucketOwner: expectedBucketOwner);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'restoreRequest';
        _restoreRequest?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RestoreObjectRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

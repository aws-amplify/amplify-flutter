// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.restore_object_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RestoreObjectRequest extends RestoreObjectRequest {
  @override
  final String bucket;
  @override
  final _i4.ChecksumAlgorithm? checksumAlgorithm;
  @override
  final String? expectedBucketOwner;
  @override
  final String key;
  @override
  final _i5.RequestPayer? requestPayer;
  @override
  final _i2.RestoreRequest? restoreRequest;
  @override
  final String? versionId;

  factory _$RestoreObjectRequest(
          [void Function(RestoreObjectRequestBuilder)? updates]) =>
      (new RestoreObjectRequestBuilder()..update(updates))._build();

  _$RestoreObjectRequest._(
      {required this.bucket,
      this.checksumAlgorithm,
      this.expectedBucketOwner,
      required this.key,
      this.requestPayer,
      this.restoreRequest,
      this.versionId})
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
        checksumAlgorithm == other.checksumAlgorithm &&
        expectedBucketOwner == other.expectedBucketOwner &&
        key == other.key &&
        requestPayer == other.requestPayer &&
        restoreRequest == other.restoreRequest &&
        versionId == other.versionId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, checksumAlgorithm.hashCode);
    _$hash = $jc(_$hash, expectedBucketOwner.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, requestPayer.hashCode);
    _$hash = $jc(_$hash, restoreRequest.hashCode);
    _$hash = $jc(_$hash, versionId.hashCode);
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

  _i4.ChecksumAlgorithm? _checksumAlgorithm;
  _i4.ChecksumAlgorithm? get checksumAlgorithm => _$this._checksumAlgorithm;
  set checksumAlgorithm(_i4.ChecksumAlgorithm? checksumAlgorithm) =>
      _$this._checksumAlgorithm = checksumAlgorithm;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  _i5.RequestPayer? _requestPayer;
  _i5.RequestPayer? get requestPayer => _$this._requestPayer;
  set requestPayer(_i5.RequestPayer? requestPayer) =>
      _$this._requestPayer = requestPayer;

  _i2.RestoreRequestBuilder? _restoreRequest;
  _i2.RestoreRequestBuilder get restoreRequest =>
      _$this._restoreRequest ??= new _i2.RestoreRequestBuilder();
  set restoreRequest(_i2.RestoreRequestBuilder? restoreRequest) =>
      _$this._restoreRequest = restoreRequest;

  String? _versionId;
  String? get versionId => _$this._versionId;
  set versionId(String? versionId) => _$this._versionId = versionId;

  RestoreObjectRequestBuilder() {
    RestoreObjectRequest._init(this);
  }

  RestoreObjectRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _checksumAlgorithm = $v.checksumAlgorithm;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _key = $v.key;
      _requestPayer = $v.requestPayer;
      _restoreRequest = $v.restoreRequest?.toBuilder();
      _versionId = $v.versionId;
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
              checksumAlgorithm: checksumAlgorithm,
              expectedBucketOwner: expectedBucketOwner,
              key: BuiltValueNullFieldError.checkNotNull(
                  key, r'RestoreObjectRequest', 'key'),
              requestPayer: requestPayer,
              restoreRequest: _restoreRequest?.build(),
              versionId: versionId);
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

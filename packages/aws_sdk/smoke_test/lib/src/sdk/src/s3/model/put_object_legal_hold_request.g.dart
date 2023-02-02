// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.put_object_legal_hold_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutObjectLegalHoldRequest extends PutObjectLegalHoldRequest {
  @override
  final String bucket;
  @override
  final _i4.ChecksumAlgorithm? checksumAlgorithm;
  @override
  final String? contentMd5;
  @override
  final String? expectedBucketOwner;
  @override
  final String key;
  @override
  final _i2.ObjectLockLegalHold? legalHold;
  @override
  final _i5.RequestPayer? requestPayer;
  @override
  final String? versionId;

  factory _$PutObjectLegalHoldRequest(
          [void Function(PutObjectLegalHoldRequestBuilder)? updates]) =>
      (new PutObjectLegalHoldRequestBuilder()..update(updates))._build();

  _$PutObjectLegalHoldRequest._(
      {required this.bucket,
      this.checksumAlgorithm,
      this.contentMd5,
      this.expectedBucketOwner,
      required this.key,
      this.legalHold,
      this.requestPayer,
      this.versionId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'PutObjectLegalHoldRequest', 'bucket');
    BuiltValueNullFieldError.checkNotNull(
        key, r'PutObjectLegalHoldRequest', 'key');
  }

  @override
  PutObjectLegalHoldRequest rebuild(
          void Function(PutObjectLegalHoldRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutObjectLegalHoldRequestBuilder toBuilder() =>
      new PutObjectLegalHoldRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutObjectLegalHoldRequest &&
        bucket == other.bucket &&
        checksumAlgorithm == other.checksumAlgorithm &&
        contentMd5 == other.contentMd5 &&
        expectedBucketOwner == other.expectedBucketOwner &&
        key == other.key &&
        legalHold == other.legalHold &&
        requestPayer == other.requestPayer &&
        versionId == other.versionId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, checksumAlgorithm.hashCode);
    _$hash = $jc(_$hash, contentMd5.hashCode);
    _$hash = $jc(_$hash, expectedBucketOwner.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, legalHold.hashCode);
    _$hash = $jc(_$hash, requestPayer.hashCode);
    _$hash = $jc(_$hash, versionId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PutObjectLegalHoldRequestBuilder
    implements
        Builder<PutObjectLegalHoldRequest, PutObjectLegalHoldRequestBuilder> {
  _$PutObjectLegalHoldRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  _i4.ChecksumAlgorithm? _checksumAlgorithm;
  _i4.ChecksumAlgorithm? get checksumAlgorithm => _$this._checksumAlgorithm;
  set checksumAlgorithm(_i4.ChecksumAlgorithm? checksumAlgorithm) =>
      _$this._checksumAlgorithm = checksumAlgorithm;

  String? _contentMd5;
  String? get contentMd5 => _$this._contentMd5;
  set contentMd5(String? contentMd5) => _$this._contentMd5 = contentMd5;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  _i2.ObjectLockLegalHoldBuilder? _legalHold;
  _i2.ObjectLockLegalHoldBuilder get legalHold =>
      _$this._legalHold ??= new _i2.ObjectLockLegalHoldBuilder();
  set legalHold(_i2.ObjectLockLegalHoldBuilder? legalHold) =>
      _$this._legalHold = legalHold;

  _i5.RequestPayer? _requestPayer;
  _i5.RequestPayer? get requestPayer => _$this._requestPayer;
  set requestPayer(_i5.RequestPayer? requestPayer) =>
      _$this._requestPayer = requestPayer;

  String? _versionId;
  String? get versionId => _$this._versionId;
  set versionId(String? versionId) => _$this._versionId = versionId;

  PutObjectLegalHoldRequestBuilder() {
    PutObjectLegalHoldRequest._init(this);
  }

  PutObjectLegalHoldRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _checksumAlgorithm = $v.checksumAlgorithm;
      _contentMd5 = $v.contentMd5;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _key = $v.key;
      _legalHold = $v.legalHold?.toBuilder();
      _requestPayer = $v.requestPayer;
      _versionId = $v.versionId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutObjectLegalHoldRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutObjectLegalHoldRequest;
  }

  @override
  void update(void Function(PutObjectLegalHoldRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutObjectLegalHoldRequest build() => _build();

  _$PutObjectLegalHoldRequest _build() {
    _$PutObjectLegalHoldRequest _$result;
    try {
      _$result = _$v ??
          new _$PutObjectLegalHoldRequest._(
              bucket: BuiltValueNullFieldError.checkNotNull(
                  bucket, r'PutObjectLegalHoldRequest', 'bucket'),
              checksumAlgorithm: checksumAlgorithm,
              contentMd5: contentMd5,
              expectedBucketOwner: expectedBucketOwner,
              key: BuiltValueNullFieldError.checkNotNull(
                  key, r'PutObjectLegalHoldRequest', 'key'),
              legalHold: _legalHold?.build(),
              requestPayer: requestPayer,
              versionId: versionId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'legalHold';
        _legalHold?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PutObjectLegalHoldRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

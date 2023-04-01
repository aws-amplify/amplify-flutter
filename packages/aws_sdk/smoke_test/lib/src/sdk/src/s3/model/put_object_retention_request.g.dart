// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.put_object_retention_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutObjectRetentionRequest extends PutObjectRetentionRequest {
  @override
  final String bucket;
  @override
  final String key;
  @override
  final _i2.ObjectLockRetention? retention;
  @override
  final _i4.RequestPayer? requestPayer;
  @override
  final String? versionId;
  @override
  final bool bypassGovernanceRetention;
  @override
  final String? contentMd5;
  @override
  final _i5.ChecksumAlgorithm? checksumAlgorithm;
  @override
  final String? expectedBucketOwner;

  factory _$PutObjectRetentionRequest(
          [void Function(PutObjectRetentionRequestBuilder)? updates]) =>
      (new PutObjectRetentionRequestBuilder()..update(updates))._build();

  _$PutObjectRetentionRequest._(
      {required this.bucket,
      required this.key,
      this.retention,
      this.requestPayer,
      this.versionId,
      required this.bypassGovernanceRetention,
      this.contentMd5,
      this.checksumAlgorithm,
      this.expectedBucketOwner})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'PutObjectRetentionRequest', 'bucket');
    BuiltValueNullFieldError.checkNotNull(
        key, r'PutObjectRetentionRequest', 'key');
    BuiltValueNullFieldError.checkNotNull(bypassGovernanceRetention,
        r'PutObjectRetentionRequest', 'bypassGovernanceRetention');
  }

  @override
  PutObjectRetentionRequest rebuild(
          void Function(PutObjectRetentionRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutObjectRetentionRequestBuilder toBuilder() =>
      new PutObjectRetentionRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutObjectRetentionRequest &&
        bucket == other.bucket &&
        key == other.key &&
        retention == other.retention &&
        requestPayer == other.requestPayer &&
        versionId == other.versionId &&
        bypassGovernanceRetention == other.bypassGovernanceRetention &&
        contentMd5 == other.contentMd5 &&
        checksumAlgorithm == other.checksumAlgorithm &&
        expectedBucketOwner == other.expectedBucketOwner;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, retention.hashCode);
    _$hash = $jc(_$hash, requestPayer.hashCode);
    _$hash = $jc(_$hash, versionId.hashCode);
    _$hash = $jc(_$hash, bypassGovernanceRetention.hashCode);
    _$hash = $jc(_$hash, contentMd5.hashCode);
    _$hash = $jc(_$hash, checksumAlgorithm.hashCode);
    _$hash = $jc(_$hash, expectedBucketOwner.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PutObjectRetentionRequestBuilder
    implements
        Builder<PutObjectRetentionRequest, PutObjectRetentionRequestBuilder> {
  _$PutObjectRetentionRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  _i2.ObjectLockRetentionBuilder? _retention;
  _i2.ObjectLockRetentionBuilder get retention =>
      _$this._retention ??= new _i2.ObjectLockRetentionBuilder();
  set retention(_i2.ObjectLockRetentionBuilder? retention) =>
      _$this._retention = retention;

  _i4.RequestPayer? _requestPayer;
  _i4.RequestPayer? get requestPayer => _$this._requestPayer;
  set requestPayer(_i4.RequestPayer? requestPayer) =>
      _$this._requestPayer = requestPayer;

  String? _versionId;
  String? get versionId => _$this._versionId;
  set versionId(String? versionId) => _$this._versionId = versionId;

  bool? _bypassGovernanceRetention;
  bool? get bypassGovernanceRetention => _$this._bypassGovernanceRetention;
  set bypassGovernanceRetention(bool? bypassGovernanceRetention) =>
      _$this._bypassGovernanceRetention = bypassGovernanceRetention;

  String? _contentMd5;
  String? get contentMd5 => _$this._contentMd5;
  set contentMd5(String? contentMd5) => _$this._contentMd5 = contentMd5;

  _i5.ChecksumAlgorithm? _checksumAlgorithm;
  _i5.ChecksumAlgorithm? get checksumAlgorithm => _$this._checksumAlgorithm;
  set checksumAlgorithm(_i5.ChecksumAlgorithm? checksumAlgorithm) =>
      _$this._checksumAlgorithm = checksumAlgorithm;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  PutObjectRetentionRequestBuilder() {
    PutObjectRetentionRequest._init(this);
  }

  PutObjectRetentionRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _key = $v.key;
      _retention = $v.retention?.toBuilder();
      _requestPayer = $v.requestPayer;
      _versionId = $v.versionId;
      _bypassGovernanceRetention = $v.bypassGovernanceRetention;
      _contentMd5 = $v.contentMd5;
      _checksumAlgorithm = $v.checksumAlgorithm;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutObjectRetentionRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutObjectRetentionRequest;
  }

  @override
  void update(void Function(PutObjectRetentionRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutObjectRetentionRequest build() => _build();

  _$PutObjectRetentionRequest _build() {
    _$PutObjectRetentionRequest _$result;
    try {
      _$result = _$v ??
          new _$PutObjectRetentionRequest._(
              bucket: BuiltValueNullFieldError.checkNotNull(
                  bucket, r'PutObjectRetentionRequest', 'bucket'),
              key: BuiltValueNullFieldError.checkNotNull(
                  key, r'PutObjectRetentionRequest', 'key'),
              retention: _retention?.build(),
              requestPayer: requestPayer,
              versionId: versionId,
              bypassGovernanceRetention: BuiltValueNullFieldError.checkNotNull(
                  bypassGovernanceRetention,
                  r'PutObjectRetentionRequest',
                  'bypassGovernanceRetention'),
              contentMd5: contentMd5,
              checksumAlgorithm: checksumAlgorithm,
              expectedBucketOwner: expectedBucketOwner);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'retention';
        _retention?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PutObjectRetentionRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

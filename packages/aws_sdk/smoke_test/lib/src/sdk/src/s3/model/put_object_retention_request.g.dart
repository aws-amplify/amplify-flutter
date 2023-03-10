// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.put_object_retention_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutObjectRetentionRequest extends PutObjectRetentionRequest {
  @override
  final String bucket;
  @override
  final bool? bypassGovernanceRetention;
  @override
  final _i4.ChecksumAlgorithm? checksumAlgorithm;
  @override
  final String? contentMd5;
  @override
  final String? expectedBucketOwner;
  @override
  final String key;
  @override
  final _i5.RequestPayer? requestPayer;
  @override
  final _i2.ObjectLockRetention? retention;
  @override
  final String? versionId;

  factory _$PutObjectRetentionRequest(
          [void Function(PutObjectRetentionRequestBuilder)? updates]) =>
      (new PutObjectRetentionRequestBuilder()..update(updates))._build();

  _$PutObjectRetentionRequest._(
      {required this.bucket,
      this.bypassGovernanceRetention,
      this.checksumAlgorithm,
      this.contentMd5,
      this.expectedBucketOwner,
      required this.key,
      this.requestPayer,
      this.retention,
      this.versionId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'PutObjectRetentionRequest', 'bucket');
    BuiltValueNullFieldError.checkNotNull(
        key, r'PutObjectRetentionRequest', 'key');
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
        bypassGovernanceRetention == other.bypassGovernanceRetention &&
        checksumAlgorithm == other.checksumAlgorithm &&
        contentMd5 == other.contentMd5 &&
        expectedBucketOwner == other.expectedBucketOwner &&
        key == other.key &&
        requestPayer == other.requestPayer &&
        retention == other.retention &&
        versionId == other.versionId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, bypassGovernanceRetention.hashCode);
    _$hash = $jc(_$hash, checksumAlgorithm.hashCode);
    _$hash = $jc(_$hash, contentMd5.hashCode);
    _$hash = $jc(_$hash, expectedBucketOwner.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, requestPayer.hashCode);
    _$hash = $jc(_$hash, retention.hashCode);
    _$hash = $jc(_$hash, versionId.hashCode);
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

  bool? _bypassGovernanceRetention;
  bool? get bypassGovernanceRetention => _$this._bypassGovernanceRetention;
  set bypassGovernanceRetention(bool? bypassGovernanceRetention) =>
      _$this._bypassGovernanceRetention = bypassGovernanceRetention;

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

  _i5.RequestPayer? _requestPayer;
  _i5.RequestPayer? get requestPayer => _$this._requestPayer;
  set requestPayer(_i5.RequestPayer? requestPayer) =>
      _$this._requestPayer = requestPayer;

  _i2.ObjectLockRetentionBuilder? _retention;
  _i2.ObjectLockRetentionBuilder get retention =>
      _$this._retention ??= new _i2.ObjectLockRetentionBuilder();
  set retention(_i2.ObjectLockRetentionBuilder? retention) =>
      _$this._retention = retention;

  String? _versionId;
  String? get versionId => _$this._versionId;
  set versionId(String? versionId) => _$this._versionId = versionId;

  PutObjectRetentionRequestBuilder() {
    PutObjectRetentionRequest._init(this);
  }

  PutObjectRetentionRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _bypassGovernanceRetention = $v.bypassGovernanceRetention;
      _checksumAlgorithm = $v.checksumAlgorithm;
      _contentMd5 = $v.contentMd5;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _key = $v.key;
      _requestPayer = $v.requestPayer;
      _retention = $v.retention?.toBuilder();
      _versionId = $v.versionId;
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
              bypassGovernanceRetention: bypassGovernanceRetention,
              checksumAlgorithm: checksumAlgorithm,
              contentMd5: contentMd5,
              expectedBucketOwner: expectedBucketOwner,
              key: BuiltValueNullFieldError.checkNotNull(
                  key, r'PutObjectRetentionRequest', 'key'),
              requestPayer: requestPayer,
              retention: _retention?.build(),
              versionId: versionId);
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

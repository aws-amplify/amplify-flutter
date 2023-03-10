// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.put_object_tagging_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutObjectTaggingRequest extends PutObjectTaggingRequest {
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
  final _i5.RequestPayer? requestPayer;
  @override
  final _i2.Tagging tagging;
  @override
  final String? versionId;

  factory _$PutObjectTaggingRequest(
          [void Function(PutObjectTaggingRequestBuilder)? updates]) =>
      (new PutObjectTaggingRequestBuilder()..update(updates))._build();

  _$PutObjectTaggingRequest._(
      {required this.bucket,
      this.checksumAlgorithm,
      this.contentMd5,
      this.expectedBucketOwner,
      required this.key,
      this.requestPayer,
      required this.tagging,
      this.versionId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'PutObjectTaggingRequest', 'bucket');
    BuiltValueNullFieldError.checkNotNull(
        key, r'PutObjectTaggingRequest', 'key');
    BuiltValueNullFieldError.checkNotNull(
        tagging, r'PutObjectTaggingRequest', 'tagging');
  }

  @override
  PutObjectTaggingRequest rebuild(
          void Function(PutObjectTaggingRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutObjectTaggingRequestBuilder toBuilder() =>
      new PutObjectTaggingRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutObjectTaggingRequest &&
        bucket == other.bucket &&
        checksumAlgorithm == other.checksumAlgorithm &&
        contentMd5 == other.contentMd5 &&
        expectedBucketOwner == other.expectedBucketOwner &&
        key == other.key &&
        requestPayer == other.requestPayer &&
        tagging == other.tagging &&
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
    _$hash = $jc(_$hash, requestPayer.hashCode);
    _$hash = $jc(_$hash, tagging.hashCode);
    _$hash = $jc(_$hash, versionId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PutObjectTaggingRequestBuilder
    implements
        Builder<PutObjectTaggingRequest, PutObjectTaggingRequestBuilder> {
  _$PutObjectTaggingRequest? _$v;

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

  _i5.RequestPayer? _requestPayer;
  _i5.RequestPayer? get requestPayer => _$this._requestPayer;
  set requestPayer(_i5.RequestPayer? requestPayer) =>
      _$this._requestPayer = requestPayer;

  _i2.TaggingBuilder? _tagging;
  _i2.TaggingBuilder get tagging =>
      _$this._tagging ??= new _i2.TaggingBuilder();
  set tagging(_i2.TaggingBuilder? tagging) => _$this._tagging = tagging;

  String? _versionId;
  String? get versionId => _$this._versionId;
  set versionId(String? versionId) => _$this._versionId = versionId;

  PutObjectTaggingRequestBuilder() {
    PutObjectTaggingRequest._init(this);
  }

  PutObjectTaggingRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _checksumAlgorithm = $v.checksumAlgorithm;
      _contentMd5 = $v.contentMd5;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _key = $v.key;
      _requestPayer = $v.requestPayer;
      _tagging = $v.tagging.toBuilder();
      _versionId = $v.versionId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutObjectTaggingRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutObjectTaggingRequest;
  }

  @override
  void update(void Function(PutObjectTaggingRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutObjectTaggingRequest build() => _build();

  _$PutObjectTaggingRequest _build() {
    _$PutObjectTaggingRequest _$result;
    try {
      _$result = _$v ??
          new _$PutObjectTaggingRequest._(
              bucket: BuiltValueNullFieldError.checkNotNull(
                  bucket, r'PutObjectTaggingRequest', 'bucket'),
              checksumAlgorithm: checksumAlgorithm,
              contentMd5: contentMd5,
              expectedBucketOwner: expectedBucketOwner,
              key: BuiltValueNullFieldError.checkNotNull(
                  key, r'PutObjectTaggingRequest', 'key'),
              requestPayer: requestPayer,
              tagging: tagging.build(),
              versionId: versionId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tagging';
        tagging.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PutObjectTaggingRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

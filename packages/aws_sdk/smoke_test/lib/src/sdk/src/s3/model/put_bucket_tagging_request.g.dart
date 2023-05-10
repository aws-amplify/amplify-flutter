// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.put_bucket_tagging_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutBucketTaggingRequest extends PutBucketTaggingRequest {
  @override
  final String bucket;
  @override
  final String? contentMd5;
  @override
  final _i4.ChecksumAlgorithm? checksumAlgorithm;
  @override
  final _i2.Tagging tagging;
  @override
  final String? expectedBucketOwner;

  factory _$PutBucketTaggingRequest(
          [void Function(PutBucketTaggingRequestBuilder)? updates]) =>
      (new PutBucketTaggingRequestBuilder()..update(updates))._build();

  _$PutBucketTaggingRequest._(
      {required this.bucket,
      this.contentMd5,
      this.checksumAlgorithm,
      required this.tagging,
      this.expectedBucketOwner})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'PutBucketTaggingRequest', 'bucket');
    BuiltValueNullFieldError.checkNotNull(
        tagging, r'PutBucketTaggingRequest', 'tagging');
  }

  @override
  PutBucketTaggingRequest rebuild(
          void Function(PutBucketTaggingRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutBucketTaggingRequestBuilder toBuilder() =>
      new PutBucketTaggingRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutBucketTaggingRequest &&
        bucket == other.bucket &&
        contentMd5 == other.contentMd5 &&
        checksumAlgorithm == other.checksumAlgorithm &&
        tagging == other.tagging &&
        expectedBucketOwner == other.expectedBucketOwner;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, contentMd5.hashCode);
    _$hash = $jc(_$hash, checksumAlgorithm.hashCode);
    _$hash = $jc(_$hash, tagging.hashCode);
    _$hash = $jc(_$hash, expectedBucketOwner.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PutBucketTaggingRequestBuilder
    implements
        Builder<PutBucketTaggingRequest, PutBucketTaggingRequestBuilder> {
  _$PutBucketTaggingRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _contentMd5;
  String? get contentMd5 => _$this._contentMd5;
  set contentMd5(String? contentMd5) => _$this._contentMd5 = contentMd5;

  _i4.ChecksumAlgorithm? _checksumAlgorithm;
  _i4.ChecksumAlgorithm? get checksumAlgorithm => _$this._checksumAlgorithm;
  set checksumAlgorithm(_i4.ChecksumAlgorithm? checksumAlgorithm) =>
      _$this._checksumAlgorithm = checksumAlgorithm;

  _i2.TaggingBuilder? _tagging;
  _i2.TaggingBuilder get tagging =>
      _$this._tagging ??= new _i2.TaggingBuilder();
  set tagging(_i2.TaggingBuilder? tagging) => _$this._tagging = tagging;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  PutBucketTaggingRequestBuilder() {
    PutBucketTaggingRequest._init(this);
  }

  PutBucketTaggingRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _contentMd5 = $v.contentMd5;
      _checksumAlgorithm = $v.checksumAlgorithm;
      _tagging = $v.tagging.toBuilder();
      _expectedBucketOwner = $v.expectedBucketOwner;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutBucketTaggingRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutBucketTaggingRequest;
  }

  @override
  void update(void Function(PutBucketTaggingRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutBucketTaggingRequest build() => _build();

  _$PutBucketTaggingRequest _build() {
    _$PutBucketTaggingRequest _$result;
    try {
      _$result = _$v ??
          new _$PutBucketTaggingRequest._(
              bucket: BuiltValueNullFieldError.checkNotNull(
                  bucket, r'PutBucketTaggingRequest', 'bucket'),
              contentMd5: contentMd5,
              checksumAlgorithm: checksumAlgorithm,
              tagging: tagging.build(),
              expectedBucketOwner: expectedBucketOwner);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tagging';
        tagging.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PutBucketTaggingRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

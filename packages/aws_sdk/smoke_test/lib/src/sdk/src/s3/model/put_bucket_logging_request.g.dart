// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.put_bucket_logging_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutBucketLoggingRequest extends PutBucketLoggingRequest {
  @override
  final String bucket;
  @override
  final _i2.BucketLoggingStatus bucketLoggingStatus;
  @override
  final _i4.ChecksumAlgorithm? checksumAlgorithm;
  @override
  final String? contentMd5;
  @override
  final String? expectedBucketOwner;

  factory _$PutBucketLoggingRequest(
          [void Function(PutBucketLoggingRequestBuilder)? updates]) =>
      (new PutBucketLoggingRequestBuilder()..update(updates))._build();

  _$PutBucketLoggingRequest._(
      {required this.bucket,
      required this.bucketLoggingStatus,
      this.checksumAlgorithm,
      this.contentMd5,
      this.expectedBucketOwner})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'PutBucketLoggingRequest', 'bucket');
    BuiltValueNullFieldError.checkNotNull(
        bucketLoggingStatus, r'PutBucketLoggingRequest', 'bucketLoggingStatus');
  }

  @override
  PutBucketLoggingRequest rebuild(
          void Function(PutBucketLoggingRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutBucketLoggingRequestBuilder toBuilder() =>
      new PutBucketLoggingRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutBucketLoggingRequest &&
        bucket == other.bucket &&
        bucketLoggingStatus == other.bucketLoggingStatus &&
        checksumAlgorithm == other.checksumAlgorithm &&
        contentMd5 == other.contentMd5 &&
        expectedBucketOwner == other.expectedBucketOwner;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, bucketLoggingStatus.hashCode);
    _$hash = $jc(_$hash, checksumAlgorithm.hashCode);
    _$hash = $jc(_$hash, contentMd5.hashCode);
    _$hash = $jc(_$hash, expectedBucketOwner.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PutBucketLoggingRequestBuilder
    implements
        Builder<PutBucketLoggingRequest, PutBucketLoggingRequestBuilder> {
  _$PutBucketLoggingRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  _i2.BucketLoggingStatusBuilder? _bucketLoggingStatus;
  _i2.BucketLoggingStatusBuilder get bucketLoggingStatus =>
      _$this._bucketLoggingStatus ??= new _i2.BucketLoggingStatusBuilder();
  set bucketLoggingStatus(
          _i2.BucketLoggingStatusBuilder? bucketLoggingStatus) =>
      _$this._bucketLoggingStatus = bucketLoggingStatus;

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

  PutBucketLoggingRequestBuilder() {
    PutBucketLoggingRequest._init(this);
  }

  PutBucketLoggingRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _bucketLoggingStatus = $v.bucketLoggingStatus.toBuilder();
      _checksumAlgorithm = $v.checksumAlgorithm;
      _contentMd5 = $v.contentMd5;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutBucketLoggingRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutBucketLoggingRequest;
  }

  @override
  void update(void Function(PutBucketLoggingRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutBucketLoggingRequest build() => _build();

  _$PutBucketLoggingRequest _build() {
    _$PutBucketLoggingRequest _$result;
    try {
      _$result = _$v ??
          new _$PutBucketLoggingRequest._(
              bucket: BuiltValueNullFieldError.checkNotNull(
                  bucket, r'PutBucketLoggingRequest', 'bucket'),
              bucketLoggingStatus: bucketLoggingStatus.build(),
              checksumAlgorithm: checksumAlgorithm,
              contentMd5: contentMd5,
              expectedBucketOwner: expectedBucketOwner);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'bucketLoggingStatus';
        bucketLoggingStatus.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PutBucketLoggingRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

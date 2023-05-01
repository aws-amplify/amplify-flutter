// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.put_bucket_website_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutBucketWebsiteRequest extends PutBucketWebsiteRequest {
  @override
  final String bucket;
  @override
  final String? contentMd5;
  @override
  final _i4.ChecksumAlgorithm? checksumAlgorithm;
  @override
  final _i2.WebsiteConfiguration websiteConfiguration;
  @override
  final String? expectedBucketOwner;

  factory _$PutBucketWebsiteRequest(
          [void Function(PutBucketWebsiteRequestBuilder)? updates]) =>
      (new PutBucketWebsiteRequestBuilder()..update(updates))._build();

  _$PutBucketWebsiteRequest._(
      {required this.bucket,
      this.contentMd5,
      this.checksumAlgorithm,
      required this.websiteConfiguration,
      this.expectedBucketOwner})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'PutBucketWebsiteRequest', 'bucket');
    BuiltValueNullFieldError.checkNotNull(websiteConfiguration,
        r'PutBucketWebsiteRequest', 'websiteConfiguration');
  }

  @override
  PutBucketWebsiteRequest rebuild(
          void Function(PutBucketWebsiteRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutBucketWebsiteRequestBuilder toBuilder() =>
      new PutBucketWebsiteRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutBucketWebsiteRequest &&
        bucket == other.bucket &&
        contentMd5 == other.contentMd5 &&
        checksumAlgorithm == other.checksumAlgorithm &&
        websiteConfiguration == other.websiteConfiguration &&
        expectedBucketOwner == other.expectedBucketOwner;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, contentMd5.hashCode);
    _$hash = $jc(_$hash, checksumAlgorithm.hashCode);
    _$hash = $jc(_$hash, websiteConfiguration.hashCode);
    _$hash = $jc(_$hash, expectedBucketOwner.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PutBucketWebsiteRequestBuilder
    implements
        Builder<PutBucketWebsiteRequest, PutBucketWebsiteRequestBuilder> {
  _$PutBucketWebsiteRequest? _$v;

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

  _i2.WebsiteConfigurationBuilder? _websiteConfiguration;
  _i2.WebsiteConfigurationBuilder get websiteConfiguration =>
      _$this._websiteConfiguration ??= new _i2.WebsiteConfigurationBuilder();
  set websiteConfiguration(
          _i2.WebsiteConfigurationBuilder? websiteConfiguration) =>
      _$this._websiteConfiguration = websiteConfiguration;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  PutBucketWebsiteRequestBuilder() {
    PutBucketWebsiteRequest._init(this);
  }

  PutBucketWebsiteRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _contentMd5 = $v.contentMd5;
      _checksumAlgorithm = $v.checksumAlgorithm;
      _websiteConfiguration = $v.websiteConfiguration.toBuilder();
      _expectedBucketOwner = $v.expectedBucketOwner;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutBucketWebsiteRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutBucketWebsiteRequest;
  }

  @override
  void update(void Function(PutBucketWebsiteRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutBucketWebsiteRequest build() => _build();

  _$PutBucketWebsiteRequest _build() {
    _$PutBucketWebsiteRequest _$result;
    try {
      _$result = _$v ??
          new _$PutBucketWebsiteRequest._(
              bucket: BuiltValueNullFieldError.checkNotNull(
                  bucket, r'PutBucketWebsiteRequest', 'bucket'),
              contentMd5: contentMd5,
              checksumAlgorithm: checksumAlgorithm,
              websiteConfiguration: websiteConfiguration.build(),
              expectedBucketOwner: expectedBucketOwner);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'websiteConfiguration';
        websiteConfiguration.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PutBucketWebsiteRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

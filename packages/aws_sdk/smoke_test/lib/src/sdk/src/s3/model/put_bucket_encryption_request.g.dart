// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.put_bucket_encryption_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutBucketEncryptionRequest extends PutBucketEncryptionRequest {
  @override
  final String bucket;
  @override
  final _i4.ChecksumAlgorithm? checksumAlgorithm;
  @override
  final String? contentMd5;
  @override
  final String? expectedBucketOwner;
  @override
  final _i2.ServerSideEncryptionConfiguration serverSideEncryptionConfiguration;

  factory _$PutBucketEncryptionRequest(
          [void Function(PutBucketEncryptionRequestBuilder)? updates]) =>
      (new PutBucketEncryptionRequestBuilder()..update(updates))._build();

  _$PutBucketEncryptionRequest._(
      {required this.bucket,
      this.checksumAlgorithm,
      this.contentMd5,
      this.expectedBucketOwner,
      required this.serverSideEncryptionConfiguration})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'PutBucketEncryptionRequest', 'bucket');
    BuiltValueNullFieldError.checkNotNull(serverSideEncryptionConfiguration,
        r'PutBucketEncryptionRequest', 'serverSideEncryptionConfiguration');
  }

  @override
  PutBucketEncryptionRequest rebuild(
          void Function(PutBucketEncryptionRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutBucketEncryptionRequestBuilder toBuilder() =>
      new PutBucketEncryptionRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutBucketEncryptionRequest &&
        bucket == other.bucket &&
        checksumAlgorithm == other.checksumAlgorithm &&
        contentMd5 == other.contentMd5 &&
        expectedBucketOwner == other.expectedBucketOwner &&
        serverSideEncryptionConfiguration ==
            other.serverSideEncryptionConfiguration;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, checksumAlgorithm.hashCode);
    _$hash = $jc(_$hash, contentMd5.hashCode);
    _$hash = $jc(_$hash, expectedBucketOwner.hashCode);
    _$hash = $jc(_$hash, serverSideEncryptionConfiguration.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PutBucketEncryptionRequestBuilder
    implements
        Builder<PutBucketEncryptionRequest, PutBucketEncryptionRequestBuilder> {
  _$PutBucketEncryptionRequest? _$v;

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

  _i2.ServerSideEncryptionConfigurationBuilder?
      _serverSideEncryptionConfiguration;
  _i2.ServerSideEncryptionConfigurationBuilder
      get serverSideEncryptionConfiguration =>
          _$this._serverSideEncryptionConfiguration ??=
              new _i2.ServerSideEncryptionConfigurationBuilder();
  set serverSideEncryptionConfiguration(
          _i2.ServerSideEncryptionConfigurationBuilder?
              serverSideEncryptionConfiguration) =>
      _$this._serverSideEncryptionConfiguration =
          serverSideEncryptionConfiguration;

  PutBucketEncryptionRequestBuilder() {
    PutBucketEncryptionRequest._init(this);
  }

  PutBucketEncryptionRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _checksumAlgorithm = $v.checksumAlgorithm;
      _contentMd5 = $v.contentMd5;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _serverSideEncryptionConfiguration =
          $v.serverSideEncryptionConfiguration.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutBucketEncryptionRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutBucketEncryptionRequest;
  }

  @override
  void update(void Function(PutBucketEncryptionRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutBucketEncryptionRequest build() => _build();

  _$PutBucketEncryptionRequest _build() {
    _$PutBucketEncryptionRequest _$result;
    try {
      _$result = _$v ??
          new _$PutBucketEncryptionRequest._(
              bucket: BuiltValueNullFieldError.checkNotNull(
                  bucket, r'PutBucketEncryptionRequest', 'bucket'),
              checksumAlgorithm: checksumAlgorithm,
              contentMd5: contentMd5,
              expectedBucketOwner: expectedBucketOwner,
              serverSideEncryptionConfiguration:
                  serverSideEncryptionConfiguration.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'serverSideEncryptionConfiguration';
        serverSideEncryptionConfiguration.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PutBucketEncryptionRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

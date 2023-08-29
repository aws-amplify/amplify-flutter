// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'put_bucket_encryption_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutBucketEncryptionRequest extends PutBucketEncryptionRequest {
  @override
  final String bucket;
  @override
  final String? contentMd5;
  @override
  final ChecksumAlgorithm? checksumAlgorithm;
  @override
  final ServerSideEncryptionConfiguration serverSideEncryptionConfiguration;
  @override
  final String? expectedBucketOwner;

  factory _$PutBucketEncryptionRequest(
          [void Function(PutBucketEncryptionRequestBuilder)? updates]) =>
      (new PutBucketEncryptionRequestBuilder()..update(updates))._build();

  _$PutBucketEncryptionRequest._(
      {required this.bucket,
      this.contentMd5,
      this.checksumAlgorithm,
      required this.serverSideEncryptionConfiguration,
      this.expectedBucketOwner})
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
        contentMd5 == other.contentMd5 &&
        checksumAlgorithm == other.checksumAlgorithm &&
        serverSideEncryptionConfiguration ==
            other.serverSideEncryptionConfiguration &&
        expectedBucketOwner == other.expectedBucketOwner;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, contentMd5.hashCode);
    _$hash = $jc(_$hash, checksumAlgorithm.hashCode);
    _$hash = $jc(_$hash, serverSideEncryptionConfiguration.hashCode);
    _$hash = $jc(_$hash, expectedBucketOwner.hashCode);
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

  String? _contentMd5;
  String? get contentMd5 => _$this._contentMd5;
  set contentMd5(String? contentMd5) => _$this._contentMd5 = contentMd5;

  ChecksumAlgorithm? _checksumAlgorithm;
  ChecksumAlgorithm? get checksumAlgorithm => _$this._checksumAlgorithm;
  set checksumAlgorithm(ChecksumAlgorithm? checksumAlgorithm) =>
      _$this._checksumAlgorithm = checksumAlgorithm;

  ServerSideEncryptionConfigurationBuilder? _serverSideEncryptionConfiguration;
  ServerSideEncryptionConfigurationBuilder
      get serverSideEncryptionConfiguration =>
          _$this._serverSideEncryptionConfiguration ??=
              new ServerSideEncryptionConfigurationBuilder();
  set serverSideEncryptionConfiguration(
          ServerSideEncryptionConfigurationBuilder?
              serverSideEncryptionConfiguration) =>
      _$this._serverSideEncryptionConfiguration =
          serverSideEncryptionConfiguration;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  PutBucketEncryptionRequestBuilder();

  PutBucketEncryptionRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _contentMd5 = $v.contentMd5;
      _checksumAlgorithm = $v.checksumAlgorithm;
      _serverSideEncryptionConfiguration =
          $v.serverSideEncryptionConfiguration.toBuilder();
      _expectedBucketOwner = $v.expectedBucketOwner;
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
              contentMd5: contentMd5,
              checksumAlgorithm: checksumAlgorithm,
              serverSideEncryptionConfiguration:
                  serverSideEncryptionConfiguration.build(),
              expectedBucketOwner: expectedBucketOwner);
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

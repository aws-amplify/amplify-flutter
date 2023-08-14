// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'put_public_access_block_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutPublicAccessBlockRequest extends PutPublicAccessBlockRequest {
  @override
  final String bucket;
  @override
  final String? contentMd5;
  @override
  final ChecksumAlgorithm? checksumAlgorithm;
  @override
  final PublicAccessBlockConfiguration publicAccessBlockConfiguration;
  @override
  final String? expectedBucketOwner;

  factory _$PutPublicAccessBlockRequest(
          [void Function(PutPublicAccessBlockRequestBuilder)? updates]) =>
      (new PutPublicAccessBlockRequestBuilder()..update(updates))._build();

  _$PutPublicAccessBlockRequest._(
      {required this.bucket,
      this.contentMd5,
      this.checksumAlgorithm,
      required this.publicAccessBlockConfiguration,
      this.expectedBucketOwner})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'PutPublicAccessBlockRequest', 'bucket');
    BuiltValueNullFieldError.checkNotNull(publicAccessBlockConfiguration,
        r'PutPublicAccessBlockRequest', 'publicAccessBlockConfiguration');
  }

  @override
  PutPublicAccessBlockRequest rebuild(
          void Function(PutPublicAccessBlockRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutPublicAccessBlockRequestBuilder toBuilder() =>
      new PutPublicAccessBlockRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutPublicAccessBlockRequest &&
        bucket == other.bucket &&
        contentMd5 == other.contentMd5 &&
        checksumAlgorithm == other.checksumAlgorithm &&
        publicAccessBlockConfiguration ==
            other.publicAccessBlockConfiguration &&
        expectedBucketOwner == other.expectedBucketOwner;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, contentMd5.hashCode);
    _$hash = $jc(_$hash, checksumAlgorithm.hashCode);
    _$hash = $jc(_$hash, publicAccessBlockConfiguration.hashCode);
    _$hash = $jc(_$hash, expectedBucketOwner.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PutPublicAccessBlockRequestBuilder
    implements
        Builder<PutPublicAccessBlockRequest,
            PutPublicAccessBlockRequestBuilder> {
  _$PutPublicAccessBlockRequest? _$v;

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

  PublicAccessBlockConfigurationBuilder? _publicAccessBlockConfiguration;
  PublicAccessBlockConfigurationBuilder get publicAccessBlockConfiguration =>
      _$this._publicAccessBlockConfiguration ??=
          new PublicAccessBlockConfigurationBuilder();
  set publicAccessBlockConfiguration(
          PublicAccessBlockConfigurationBuilder?
              publicAccessBlockConfiguration) =>
      _$this._publicAccessBlockConfiguration = publicAccessBlockConfiguration;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  PutPublicAccessBlockRequestBuilder();

  PutPublicAccessBlockRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _contentMd5 = $v.contentMd5;
      _checksumAlgorithm = $v.checksumAlgorithm;
      _publicAccessBlockConfiguration =
          $v.publicAccessBlockConfiguration.toBuilder();
      _expectedBucketOwner = $v.expectedBucketOwner;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutPublicAccessBlockRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutPublicAccessBlockRequest;
  }

  @override
  void update(void Function(PutPublicAccessBlockRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutPublicAccessBlockRequest build() => _build();

  _$PutPublicAccessBlockRequest _build() {
    _$PutPublicAccessBlockRequest _$result;
    try {
      _$result = _$v ??
          new _$PutPublicAccessBlockRequest._(
              bucket: BuiltValueNullFieldError.checkNotNull(
                  bucket, r'PutPublicAccessBlockRequest', 'bucket'),
              contentMd5: contentMd5,
              checksumAlgorithm: checksumAlgorithm,
              publicAccessBlockConfiguration:
                  publicAccessBlockConfiguration.build(),
              expectedBucketOwner: expectedBucketOwner);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'publicAccessBlockConfiguration';
        publicAccessBlockConfiguration.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PutPublicAccessBlockRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

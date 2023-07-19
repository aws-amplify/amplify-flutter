// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'put_bucket_versioning_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutBucketVersioningRequest extends PutBucketVersioningRequest {
  @override
  final String bucket;
  @override
  final String? contentMd5;
  @override
  final _i4.ChecksumAlgorithm? checksumAlgorithm;
  @override
  final String? mfa;
  @override
  final _i2.VersioningConfiguration versioningConfiguration;
  @override
  final String? expectedBucketOwner;

  factory _$PutBucketVersioningRequest(
          [void Function(PutBucketVersioningRequestBuilder)? updates]) =>
      (new PutBucketVersioningRequestBuilder()..update(updates))._build();

  _$PutBucketVersioningRequest._(
      {required this.bucket,
      this.contentMd5,
      this.checksumAlgorithm,
      this.mfa,
      required this.versioningConfiguration,
      this.expectedBucketOwner})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'PutBucketVersioningRequest', 'bucket');
    BuiltValueNullFieldError.checkNotNull(versioningConfiguration,
        r'PutBucketVersioningRequest', 'versioningConfiguration');
  }

  @override
  PutBucketVersioningRequest rebuild(
          void Function(PutBucketVersioningRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutBucketVersioningRequestBuilder toBuilder() =>
      new PutBucketVersioningRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutBucketVersioningRequest &&
        bucket == other.bucket &&
        contentMd5 == other.contentMd5 &&
        checksumAlgorithm == other.checksumAlgorithm &&
        mfa == other.mfa &&
        versioningConfiguration == other.versioningConfiguration &&
        expectedBucketOwner == other.expectedBucketOwner;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, contentMd5.hashCode);
    _$hash = $jc(_$hash, checksumAlgorithm.hashCode);
    _$hash = $jc(_$hash, mfa.hashCode);
    _$hash = $jc(_$hash, versioningConfiguration.hashCode);
    _$hash = $jc(_$hash, expectedBucketOwner.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PutBucketVersioningRequestBuilder
    implements
        Builder<PutBucketVersioningRequest, PutBucketVersioningRequestBuilder> {
  _$PutBucketVersioningRequest? _$v;

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

  String? _mfa;
  String? get mfa => _$this._mfa;
  set mfa(String? mfa) => _$this._mfa = mfa;

  _i2.VersioningConfigurationBuilder? _versioningConfiguration;
  _i2.VersioningConfigurationBuilder get versioningConfiguration =>
      _$this._versioningConfiguration ??=
          new _i2.VersioningConfigurationBuilder();
  set versioningConfiguration(
          _i2.VersioningConfigurationBuilder? versioningConfiguration) =>
      _$this._versioningConfiguration = versioningConfiguration;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  PutBucketVersioningRequestBuilder();

  PutBucketVersioningRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _contentMd5 = $v.contentMd5;
      _checksumAlgorithm = $v.checksumAlgorithm;
      _mfa = $v.mfa;
      _versioningConfiguration = $v.versioningConfiguration.toBuilder();
      _expectedBucketOwner = $v.expectedBucketOwner;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutBucketVersioningRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutBucketVersioningRequest;
  }

  @override
  void update(void Function(PutBucketVersioningRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutBucketVersioningRequest build() => _build();

  _$PutBucketVersioningRequest _build() {
    _$PutBucketVersioningRequest _$result;
    try {
      _$result = _$v ??
          new _$PutBucketVersioningRequest._(
              bucket: BuiltValueNullFieldError.checkNotNull(
                  bucket, r'PutBucketVersioningRequest', 'bucket'),
              contentMd5: contentMd5,
              checksumAlgorithm: checksumAlgorithm,
              mfa: mfa,
              versioningConfiguration: versioningConfiguration.build(),
              expectedBucketOwner: expectedBucketOwner);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'versioningConfiguration';
        versioningConfiguration.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PutBucketVersioningRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'put_object_lock_configuration_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutObjectLockConfigurationRequest
    extends PutObjectLockConfigurationRequest {
  @override
  final String bucket;
  @override
  final _i2.ObjectLockConfiguration? objectLockConfiguration;
  @override
  final _i4.RequestPayer? requestPayer;
  @override
  final String? token;
  @override
  final String? contentMd5;
  @override
  final _i5.ChecksumAlgorithm? checksumAlgorithm;
  @override
  final String? expectedBucketOwner;

  factory _$PutObjectLockConfigurationRequest(
          [void Function(PutObjectLockConfigurationRequestBuilder)? updates]) =>
      (new PutObjectLockConfigurationRequestBuilder()..update(updates))
          ._build();

  _$PutObjectLockConfigurationRequest._(
      {required this.bucket,
      this.objectLockConfiguration,
      this.requestPayer,
      this.token,
      this.contentMd5,
      this.checksumAlgorithm,
      this.expectedBucketOwner})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'PutObjectLockConfigurationRequest', 'bucket');
  }

  @override
  PutObjectLockConfigurationRequest rebuild(
          void Function(PutObjectLockConfigurationRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutObjectLockConfigurationRequestBuilder toBuilder() =>
      new PutObjectLockConfigurationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutObjectLockConfigurationRequest &&
        bucket == other.bucket &&
        objectLockConfiguration == other.objectLockConfiguration &&
        requestPayer == other.requestPayer &&
        token == other.token &&
        contentMd5 == other.contentMd5 &&
        checksumAlgorithm == other.checksumAlgorithm &&
        expectedBucketOwner == other.expectedBucketOwner;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, objectLockConfiguration.hashCode);
    _$hash = $jc(_$hash, requestPayer.hashCode);
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jc(_$hash, contentMd5.hashCode);
    _$hash = $jc(_$hash, checksumAlgorithm.hashCode);
    _$hash = $jc(_$hash, expectedBucketOwner.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PutObjectLockConfigurationRequestBuilder
    implements
        Builder<PutObjectLockConfigurationRequest,
            PutObjectLockConfigurationRequestBuilder> {
  _$PutObjectLockConfigurationRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  _i2.ObjectLockConfigurationBuilder? _objectLockConfiguration;
  _i2.ObjectLockConfigurationBuilder get objectLockConfiguration =>
      _$this._objectLockConfiguration ??=
          new _i2.ObjectLockConfigurationBuilder();
  set objectLockConfiguration(
          _i2.ObjectLockConfigurationBuilder? objectLockConfiguration) =>
      _$this._objectLockConfiguration = objectLockConfiguration;

  _i4.RequestPayer? _requestPayer;
  _i4.RequestPayer? get requestPayer => _$this._requestPayer;
  set requestPayer(_i4.RequestPayer? requestPayer) =>
      _$this._requestPayer = requestPayer;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

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

  PutObjectLockConfigurationRequestBuilder() {
    PutObjectLockConfigurationRequest._init(this);
  }

  PutObjectLockConfigurationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _objectLockConfiguration = $v.objectLockConfiguration?.toBuilder();
      _requestPayer = $v.requestPayer;
      _token = $v.token;
      _contentMd5 = $v.contentMd5;
      _checksumAlgorithm = $v.checksumAlgorithm;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutObjectLockConfigurationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutObjectLockConfigurationRequest;
  }

  @override
  void update(
      void Function(PutObjectLockConfigurationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutObjectLockConfigurationRequest build() => _build();

  _$PutObjectLockConfigurationRequest _build() {
    _$PutObjectLockConfigurationRequest _$result;
    try {
      _$result = _$v ??
          new _$PutObjectLockConfigurationRequest._(
              bucket: BuiltValueNullFieldError.checkNotNull(
                  bucket, r'PutObjectLockConfigurationRequest', 'bucket'),
              objectLockConfiguration: _objectLockConfiguration?.build(),
              requestPayer: requestPayer,
              token: token,
              contentMd5: contentMd5,
              checksumAlgorithm: checksumAlgorithm,
              expectedBucketOwner: expectedBucketOwner);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'objectLockConfiguration';
        _objectLockConfiguration?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PutObjectLockConfigurationRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

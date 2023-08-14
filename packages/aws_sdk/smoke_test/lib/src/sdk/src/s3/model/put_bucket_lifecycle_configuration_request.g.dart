// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'put_bucket_lifecycle_configuration_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutBucketLifecycleConfigurationRequest
    extends PutBucketLifecycleConfigurationRequest {
  @override
  final String bucket;
  @override
  final ChecksumAlgorithm? checksumAlgorithm;
  @override
  final BucketLifecycleConfiguration? lifecycleConfiguration;
  @override
  final String? expectedBucketOwner;

  factory _$PutBucketLifecycleConfigurationRequest(
          [void Function(PutBucketLifecycleConfigurationRequestBuilder)?
              updates]) =>
      (new PutBucketLifecycleConfigurationRequestBuilder()..update(updates))
          ._build();

  _$PutBucketLifecycleConfigurationRequest._(
      {required this.bucket,
      this.checksumAlgorithm,
      this.lifecycleConfiguration,
      this.expectedBucketOwner})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'PutBucketLifecycleConfigurationRequest', 'bucket');
  }

  @override
  PutBucketLifecycleConfigurationRequest rebuild(
          void Function(PutBucketLifecycleConfigurationRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutBucketLifecycleConfigurationRequestBuilder toBuilder() =>
      new PutBucketLifecycleConfigurationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutBucketLifecycleConfigurationRequest &&
        bucket == other.bucket &&
        checksumAlgorithm == other.checksumAlgorithm &&
        lifecycleConfiguration == other.lifecycleConfiguration &&
        expectedBucketOwner == other.expectedBucketOwner;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, checksumAlgorithm.hashCode);
    _$hash = $jc(_$hash, lifecycleConfiguration.hashCode);
    _$hash = $jc(_$hash, expectedBucketOwner.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PutBucketLifecycleConfigurationRequestBuilder
    implements
        Builder<PutBucketLifecycleConfigurationRequest,
            PutBucketLifecycleConfigurationRequestBuilder> {
  _$PutBucketLifecycleConfigurationRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  ChecksumAlgorithm? _checksumAlgorithm;
  ChecksumAlgorithm? get checksumAlgorithm => _$this._checksumAlgorithm;
  set checksumAlgorithm(ChecksumAlgorithm? checksumAlgorithm) =>
      _$this._checksumAlgorithm = checksumAlgorithm;

  BucketLifecycleConfigurationBuilder? _lifecycleConfiguration;
  BucketLifecycleConfigurationBuilder get lifecycleConfiguration =>
      _$this._lifecycleConfiguration ??=
          new BucketLifecycleConfigurationBuilder();
  set lifecycleConfiguration(
          BucketLifecycleConfigurationBuilder? lifecycleConfiguration) =>
      _$this._lifecycleConfiguration = lifecycleConfiguration;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  PutBucketLifecycleConfigurationRequestBuilder();

  PutBucketLifecycleConfigurationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _checksumAlgorithm = $v.checksumAlgorithm;
      _lifecycleConfiguration = $v.lifecycleConfiguration?.toBuilder();
      _expectedBucketOwner = $v.expectedBucketOwner;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutBucketLifecycleConfigurationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutBucketLifecycleConfigurationRequest;
  }

  @override
  void update(
      void Function(PutBucketLifecycleConfigurationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutBucketLifecycleConfigurationRequest build() => _build();

  _$PutBucketLifecycleConfigurationRequest _build() {
    _$PutBucketLifecycleConfigurationRequest _$result;
    try {
      _$result = _$v ??
          new _$PutBucketLifecycleConfigurationRequest._(
              bucket: BuiltValueNullFieldError.checkNotNull(
                  bucket, r'PutBucketLifecycleConfigurationRequest', 'bucket'),
              checksumAlgorithm: checksumAlgorithm,
              lifecycleConfiguration: _lifecycleConfiguration?.build(),
              expectedBucketOwner: expectedBucketOwner);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'lifecycleConfiguration';
        _lifecycleConfiguration?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PutBucketLifecycleConfigurationRequest',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

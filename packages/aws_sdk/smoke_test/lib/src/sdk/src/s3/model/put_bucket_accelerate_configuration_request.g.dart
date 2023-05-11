// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.put_bucket_accelerate_configuration_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutBucketAccelerateConfigurationRequest
    extends PutBucketAccelerateConfigurationRequest {
  @override
  final String bucket;
  @override
  final _i2.AccelerateConfiguration accelerateConfiguration;
  @override
  final String? expectedBucketOwner;
  @override
  final _i4.ChecksumAlgorithm? checksumAlgorithm;

  factory _$PutBucketAccelerateConfigurationRequest(
          [void Function(PutBucketAccelerateConfigurationRequestBuilder)?
              updates]) =>
      (new PutBucketAccelerateConfigurationRequestBuilder()..update(updates))
          ._build();

  _$PutBucketAccelerateConfigurationRequest._(
      {required this.bucket,
      required this.accelerateConfiguration,
      this.expectedBucketOwner,
      this.checksumAlgorithm})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'PutBucketAccelerateConfigurationRequest', 'bucket');
    BuiltValueNullFieldError.checkNotNull(accelerateConfiguration,
        r'PutBucketAccelerateConfigurationRequest', 'accelerateConfiguration');
  }

  @override
  PutBucketAccelerateConfigurationRequest rebuild(
          void Function(PutBucketAccelerateConfigurationRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutBucketAccelerateConfigurationRequestBuilder toBuilder() =>
      new PutBucketAccelerateConfigurationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutBucketAccelerateConfigurationRequest &&
        bucket == other.bucket &&
        accelerateConfiguration == other.accelerateConfiguration &&
        expectedBucketOwner == other.expectedBucketOwner &&
        checksumAlgorithm == other.checksumAlgorithm;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, accelerateConfiguration.hashCode);
    _$hash = $jc(_$hash, expectedBucketOwner.hashCode);
    _$hash = $jc(_$hash, checksumAlgorithm.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PutBucketAccelerateConfigurationRequestBuilder
    implements
        Builder<PutBucketAccelerateConfigurationRequest,
            PutBucketAccelerateConfigurationRequestBuilder> {
  _$PutBucketAccelerateConfigurationRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  _i2.AccelerateConfigurationBuilder? _accelerateConfiguration;
  _i2.AccelerateConfigurationBuilder get accelerateConfiguration =>
      _$this._accelerateConfiguration ??=
          new _i2.AccelerateConfigurationBuilder();
  set accelerateConfiguration(
          _i2.AccelerateConfigurationBuilder? accelerateConfiguration) =>
      _$this._accelerateConfiguration = accelerateConfiguration;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  _i4.ChecksumAlgorithm? _checksumAlgorithm;
  _i4.ChecksumAlgorithm? get checksumAlgorithm => _$this._checksumAlgorithm;
  set checksumAlgorithm(_i4.ChecksumAlgorithm? checksumAlgorithm) =>
      _$this._checksumAlgorithm = checksumAlgorithm;

  PutBucketAccelerateConfigurationRequestBuilder() {
    PutBucketAccelerateConfigurationRequest._init(this);
  }

  PutBucketAccelerateConfigurationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _accelerateConfiguration = $v.accelerateConfiguration.toBuilder();
      _expectedBucketOwner = $v.expectedBucketOwner;
      _checksumAlgorithm = $v.checksumAlgorithm;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutBucketAccelerateConfigurationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutBucketAccelerateConfigurationRequest;
  }

  @override
  void update(
      void Function(PutBucketAccelerateConfigurationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutBucketAccelerateConfigurationRequest build() => _build();

  _$PutBucketAccelerateConfigurationRequest _build() {
    _$PutBucketAccelerateConfigurationRequest _$result;
    try {
      _$result = _$v ??
          new _$PutBucketAccelerateConfigurationRequest._(
              bucket: BuiltValueNullFieldError.checkNotNull(
                  bucket, r'PutBucketAccelerateConfigurationRequest', 'bucket'),
              accelerateConfiguration: accelerateConfiguration.build(),
              expectedBucketOwner: expectedBucketOwner,
              checksumAlgorithm: checksumAlgorithm);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'accelerateConfiguration';
        accelerateConfiguration.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PutBucketAccelerateConfigurationRequest',
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

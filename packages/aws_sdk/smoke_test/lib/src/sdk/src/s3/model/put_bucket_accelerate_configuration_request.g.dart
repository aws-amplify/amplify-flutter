// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.put_bucket_accelerate_configuration_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutBucketAccelerateConfigurationRequest
    extends PutBucketAccelerateConfigurationRequest {
  @override
  final _i2.AccelerateConfiguration accelerateConfiguration;
  @override
  final String bucket;
  @override
  final _i4.ChecksumAlgorithm? checksumAlgorithm;
  @override
  final String? expectedBucketOwner;

  factory _$PutBucketAccelerateConfigurationRequest(
          [void Function(PutBucketAccelerateConfigurationRequestBuilder)?
              updates]) =>
      (new PutBucketAccelerateConfigurationRequestBuilder()..update(updates))
          ._build();

  _$PutBucketAccelerateConfigurationRequest._(
      {required this.accelerateConfiguration,
      required this.bucket,
      this.checksumAlgorithm,
      this.expectedBucketOwner})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(accelerateConfiguration,
        r'PutBucketAccelerateConfigurationRequest', 'accelerateConfiguration');
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'PutBucketAccelerateConfigurationRequest', 'bucket');
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
        accelerateConfiguration == other.accelerateConfiguration &&
        bucket == other.bucket &&
        checksumAlgorithm == other.checksumAlgorithm &&
        expectedBucketOwner == other.expectedBucketOwner;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accelerateConfiguration.hashCode);
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, checksumAlgorithm.hashCode);
    _$hash = $jc(_$hash, expectedBucketOwner.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PutBucketAccelerateConfigurationRequestBuilder
    implements
        Builder<PutBucketAccelerateConfigurationRequest,
            PutBucketAccelerateConfigurationRequestBuilder> {
  _$PutBucketAccelerateConfigurationRequest? _$v;

  _i2.AccelerateConfigurationBuilder? _accelerateConfiguration;
  _i2.AccelerateConfigurationBuilder get accelerateConfiguration =>
      _$this._accelerateConfiguration ??=
          new _i2.AccelerateConfigurationBuilder();
  set accelerateConfiguration(
          _i2.AccelerateConfigurationBuilder? accelerateConfiguration) =>
      _$this._accelerateConfiguration = accelerateConfiguration;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  _i4.ChecksumAlgorithm? _checksumAlgorithm;
  _i4.ChecksumAlgorithm? get checksumAlgorithm => _$this._checksumAlgorithm;
  set checksumAlgorithm(_i4.ChecksumAlgorithm? checksumAlgorithm) =>
      _$this._checksumAlgorithm = checksumAlgorithm;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  PutBucketAccelerateConfigurationRequestBuilder() {
    PutBucketAccelerateConfigurationRequest._init(this);
  }

  PutBucketAccelerateConfigurationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accelerateConfiguration = $v.accelerateConfiguration.toBuilder();
      _bucket = $v.bucket;
      _checksumAlgorithm = $v.checksumAlgorithm;
      _expectedBucketOwner = $v.expectedBucketOwner;
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
              accelerateConfiguration: accelerateConfiguration.build(),
              bucket: BuiltValueNullFieldError.checkNotNull(
                  bucket, r'PutBucketAccelerateConfigurationRequest', 'bucket'),
              checksumAlgorithm: checksumAlgorithm,
              expectedBucketOwner: expectedBucketOwner);
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

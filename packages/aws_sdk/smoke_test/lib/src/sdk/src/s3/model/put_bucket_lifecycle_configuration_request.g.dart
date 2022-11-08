// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.put_bucket_lifecycle_configuration_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutBucketLifecycleConfigurationRequest
    extends PutBucketLifecycleConfigurationRequest {
  @override
  final String bucket;
  @override
  final _i4.ChecksumAlgorithm? checksumAlgorithm;
  @override
  final String? expectedBucketOwner;
  @override
  final _i2.BucketLifecycleConfiguration? lifecycleConfiguration;

  factory _$PutBucketLifecycleConfigurationRequest(
          [void Function(PutBucketLifecycleConfigurationRequestBuilder)?
              updates]) =>
      (new PutBucketLifecycleConfigurationRequestBuilder()..update(updates))
          ._build();

  _$PutBucketLifecycleConfigurationRequest._(
      {required this.bucket,
      this.checksumAlgorithm,
      this.expectedBucketOwner,
      this.lifecycleConfiguration})
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
        expectedBucketOwner == other.expectedBucketOwner &&
        lifecycleConfiguration == other.lifecycleConfiguration;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, bucket.hashCode), checksumAlgorithm.hashCode),
            expectedBucketOwner.hashCode),
        lifecycleConfiguration.hashCode));
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

  _i4.ChecksumAlgorithm? _checksumAlgorithm;
  _i4.ChecksumAlgorithm? get checksumAlgorithm => _$this._checksumAlgorithm;
  set checksumAlgorithm(_i4.ChecksumAlgorithm? checksumAlgorithm) =>
      _$this._checksumAlgorithm = checksumAlgorithm;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  _i2.BucketLifecycleConfigurationBuilder? _lifecycleConfiguration;
  _i2.BucketLifecycleConfigurationBuilder get lifecycleConfiguration =>
      _$this._lifecycleConfiguration ??=
          new _i2.BucketLifecycleConfigurationBuilder();
  set lifecycleConfiguration(
          _i2.BucketLifecycleConfigurationBuilder? lifecycleConfiguration) =>
      _$this._lifecycleConfiguration = lifecycleConfiguration;

  PutBucketLifecycleConfigurationRequestBuilder() {
    PutBucketLifecycleConfigurationRequest._init(this);
  }

  PutBucketLifecycleConfigurationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _checksumAlgorithm = $v.checksumAlgorithm;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _lifecycleConfiguration = $v.lifecycleConfiguration?.toBuilder();
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
              expectedBucketOwner: expectedBucketOwner,
              lifecycleConfiguration: _lifecycleConfiguration?.build());
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

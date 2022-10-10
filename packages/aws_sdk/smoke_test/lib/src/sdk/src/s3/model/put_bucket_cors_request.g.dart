// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.put_bucket_cors_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutBucketCorsRequest extends PutBucketCorsRequest {
  @override
  final String bucket;
  @override
  final _i4.ChecksumAlgorithm? checksumAlgorithm;
  @override
  final String? contentMd5;
  @override
  final _i2.CorsConfiguration corsConfiguration;
  @override
  final String? expectedBucketOwner;

  factory _$PutBucketCorsRequest(
          [void Function(PutBucketCorsRequestBuilder)? updates]) =>
      (new PutBucketCorsRequestBuilder()..update(updates))._build();

  _$PutBucketCorsRequest._(
      {required this.bucket,
      this.checksumAlgorithm,
      this.contentMd5,
      required this.corsConfiguration,
      this.expectedBucketOwner})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'PutBucketCorsRequest', 'bucket');
    BuiltValueNullFieldError.checkNotNull(
        corsConfiguration, r'PutBucketCorsRequest', 'corsConfiguration');
  }

  @override
  PutBucketCorsRequest rebuild(
          void Function(PutBucketCorsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutBucketCorsRequestBuilder toBuilder() =>
      new PutBucketCorsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutBucketCorsRequest &&
        bucket == other.bucket &&
        checksumAlgorithm == other.checksumAlgorithm &&
        contentMd5 == other.contentMd5 &&
        corsConfiguration == other.corsConfiguration &&
        expectedBucketOwner == other.expectedBucketOwner;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, bucket.hashCode), checksumAlgorithm.hashCode),
                contentMd5.hashCode),
            corsConfiguration.hashCode),
        expectedBucketOwner.hashCode));
  }
}

class PutBucketCorsRequestBuilder
    implements Builder<PutBucketCorsRequest, PutBucketCorsRequestBuilder> {
  _$PutBucketCorsRequest? _$v;

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

  _i2.CorsConfigurationBuilder? _corsConfiguration;
  _i2.CorsConfigurationBuilder get corsConfiguration =>
      _$this._corsConfiguration ??= new _i2.CorsConfigurationBuilder();
  set corsConfiguration(_i2.CorsConfigurationBuilder? corsConfiguration) =>
      _$this._corsConfiguration = corsConfiguration;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  PutBucketCorsRequestBuilder() {
    PutBucketCorsRequest._init(this);
  }

  PutBucketCorsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _checksumAlgorithm = $v.checksumAlgorithm;
      _contentMd5 = $v.contentMd5;
      _corsConfiguration = $v.corsConfiguration.toBuilder();
      _expectedBucketOwner = $v.expectedBucketOwner;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutBucketCorsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutBucketCorsRequest;
  }

  @override
  void update(void Function(PutBucketCorsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutBucketCorsRequest build() => _build();

  _$PutBucketCorsRequest _build() {
    _$PutBucketCorsRequest _$result;
    try {
      _$result = _$v ??
          new _$PutBucketCorsRequest._(
              bucket: BuiltValueNullFieldError.checkNotNull(
                  bucket, r'PutBucketCorsRequest', 'bucket'),
              checksumAlgorithm: checksumAlgorithm,
              contentMd5: contentMd5,
              corsConfiguration: corsConfiguration.build(),
              expectedBucketOwner: expectedBucketOwner);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'corsConfiguration';
        corsConfiguration.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PutBucketCorsRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

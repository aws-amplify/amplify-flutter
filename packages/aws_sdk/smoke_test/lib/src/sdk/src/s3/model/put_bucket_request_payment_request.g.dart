// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.put_bucket_request_payment_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutBucketRequestPaymentRequest extends PutBucketRequestPaymentRequest {
  @override
  final String bucket;
  @override
  final _i4.ChecksumAlgorithm? checksumAlgorithm;
  @override
  final String? contentMd5;
  @override
  final String? expectedBucketOwner;
  @override
  final _i2.RequestPaymentConfiguration requestPaymentConfiguration;

  factory _$PutBucketRequestPaymentRequest(
          [void Function(PutBucketRequestPaymentRequestBuilder)? updates]) =>
      (new PutBucketRequestPaymentRequestBuilder()..update(updates))._build();

  _$PutBucketRequestPaymentRequest._(
      {required this.bucket,
      this.checksumAlgorithm,
      this.contentMd5,
      this.expectedBucketOwner,
      required this.requestPaymentConfiguration})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'PutBucketRequestPaymentRequest', 'bucket');
    BuiltValueNullFieldError.checkNotNull(requestPaymentConfiguration,
        r'PutBucketRequestPaymentRequest', 'requestPaymentConfiguration');
  }

  @override
  PutBucketRequestPaymentRequest rebuild(
          void Function(PutBucketRequestPaymentRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutBucketRequestPaymentRequestBuilder toBuilder() =>
      new PutBucketRequestPaymentRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutBucketRequestPaymentRequest &&
        bucket == other.bucket &&
        checksumAlgorithm == other.checksumAlgorithm &&
        contentMd5 == other.contentMd5 &&
        expectedBucketOwner == other.expectedBucketOwner &&
        requestPaymentConfiguration == other.requestPaymentConfiguration;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, bucket.hashCode), checksumAlgorithm.hashCode),
                contentMd5.hashCode),
            expectedBucketOwner.hashCode),
        requestPaymentConfiguration.hashCode));
  }
}

class PutBucketRequestPaymentRequestBuilder
    implements
        Builder<PutBucketRequestPaymentRequest,
            PutBucketRequestPaymentRequestBuilder> {
  _$PutBucketRequestPaymentRequest? _$v;

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

  _i2.RequestPaymentConfigurationBuilder? _requestPaymentConfiguration;
  _i2.RequestPaymentConfigurationBuilder get requestPaymentConfiguration =>
      _$this._requestPaymentConfiguration ??=
          new _i2.RequestPaymentConfigurationBuilder();
  set requestPaymentConfiguration(
          _i2.RequestPaymentConfigurationBuilder?
              requestPaymentConfiguration) =>
      _$this._requestPaymentConfiguration = requestPaymentConfiguration;

  PutBucketRequestPaymentRequestBuilder() {
    PutBucketRequestPaymentRequest._init(this);
  }

  PutBucketRequestPaymentRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _checksumAlgorithm = $v.checksumAlgorithm;
      _contentMd5 = $v.contentMd5;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _requestPaymentConfiguration = $v.requestPaymentConfiguration.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutBucketRequestPaymentRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutBucketRequestPaymentRequest;
  }

  @override
  void update(void Function(PutBucketRequestPaymentRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutBucketRequestPaymentRequest build() => _build();

  _$PutBucketRequestPaymentRequest _build() {
    _$PutBucketRequestPaymentRequest _$result;
    try {
      _$result = _$v ??
          new _$PutBucketRequestPaymentRequest._(
              bucket: BuiltValueNullFieldError.checkNotNull(
                  bucket, r'PutBucketRequestPaymentRequest', 'bucket'),
              checksumAlgorithm: checksumAlgorithm,
              contentMd5: contentMd5,
              expectedBucketOwner: expectedBucketOwner,
              requestPaymentConfiguration: requestPaymentConfiguration.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'requestPaymentConfiguration';
        requestPaymentConfiguration.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PutBucketRequestPaymentRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

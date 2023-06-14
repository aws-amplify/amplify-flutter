// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'put_bucket_request_payment_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutBucketRequestPaymentRequest extends PutBucketRequestPaymentRequest {
  @override
  final String bucket;
  @override
  final String? contentMd5;
  @override
  final _i4.ChecksumAlgorithm? checksumAlgorithm;
  @override
  final _i2.RequestPaymentConfiguration requestPaymentConfiguration;
  @override
  final String? expectedBucketOwner;

  factory _$PutBucketRequestPaymentRequest(
          [void Function(PutBucketRequestPaymentRequestBuilder)? updates]) =>
      (new PutBucketRequestPaymentRequestBuilder()..update(updates))._build();

  _$PutBucketRequestPaymentRequest._(
      {required this.bucket,
      this.contentMd5,
      this.checksumAlgorithm,
      required this.requestPaymentConfiguration,
      this.expectedBucketOwner})
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
        contentMd5 == other.contentMd5 &&
        checksumAlgorithm == other.checksumAlgorithm &&
        requestPaymentConfiguration == other.requestPaymentConfiguration &&
        expectedBucketOwner == other.expectedBucketOwner;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, contentMd5.hashCode);
    _$hash = $jc(_$hash, checksumAlgorithm.hashCode);
    _$hash = $jc(_$hash, requestPaymentConfiguration.hashCode);
    _$hash = $jc(_$hash, expectedBucketOwner.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

  String? _contentMd5;
  String? get contentMd5 => _$this._contentMd5;
  set contentMd5(String? contentMd5) => _$this._contentMd5 = contentMd5;

  _i4.ChecksumAlgorithm? _checksumAlgorithm;
  _i4.ChecksumAlgorithm? get checksumAlgorithm => _$this._checksumAlgorithm;
  set checksumAlgorithm(_i4.ChecksumAlgorithm? checksumAlgorithm) =>
      _$this._checksumAlgorithm = checksumAlgorithm;

  _i2.RequestPaymentConfigurationBuilder? _requestPaymentConfiguration;
  _i2.RequestPaymentConfigurationBuilder get requestPaymentConfiguration =>
      _$this._requestPaymentConfiguration ??=
          new _i2.RequestPaymentConfigurationBuilder();
  set requestPaymentConfiguration(
          _i2.RequestPaymentConfigurationBuilder?
              requestPaymentConfiguration) =>
      _$this._requestPaymentConfiguration = requestPaymentConfiguration;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  PutBucketRequestPaymentRequestBuilder() {
    PutBucketRequestPaymentRequest._init(this);
  }

  PutBucketRequestPaymentRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _contentMd5 = $v.contentMd5;
      _checksumAlgorithm = $v.checksumAlgorithm;
      _requestPaymentConfiguration = $v.requestPaymentConfiguration.toBuilder();
      _expectedBucketOwner = $v.expectedBucketOwner;
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
              contentMd5: contentMd5,
              checksumAlgorithm: checksumAlgorithm,
              requestPaymentConfiguration: requestPaymentConfiguration.build(),
              expectedBucketOwner: expectedBucketOwner);
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

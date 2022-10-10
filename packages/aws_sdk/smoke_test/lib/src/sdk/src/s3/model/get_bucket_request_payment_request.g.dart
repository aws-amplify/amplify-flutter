// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.get_bucket_request_payment_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetBucketRequestPaymentRequest extends GetBucketRequestPaymentRequest {
  @override
  final String bucket;
  @override
  final String? expectedBucketOwner;

  factory _$GetBucketRequestPaymentRequest(
          [void Function(GetBucketRequestPaymentRequestBuilder)? updates]) =>
      (new GetBucketRequestPaymentRequestBuilder()..update(updates))._build();

  _$GetBucketRequestPaymentRequest._(
      {required this.bucket, this.expectedBucketOwner})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'GetBucketRequestPaymentRequest', 'bucket');
  }

  @override
  GetBucketRequestPaymentRequest rebuild(
          void Function(GetBucketRequestPaymentRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetBucketRequestPaymentRequestBuilder toBuilder() =>
      new GetBucketRequestPaymentRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetBucketRequestPaymentRequest &&
        bucket == other.bucket &&
        expectedBucketOwner == other.expectedBucketOwner;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, bucket.hashCode), expectedBucketOwner.hashCode));
  }
}

class GetBucketRequestPaymentRequestBuilder
    implements
        Builder<GetBucketRequestPaymentRequest,
            GetBucketRequestPaymentRequestBuilder> {
  _$GetBucketRequestPaymentRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  GetBucketRequestPaymentRequestBuilder() {
    GetBucketRequestPaymentRequest._init(this);
  }

  GetBucketRequestPaymentRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetBucketRequestPaymentRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetBucketRequestPaymentRequest;
  }

  @override
  void update(void Function(GetBucketRequestPaymentRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetBucketRequestPaymentRequest build() => _build();

  _$GetBucketRequestPaymentRequest _build() {
    final _$result = _$v ??
        new _$GetBucketRequestPaymentRequest._(
            bucket: BuiltValueNullFieldError.checkNotNull(
                bucket, r'GetBucketRequestPaymentRequest', 'bucket'),
            expectedBucketOwner: expectedBucketOwner);
    replace(_$result);
    return _$result;
  }
}

class _$GetBucketRequestPaymentRequestPayload
    extends GetBucketRequestPaymentRequestPayload {
  factory _$GetBucketRequestPaymentRequestPayload(
          [void Function(GetBucketRequestPaymentRequestPayloadBuilder)?
              updates]) =>
      (new GetBucketRequestPaymentRequestPayloadBuilder()..update(updates))
          ._build();

  _$GetBucketRequestPaymentRequestPayload._() : super._();

  @override
  GetBucketRequestPaymentRequestPayload rebuild(
          void Function(GetBucketRequestPaymentRequestPayloadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetBucketRequestPaymentRequestPayloadBuilder toBuilder() =>
      new GetBucketRequestPaymentRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetBucketRequestPaymentRequestPayload;
  }

  @override
  int get hashCode {
    return 263045675;
  }
}

class GetBucketRequestPaymentRequestPayloadBuilder
    implements
        Builder<GetBucketRequestPaymentRequestPayload,
            GetBucketRequestPaymentRequestPayloadBuilder> {
  _$GetBucketRequestPaymentRequestPayload? _$v;

  GetBucketRequestPaymentRequestPayloadBuilder() {
    GetBucketRequestPaymentRequestPayload._init(this);
  }

  @override
  void replace(GetBucketRequestPaymentRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetBucketRequestPaymentRequestPayload;
  }

  @override
  void update(
      void Function(GetBucketRequestPaymentRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetBucketRequestPaymentRequestPayload build() => _build();

  _$GetBucketRequestPaymentRequestPayload _build() {
    final _$result = _$v ?? new _$GetBucketRequestPaymentRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

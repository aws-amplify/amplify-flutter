// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.get_bucket_logging_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetBucketLoggingRequest extends GetBucketLoggingRequest {
  @override
  final String bucket;
  @override
  final String? expectedBucketOwner;

  factory _$GetBucketLoggingRequest(
          [void Function(GetBucketLoggingRequestBuilder)? updates]) =>
      (new GetBucketLoggingRequestBuilder()..update(updates))._build();

  _$GetBucketLoggingRequest._({required this.bucket, this.expectedBucketOwner})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'GetBucketLoggingRequest', 'bucket');
  }

  @override
  GetBucketLoggingRequest rebuild(
          void Function(GetBucketLoggingRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetBucketLoggingRequestBuilder toBuilder() =>
      new GetBucketLoggingRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetBucketLoggingRequest &&
        bucket == other.bucket &&
        expectedBucketOwner == other.expectedBucketOwner;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, bucket.hashCode), expectedBucketOwner.hashCode));
  }
}

class GetBucketLoggingRequestBuilder
    implements
        Builder<GetBucketLoggingRequest, GetBucketLoggingRequestBuilder> {
  _$GetBucketLoggingRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  GetBucketLoggingRequestBuilder() {
    GetBucketLoggingRequest._init(this);
  }

  GetBucketLoggingRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetBucketLoggingRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetBucketLoggingRequest;
  }

  @override
  void update(void Function(GetBucketLoggingRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetBucketLoggingRequest build() => _build();

  _$GetBucketLoggingRequest _build() {
    final _$result = _$v ??
        new _$GetBucketLoggingRequest._(
            bucket: BuiltValueNullFieldError.checkNotNull(
                bucket, r'GetBucketLoggingRequest', 'bucket'),
            expectedBucketOwner: expectedBucketOwner);
    replace(_$result);
    return _$result;
  }
}

class _$GetBucketLoggingRequestPayload extends GetBucketLoggingRequestPayload {
  factory _$GetBucketLoggingRequestPayload(
          [void Function(GetBucketLoggingRequestPayloadBuilder)? updates]) =>
      (new GetBucketLoggingRequestPayloadBuilder()..update(updates))._build();

  _$GetBucketLoggingRequestPayload._() : super._();

  @override
  GetBucketLoggingRequestPayload rebuild(
          void Function(GetBucketLoggingRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetBucketLoggingRequestPayloadBuilder toBuilder() =>
      new GetBucketLoggingRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetBucketLoggingRequestPayload;
  }

  @override
  int get hashCode {
    return 542537693;
  }
}

class GetBucketLoggingRequestPayloadBuilder
    implements
        Builder<GetBucketLoggingRequestPayload,
            GetBucketLoggingRequestPayloadBuilder> {
  _$GetBucketLoggingRequestPayload? _$v;

  GetBucketLoggingRequestPayloadBuilder() {
    GetBucketLoggingRequestPayload._init(this);
  }

  @override
  void replace(GetBucketLoggingRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetBucketLoggingRequestPayload;
  }

  @override
  void update(void Function(GetBucketLoggingRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetBucketLoggingRequestPayload build() => _build();

  _$GetBucketLoggingRequestPayload _build() {
    final _$result = _$v ?? new _$GetBucketLoggingRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

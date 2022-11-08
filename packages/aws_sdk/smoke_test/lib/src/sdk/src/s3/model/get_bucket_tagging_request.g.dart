// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.get_bucket_tagging_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetBucketTaggingRequest extends GetBucketTaggingRequest {
  @override
  final String bucket;
  @override
  final String? expectedBucketOwner;

  factory _$GetBucketTaggingRequest(
          [void Function(GetBucketTaggingRequestBuilder)? updates]) =>
      (new GetBucketTaggingRequestBuilder()..update(updates))._build();

  _$GetBucketTaggingRequest._({required this.bucket, this.expectedBucketOwner})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'GetBucketTaggingRequest', 'bucket');
  }

  @override
  GetBucketTaggingRequest rebuild(
          void Function(GetBucketTaggingRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetBucketTaggingRequestBuilder toBuilder() =>
      new GetBucketTaggingRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetBucketTaggingRequest &&
        bucket == other.bucket &&
        expectedBucketOwner == other.expectedBucketOwner;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, bucket.hashCode), expectedBucketOwner.hashCode));
  }
}

class GetBucketTaggingRequestBuilder
    implements
        Builder<GetBucketTaggingRequest, GetBucketTaggingRequestBuilder> {
  _$GetBucketTaggingRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  GetBucketTaggingRequestBuilder() {
    GetBucketTaggingRequest._init(this);
  }

  GetBucketTaggingRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetBucketTaggingRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetBucketTaggingRequest;
  }

  @override
  void update(void Function(GetBucketTaggingRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetBucketTaggingRequest build() => _build();

  _$GetBucketTaggingRequest _build() {
    final _$result = _$v ??
        new _$GetBucketTaggingRequest._(
            bucket: BuiltValueNullFieldError.checkNotNull(
                bucket, r'GetBucketTaggingRequest', 'bucket'),
            expectedBucketOwner: expectedBucketOwner);
    replace(_$result);
    return _$result;
  }
}

class _$GetBucketTaggingRequestPayload extends GetBucketTaggingRequestPayload {
  factory _$GetBucketTaggingRequestPayload(
          [void Function(GetBucketTaggingRequestPayloadBuilder)? updates]) =>
      (new GetBucketTaggingRequestPayloadBuilder()..update(updates))._build();

  _$GetBucketTaggingRequestPayload._() : super._();

  @override
  GetBucketTaggingRequestPayload rebuild(
          void Function(GetBucketTaggingRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetBucketTaggingRequestPayloadBuilder toBuilder() =>
      new GetBucketTaggingRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetBucketTaggingRequestPayload;
  }

  @override
  int get hashCode {
    return 759406133;
  }
}

class GetBucketTaggingRequestPayloadBuilder
    implements
        Builder<GetBucketTaggingRequestPayload,
            GetBucketTaggingRequestPayloadBuilder> {
  _$GetBucketTaggingRequestPayload? _$v;

  GetBucketTaggingRequestPayloadBuilder() {
    GetBucketTaggingRequestPayload._init(this);
  }

  @override
  void replace(GetBucketTaggingRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetBucketTaggingRequestPayload;
  }

  @override
  void update(void Function(GetBucketTaggingRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetBucketTaggingRequestPayload build() => _build();

  _$GetBucketTaggingRequestPayload _build() {
    final _$result = _$v ?? new _$GetBucketTaggingRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

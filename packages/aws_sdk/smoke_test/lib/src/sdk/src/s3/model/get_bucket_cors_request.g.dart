// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.get_bucket_cors_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetBucketCorsRequest extends GetBucketCorsRequest {
  @override
  final String bucket;
  @override
  final String? expectedBucketOwner;

  factory _$GetBucketCorsRequest(
          [void Function(GetBucketCorsRequestBuilder)? updates]) =>
      (new GetBucketCorsRequestBuilder()..update(updates))._build();

  _$GetBucketCorsRequest._({required this.bucket, this.expectedBucketOwner})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'GetBucketCorsRequest', 'bucket');
  }

  @override
  GetBucketCorsRequest rebuild(
          void Function(GetBucketCorsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetBucketCorsRequestBuilder toBuilder() =>
      new GetBucketCorsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetBucketCorsRequest &&
        bucket == other.bucket &&
        expectedBucketOwner == other.expectedBucketOwner;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, bucket.hashCode), expectedBucketOwner.hashCode));
  }
}

class GetBucketCorsRequestBuilder
    implements Builder<GetBucketCorsRequest, GetBucketCorsRequestBuilder> {
  _$GetBucketCorsRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  GetBucketCorsRequestBuilder() {
    GetBucketCorsRequest._init(this);
  }

  GetBucketCorsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetBucketCorsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetBucketCorsRequest;
  }

  @override
  void update(void Function(GetBucketCorsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetBucketCorsRequest build() => _build();

  _$GetBucketCorsRequest _build() {
    final _$result = _$v ??
        new _$GetBucketCorsRequest._(
            bucket: BuiltValueNullFieldError.checkNotNull(
                bucket, r'GetBucketCorsRequest', 'bucket'),
            expectedBucketOwner: expectedBucketOwner);
    replace(_$result);
    return _$result;
  }
}

class _$GetBucketCorsRequestPayload extends GetBucketCorsRequestPayload {
  factory _$GetBucketCorsRequestPayload(
          [void Function(GetBucketCorsRequestPayloadBuilder)? updates]) =>
      (new GetBucketCorsRequestPayloadBuilder()..update(updates))._build();

  _$GetBucketCorsRequestPayload._() : super._();

  @override
  GetBucketCorsRequestPayload rebuild(
          void Function(GetBucketCorsRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetBucketCorsRequestPayloadBuilder toBuilder() =>
      new GetBucketCorsRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetBucketCorsRequestPayload;
  }

  @override
  int get hashCode {
    return 260296850;
  }
}

class GetBucketCorsRequestPayloadBuilder
    implements
        Builder<GetBucketCorsRequestPayload,
            GetBucketCorsRequestPayloadBuilder> {
  _$GetBucketCorsRequestPayload? _$v;

  GetBucketCorsRequestPayloadBuilder() {
    GetBucketCorsRequestPayload._init(this);
  }

  @override
  void replace(GetBucketCorsRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetBucketCorsRequestPayload;
  }

  @override
  void update(void Function(GetBucketCorsRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetBucketCorsRequestPayload build() => _build();

  _$GetBucketCorsRequestPayload _build() {
    final _$result = _$v ?? new _$GetBucketCorsRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

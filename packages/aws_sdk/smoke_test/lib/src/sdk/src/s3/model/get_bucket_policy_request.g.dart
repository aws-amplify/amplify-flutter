// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.get_bucket_policy_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetBucketPolicyRequest extends GetBucketPolicyRequest {
  @override
  final String bucket;
  @override
  final String? expectedBucketOwner;

  factory _$GetBucketPolicyRequest(
          [void Function(GetBucketPolicyRequestBuilder)? updates]) =>
      (new GetBucketPolicyRequestBuilder()..update(updates))._build();

  _$GetBucketPolicyRequest._({required this.bucket, this.expectedBucketOwner})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'GetBucketPolicyRequest', 'bucket');
  }

  @override
  GetBucketPolicyRequest rebuild(
          void Function(GetBucketPolicyRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetBucketPolicyRequestBuilder toBuilder() =>
      new GetBucketPolicyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetBucketPolicyRequest &&
        bucket == other.bucket &&
        expectedBucketOwner == other.expectedBucketOwner;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, bucket.hashCode), expectedBucketOwner.hashCode));
  }
}

class GetBucketPolicyRequestBuilder
    implements Builder<GetBucketPolicyRequest, GetBucketPolicyRequestBuilder> {
  _$GetBucketPolicyRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  GetBucketPolicyRequestBuilder() {
    GetBucketPolicyRequest._init(this);
  }

  GetBucketPolicyRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetBucketPolicyRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetBucketPolicyRequest;
  }

  @override
  void update(void Function(GetBucketPolicyRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetBucketPolicyRequest build() => _build();

  _$GetBucketPolicyRequest _build() {
    final _$result = _$v ??
        new _$GetBucketPolicyRequest._(
            bucket: BuiltValueNullFieldError.checkNotNull(
                bucket, r'GetBucketPolicyRequest', 'bucket'),
            expectedBucketOwner: expectedBucketOwner);
    replace(_$result);
    return _$result;
  }
}

class _$GetBucketPolicyRequestPayload extends GetBucketPolicyRequestPayload {
  factory _$GetBucketPolicyRequestPayload(
          [void Function(GetBucketPolicyRequestPayloadBuilder)? updates]) =>
      (new GetBucketPolicyRequestPayloadBuilder()..update(updates))._build();

  _$GetBucketPolicyRequestPayload._() : super._();

  @override
  GetBucketPolicyRequestPayload rebuild(
          void Function(GetBucketPolicyRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetBucketPolicyRequestPayloadBuilder toBuilder() =>
      new GetBucketPolicyRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetBucketPolicyRequestPayload;
  }

  @override
  int get hashCode {
    return 574608226;
  }
}

class GetBucketPolicyRequestPayloadBuilder
    implements
        Builder<GetBucketPolicyRequestPayload,
            GetBucketPolicyRequestPayloadBuilder> {
  _$GetBucketPolicyRequestPayload? _$v;

  GetBucketPolicyRequestPayloadBuilder() {
    GetBucketPolicyRequestPayload._init(this);
  }

  @override
  void replace(GetBucketPolicyRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetBucketPolicyRequestPayload;
  }

  @override
  void update(void Function(GetBucketPolicyRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetBucketPolicyRequestPayload build() => _build();

  _$GetBucketPolicyRequestPayload _build() {
    final _$result = _$v ?? new _$GetBucketPolicyRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

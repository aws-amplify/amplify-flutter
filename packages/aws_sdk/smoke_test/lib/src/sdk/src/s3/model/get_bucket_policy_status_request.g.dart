// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.get_bucket_policy_status_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetBucketPolicyStatusRequest extends GetBucketPolicyStatusRequest {
  @override
  final String bucket;
  @override
  final String? expectedBucketOwner;

  factory _$GetBucketPolicyStatusRequest(
          [void Function(GetBucketPolicyStatusRequestBuilder)? updates]) =>
      (new GetBucketPolicyStatusRequestBuilder()..update(updates))._build();

  _$GetBucketPolicyStatusRequest._(
      {required this.bucket, this.expectedBucketOwner})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'GetBucketPolicyStatusRequest', 'bucket');
  }

  @override
  GetBucketPolicyStatusRequest rebuild(
          void Function(GetBucketPolicyStatusRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetBucketPolicyStatusRequestBuilder toBuilder() =>
      new GetBucketPolicyStatusRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetBucketPolicyStatusRequest &&
        bucket == other.bucket &&
        expectedBucketOwner == other.expectedBucketOwner;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, bucket.hashCode), expectedBucketOwner.hashCode));
  }
}

class GetBucketPolicyStatusRequestBuilder
    implements
        Builder<GetBucketPolicyStatusRequest,
            GetBucketPolicyStatusRequestBuilder> {
  _$GetBucketPolicyStatusRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  GetBucketPolicyStatusRequestBuilder() {
    GetBucketPolicyStatusRequest._init(this);
  }

  GetBucketPolicyStatusRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetBucketPolicyStatusRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetBucketPolicyStatusRequest;
  }

  @override
  void update(void Function(GetBucketPolicyStatusRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetBucketPolicyStatusRequest build() => _build();

  _$GetBucketPolicyStatusRequest _build() {
    final _$result = _$v ??
        new _$GetBucketPolicyStatusRequest._(
            bucket: BuiltValueNullFieldError.checkNotNull(
                bucket, r'GetBucketPolicyStatusRequest', 'bucket'),
            expectedBucketOwner: expectedBucketOwner);
    replace(_$result);
    return _$result;
  }
}

class _$GetBucketPolicyStatusRequestPayload
    extends GetBucketPolicyStatusRequestPayload {
  factory _$GetBucketPolicyStatusRequestPayload(
          [void Function(GetBucketPolicyStatusRequestPayloadBuilder)?
              updates]) =>
      (new GetBucketPolicyStatusRequestPayloadBuilder()..update(updates))
          ._build();

  _$GetBucketPolicyStatusRequestPayload._() : super._();

  @override
  GetBucketPolicyStatusRequestPayload rebuild(
          void Function(GetBucketPolicyStatusRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetBucketPolicyStatusRequestPayloadBuilder toBuilder() =>
      new GetBucketPolicyStatusRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetBucketPolicyStatusRequestPayload;
  }

  @override
  int get hashCode {
    return 806442723;
  }
}

class GetBucketPolicyStatusRequestPayloadBuilder
    implements
        Builder<GetBucketPolicyStatusRequestPayload,
            GetBucketPolicyStatusRequestPayloadBuilder> {
  _$GetBucketPolicyStatusRequestPayload? _$v;

  GetBucketPolicyStatusRequestPayloadBuilder() {
    GetBucketPolicyStatusRequestPayload._init(this);
  }

  @override
  void replace(GetBucketPolicyStatusRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetBucketPolicyStatusRequestPayload;
  }

  @override
  void update(
      void Function(GetBucketPolicyStatusRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetBucketPolicyStatusRequestPayload build() => _build();

  _$GetBucketPolicyStatusRequestPayload _build() {
    final _$result = _$v ?? new _$GetBucketPolicyStatusRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

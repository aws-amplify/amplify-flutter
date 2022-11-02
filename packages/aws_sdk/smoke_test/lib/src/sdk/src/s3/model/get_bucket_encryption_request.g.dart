// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.get_bucket_encryption_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetBucketEncryptionRequest extends GetBucketEncryptionRequest {
  @override
  final String bucket;
  @override
  final String? expectedBucketOwner;

  factory _$GetBucketEncryptionRequest(
          [void Function(GetBucketEncryptionRequestBuilder)? updates]) =>
      (new GetBucketEncryptionRequestBuilder()..update(updates))._build();

  _$GetBucketEncryptionRequest._(
      {required this.bucket, this.expectedBucketOwner})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'GetBucketEncryptionRequest', 'bucket');
  }

  @override
  GetBucketEncryptionRequest rebuild(
          void Function(GetBucketEncryptionRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetBucketEncryptionRequestBuilder toBuilder() =>
      new GetBucketEncryptionRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetBucketEncryptionRequest &&
        bucket == other.bucket &&
        expectedBucketOwner == other.expectedBucketOwner;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, bucket.hashCode), expectedBucketOwner.hashCode));
  }
}

class GetBucketEncryptionRequestBuilder
    implements
        Builder<GetBucketEncryptionRequest, GetBucketEncryptionRequestBuilder> {
  _$GetBucketEncryptionRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  GetBucketEncryptionRequestBuilder() {
    GetBucketEncryptionRequest._init(this);
  }

  GetBucketEncryptionRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetBucketEncryptionRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetBucketEncryptionRequest;
  }

  @override
  void update(void Function(GetBucketEncryptionRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetBucketEncryptionRequest build() => _build();

  _$GetBucketEncryptionRequest _build() {
    final _$result = _$v ??
        new _$GetBucketEncryptionRequest._(
            bucket: BuiltValueNullFieldError.checkNotNull(
                bucket, r'GetBucketEncryptionRequest', 'bucket'),
            expectedBucketOwner: expectedBucketOwner);
    replace(_$result);
    return _$result;
  }
}

class _$GetBucketEncryptionRequestPayload
    extends GetBucketEncryptionRequestPayload {
  factory _$GetBucketEncryptionRequestPayload(
          [void Function(GetBucketEncryptionRequestPayloadBuilder)? updates]) =>
      (new GetBucketEncryptionRequestPayloadBuilder()..update(updates))
          ._build();

  _$GetBucketEncryptionRequestPayload._() : super._();

  @override
  GetBucketEncryptionRequestPayload rebuild(
          void Function(GetBucketEncryptionRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetBucketEncryptionRequestPayloadBuilder toBuilder() =>
      new GetBucketEncryptionRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetBucketEncryptionRequestPayload;
  }

  @override
  int get hashCode {
    return 529292699;
  }
}

class GetBucketEncryptionRequestPayloadBuilder
    implements
        Builder<GetBucketEncryptionRequestPayload,
            GetBucketEncryptionRequestPayloadBuilder> {
  _$GetBucketEncryptionRequestPayload? _$v;

  GetBucketEncryptionRequestPayloadBuilder() {
    GetBucketEncryptionRequestPayload._init(this);
  }

  @override
  void replace(GetBucketEncryptionRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetBucketEncryptionRequestPayload;
  }

  @override
  void update(
      void Function(GetBucketEncryptionRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetBucketEncryptionRequestPayload build() => _build();

  _$GetBucketEncryptionRequestPayload _build() {
    final _$result = _$v ?? new _$GetBucketEncryptionRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

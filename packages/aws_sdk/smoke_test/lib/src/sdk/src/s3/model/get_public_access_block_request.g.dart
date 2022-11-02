// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.get_public_access_block_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetPublicAccessBlockRequest extends GetPublicAccessBlockRequest {
  @override
  final String bucket;
  @override
  final String? expectedBucketOwner;

  factory _$GetPublicAccessBlockRequest(
          [void Function(GetPublicAccessBlockRequestBuilder)? updates]) =>
      (new GetPublicAccessBlockRequestBuilder()..update(updates))._build();

  _$GetPublicAccessBlockRequest._(
      {required this.bucket, this.expectedBucketOwner})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'GetPublicAccessBlockRequest', 'bucket');
  }

  @override
  GetPublicAccessBlockRequest rebuild(
          void Function(GetPublicAccessBlockRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetPublicAccessBlockRequestBuilder toBuilder() =>
      new GetPublicAccessBlockRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetPublicAccessBlockRequest &&
        bucket == other.bucket &&
        expectedBucketOwner == other.expectedBucketOwner;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, bucket.hashCode), expectedBucketOwner.hashCode));
  }
}

class GetPublicAccessBlockRequestBuilder
    implements
        Builder<GetPublicAccessBlockRequest,
            GetPublicAccessBlockRequestBuilder> {
  _$GetPublicAccessBlockRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  GetPublicAccessBlockRequestBuilder() {
    GetPublicAccessBlockRequest._init(this);
  }

  GetPublicAccessBlockRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetPublicAccessBlockRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetPublicAccessBlockRequest;
  }

  @override
  void update(void Function(GetPublicAccessBlockRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetPublicAccessBlockRequest build() => _build();

  _$GetPublicAccessBlockRequest _build() {
    final _$result = _$v ??
        new _$GetPublicAccessBlockRequest._(
            bucket: BuiltValueNullFieldError.checkNotNull(
                bucket, r'GetPublicAccessBlockRequest', 'bucket'),
            expectedBucketOwner: expectedBucketOwner);
    replace(_$result);
    return _$result;
  }
}

class _$GetPublicAccessBlockRequestPayload
    extends GetPublicAccessBlockRequestPayload {
  factory _$GetPublicAccessBlockRequestPayload(
          [void Function(GetPublicAccessBlockRequestPayloadBuilder)?
              updates]) =>
      (new GetPublicAccessBlockRequestPayloadBuilder()..update(updates))
          ._build();

  _$GetPublicAccessBlockRequestPayload._() : super._();

  @override
  GetPublicAccessBlockRequestPayload rebuild(
          void Function(GetPublicAccessBlockRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetPublicAccessBlockRequestPayloadBuilder toBuilder() =>
      new GetPublicAccessBlockRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetPublicAccessBlockRequestPayload;
  }

  @override
  int get hashCode {
    return 1028206343;
  }
}

class GetPublicAccessBlockRequestPayloadBuilder
    implements
        Builder<GetPublicAccessBlockRequestPayload,
            GetPublicAccessBlockRequestPayloadBuilder> {
  _$GetPublicAccessBlockRequestPayload? _$v;

  GetPublicAccessBlockRequestPayloadBuilder() {
    GetPublicAccessBlockRequestPayload._init(this);
  }

  @override
  void replace(GetPublicAccessBlockRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetPublicAccessBlockRequestPayload;
  }

  @override
  void update(
      void Function(GetPublicAccessBlockRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetPublicAccessBlockRequestPayload build() => _build();

  _$GetPublicAccessBlockRequestPayload _build() {
    final _$result = _$v ?? new _$GetPublicAccessBlockRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

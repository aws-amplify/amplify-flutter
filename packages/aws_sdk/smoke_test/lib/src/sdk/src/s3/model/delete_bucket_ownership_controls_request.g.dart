// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.delete_bucket_ownership_controls_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteBucketOwnershipControlsRequest
    extends DeleteBucketOwnershipControlsRequest {
  @override
  final String bucket;
  @override
  final String? expectedBucketOwner;

  factory _$DeleteBucketOwnershipControlsRequest(
          [void Function(DeleteBucketOwnershipControlsRequestBuilder)?
              updates]) =>
      (new DeleteBucketOwnershipControlsRequestBuilder()..update(updates))
          ._build();

  _$DeleteBucketOwnershipControlsRequest._(
      {required this.bucket, this.expectedBucketOwner})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'DeleteBucketOwnershipControlsRequest', 'bucket');
  }

  @override
  DeleteBucketOwnershipControlsRequest rebuild(
          void Function(DeleteBucketOwnershipControlsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteBucketOwnershipControlsRequestBuilder toBuilder() =>
      new DeleteBucketOwnershipControlsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteBucketOwnershipControlsRequest &&
        bucket == other.bucket &&
        expectedBucketOwner == other.expectedBucketOwner;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, bucket.hashCode), expectedBucketOwner.hashCode));
  }
}

class DeleteBucketOwnershipControlsRequestBuilder
    implements
        Builder<DeleteBucketOwnershipControlsRequest,
            DeleteBucketOwnershipControlsRequestBuilder> {
  _$DeleteBucketOwnershipControlsRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  DeleteBucketOwnershipControlsRequestBuilder() {
    DeleteBucketOwnershipControlsRequest._init(this);
  }

  DeleteBucketOwnershipControlsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteBucketOwnershipControlsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteBucketOwnershipControlsRequest;
  }

  @override
  void update(
      void Function(DeleteBucketOwnershipControlsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteBucketOwnershipControlsRequest build() => _build();

  _$DeleteBucketOwnershipControlsRequest _build() {
    final _$result = _$v ??
        new _$DeleteBucketOwnershipControlsRequest._(
            bucket: BuiltValueNullFieldError.checkNotNull(
                bucket, r'DeleteBucketOwnershipControlsRequest', 'bucket'),
            expectedBucketOwner: expectedBucketOwner);
    replace(_$result);
    return _$result;
  }
}

class _$DeleteBucketOwnershipControlsRequestPayload
    extends DeleteBucketOwnershipControlsRequestPayload {
  factory _$DeleteBucketOwnershipControlsRequestPayload(
          [void Function(DeleteBucketOwnershipControlsRequestPayloadBuilder)?
              updates]) =>
      (new DeleteBucketOwnershipControlsRequestPayloadBuilder()
            ..update(updates))
          ._build();

  _$DeleteBucketOwnershipControlsRequestPayload._() : super._();

  @override
  DeleteBucketOwnershipControlsRequestPayload rebuild(
          void Function(DeleteBucketOwnershipControlsRequestPayloadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteBucketOwnershipControlsRequestPayloadBuilder toBuilder() =>
      new DeleteBucketOwnershipControlsRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteBucketOwnershipControlsRequestPayload;
  }

  @override
  int get hashCode {
    return 223817415;
  }
}

class DeleteBucketOwnershipControlsRequestPayloadBuilder
    implements
        Builder<DeleteBucketOwnershipControlsRequestPayload,
            DeleteBucketOwnershipControlsRequestPayloadBuilder> {
  _$DeleteBucketOwnershipControlsRequestPayload? _$v;

  DeleteBucketOwnershipControlsRequestPayloadBuilder() {
    DeleteBucketOwnershipControlsRequestPayload._init(this);
  }

  @override
  void replace(DeleteBucketOwnershipControlsRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteBucketOwnershipControlsRequestPayload;
  }

  @override
  void update(
      void Function(DeleteBucketOwnershipControlsRequestPayloadBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteBucketOwnershipControlsRequestPayload build() => _build();

  _$DeleteBucketOwnershipControlsRequestPayload _build() {
    final _$result =
        _$v ?? new _$DeleteBucketOwnershipControlsRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

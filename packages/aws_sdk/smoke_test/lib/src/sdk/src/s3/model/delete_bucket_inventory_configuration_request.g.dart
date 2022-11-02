// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.delete_bucket_inventory_configuration_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteBucketInventoryConfigurationRequest
    extends DeleteBucketInventoryConfigurationRequest {
  @override
  final String bucket;
  @override
  final String? expectedBucketOwner;
  @override
  final String id;

  factory _$DeleteBucketInventoryConfigurationRequest(
          [void Function(DeleteBucketInventoryConfigurationRequestBuilder)?
              updates]) =>
      (new DeleteBucketInventoryConfigurationRequestBuilder()..update(updates))
          ._build();

  _$DeleteBucketInventoryConfigurationRequest._(
      {required this.bucket, this.expectedBucketOwner, required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'DeleteBucketInventoryConfigurationRequest', 'bucket');
    BuiltValueNullFieldError.checkNotNull(
        id, r'DeleteBucketInventoryConfigurationRequest', 'id');
  }

  @override
  DeleteBucketInventoryConfigurationRequest rebuild(
          void Function(DeleteBucketInventoryConfigurationRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteBucketInventoryConfigurationRequestBuilder toBuilder() =>
      new DeleteBucketInventoryConfigurationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteBucketInventoryConfigurationRequest &&
        bucket == other.bucket &&
        expectedBucketOwner == other.expectedBucketOwner &&
        id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, bucket.hashCode), expectedBucketOwner.hashCode),
        id.hashCode));
  }
}

class DeleteBucketInventoryConfigurationRequestBuilder
    implements
        Builder<DeleteBucketInventoryConfigurationRequest,
            DeleteBucketInventoryConfigurationRequestBuilder> {
  _$DeleteBucketInventoryConfigurationRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  DeleteBucketInventoryConfigurationRequestBuilder() {
    DeleteBucketInventoryConfigurationRequest._init(this);
  }

  DeleteBucketInventoryConfigurationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteBucketInventoryConfigurationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteBucketInventoryConfigurationRequest;
  }

  @override
  void update(
      void Function(DeleteBucketInventoryConfigurationRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteBucketInventoryConfigurationRequest build() => _build();

  _$DeleteBucketInventoryConfigurationRequest _build() {
    final _$result = _$v ??
        new _$DeleteBucketInventoryConfigurationRequest._(
            bucket: BuiltValueNullFieldError.checkNotNull(
                bucket, r'DeleteBucketInventoryConfigurationRequest', 'bucket'),
            expectedBucketOwner: expectedBucketOwner,
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'DeleteBucketInventoryConfigurationRequest', 'id'));
    replace(_$result);
    return _$result;
  }
}

class _$DeleteBucketInventoryConfigurationRequestPayload
    extends DeleteBucketInventoryConfigurationRequestPayload {
  factory _$DeleteBucketInventoryConfigurationRequestPayload(
          [void Function(
                  DeleteBucketInventoryConfigurationRequestPayloadBuilder)?
              updates]) =>
      (new DeleteBucketInventoryConfigurationRequestPayloadBuilder()
            ..update(updates))
          ._build();

  _$DeleteBucketInventoryConfigurationRequestPayload._() : super._();

  @override
  DeleteBucketInventoryConfigurationRequestPayload rebuild(
          void Function(DeleteBucketInventoryConfigurationRequestPayloadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteBucketInventoryConfigurationRequestPayloadBuilder toBuilder() =>
      new DeleteBucketInventoryConfigurationRequestPayloadBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteBucketInventoryConfigurationRequestPayload;
  }

  @override
  int get hashCode {
    return 592058525;
  }
}

class DeleteBucketInventoryConfigurationRequestPayloadBuilder
    implements
        Builder<DeleteBucketInventoryConfigurationRequestPayload,
            DeleteBucketInventoryConfigurationRequestPayloadBuilder> {
  _$DeleteBucketInventoryConfigurationRequestPayload? _$v;

  DeleteBucketInventoryConfigurationRequestPayloadBuilder() {
    DeleteBucketInventoryConfigurationRequestPayload._init(this);
  }

  @override
  void replace(DeleteBucketInventoryConfigurationRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteBucketInventoryConfigurationRequestPayload;
  }

  @override
  void update(
      void Function(DeleteBucketInventoryConfigurationRequestPayloadBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteBucketInventoryConfigurationRequestPayload build() => _build();

  _$DeleteBucketInventoryConfigurationRequestPayload _build() {
    final _$result =
        _$v ?? new _$DeleteBucketInventoryConfigurationRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

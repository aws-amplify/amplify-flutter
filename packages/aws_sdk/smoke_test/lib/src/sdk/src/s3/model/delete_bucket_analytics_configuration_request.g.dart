// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.delete_bucket_analytics_configuration_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteBucketAnalyticsConfigurationRequest
    extends DeleteBucketAnalyticsConfigurationRequest {
  @override
  final String bucket;
  @override
  final String? expectedBucketOwner;
  @override
  final String id;

  factory _$DeleteBucketAnalyticsConfigurationRequest(
          [void Function(DeleteBucketAnalyticsConfigurationRequestBuilder)?
              updates]) =>
      (new DeleteBucketAnalyticsConfigurationRequestBuilder()..update(updates))
          ._build();

  _$DeleteBucketAnalyticsConfigurationRequest._(
      {required this.bucket, this.expectedBucketOwner, required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'DeleteBucketAnalyticsConfigurationRequest', 'bucket');
    BuiltValueNullFieldError.checkNotNull(
        id, r'DeleteBucketAnalyticsConfigurationRequest', 'id');
  }

  @override
  DeleteBucketAnalyticsConfigurationRequest rebuild(
          void Function(DeleteBucketAnalyticsConfigurationRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteBucketAnalyticsConfigurationRequestBuilder toBuilder() =>
      new DeleteBucketAnalyticsConfigurationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteBucketAnalyticsConfigurationRequest &&
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

class DeleteBucketAnalyticsConfigurationRequestBuilder
    implements
        Builder<DeleteBucketAnalyticsConfigurationRequest,
            DeleteBucketAnalyticsConfigurationRequestBuilder> {
  _$DeleteBucketAnalyticsConfigurationRequest? _$v;

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

  DeleteBucketAnalyticsConfigurationRequestBuilder() {
    DeleteBucketAnalyticsConfigurationRequest._init(this);
  }

  DeleteBucketAnalyticsConfigurationRequestBuilder get _$this {
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
  void replace(DeleteBucketAnalyticsConfigurationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteBucketAnalyticsConfigurationRequest;
  }

  @override
  void update(
      void Function(DeleteBucketAnalyticsConfigurationRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteBucketAnalyticsConfigurationRequest build() => _build();

  _$DeleteBucketAnalyticsConfigurationRequest _build() {
    final _$result = _$v ??
        new _$DeleteBucketAnalyticsConfigurationRequest._(
            bucket: BuiltValueNullFieldError.checkNotNull(
                bucket, r'DeleteBucketAnalyticsConfigurationRequest', 'bucket'),
            expectedBucketOwner: expectedBucketOwner,
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'DeleteBucketAnalyticsConfigurationRequest', 'id'));
    replace(_$result);
    return _$result;
  }
}

class _$DeleteBucketAnalyticsConfigurationRequestPayload
    extends DeleteBucketAnalyticsConfigurationRequestPayload {
  factory _$DeleteBucketAnalyticsConfigurationRequestPayload(
          [void Function(
                  DeleteBucketAnalyticsConfigurationRequestPayloadBuilder)?
              updates]) =>
      (new DeleteBucketAnalyticsConfigurationRequestPayloadBuilder()
            ..update(updates))
          ._build();

  _$DeleteBucketAnalyticsConfigurationRequestPayload._() : super._();

  @override
  DeleteBucketAnalyticsConfigurationRequestPayload rebuild(
          void Function(DeleteBucketAnalyticsConfigurationRequestPayloadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteBucketAnalyticsConfigurationRequestPayloadBuilder toBuilder() =>
      new DeleteBucketAnalyticsConfigurationRequestPayloadBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteBucketAnalyticsConfigurationRequestPayload;
  }

  @override
  int get hashCode {
    return 969921517;
  }
}

class DeleteBucketAnalyticsConfigurationRequestPayloadBuilder
    implements
        Builder<DeleteBucketAnalyticsConfigurationRequestPayload,
            DeleteBucketAnalyticsConfigurationRequestPayloadBuilder> {
  _$DeleteBucketAnalyticsConfigurationRequestPayload? _$v;

  DeleteBucketAnalyticsConfigurationRequestPayloadBuilder() {
    DeleteBucketAnalyticsConfigurationRequestPayload._init(this);
  }

  @override
  void replace(DeleteBucketAnalyticsConfigurationRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteBucketAnalyticsConfigurationRequestPayload;
  }

  @override
  void update(
      void Function(DeleteBucketAnalyticsConfigurationRequestPayloadBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteBucketAnalyticsConfigurationRequestPayload build() => _build();

  _$DeleteBucketAnalyticsConfigurationRequestPayload _build() {
    final _$result =
        _$v ?? new _$DeleteBucketAnalyticsConfigurationRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.delete_bucket_intelligent_tiering_configuration_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteBucketIntelligentTieringConfigurationRequest
    extends DeleteBucketIntelligentTieringConfigurationRequest {
  @override
  final String bucket;
  @override
  final String id;

  factory _$DeleteBucketIntelligentTieringConfigurationRequest(
          [void Function(
                  DeleteBucketIntelligentTieringConfigurationRequestBuilder)?
              updates]) =>
      (new DeleteBucketIntelligentTieringConfigurationRequestBuilder()
            ..update(updates))
          ._build();

  _$DeleteBucketIntelligentTieringConfigurationRequest._(
      {required this.bucket, required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(bucket,
        r'DeleteBucketIntelligentTieringConfigurationRequest', 'bucket');
    BuiltValueNullFieldError.checkNotNull(
        id, r'DeleteBucketIntelligentTieringConfigurationRequest', 'id');
  }

  @override
  DeleteBucketIntelligentTieringConfigurationRequest rebuild(
          void Function(
                  DeleteBucketIntelligentTieringConfigurationRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteBucketIntelligentTieringConfigurationRequestBuilder toBuilder() =>
      new DeleteBucketIntelligentTieringConfigurationRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteBucketIntelligentTieringConfigurationRequest &&
        bucket == other.bucket &&
        id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteBucketIntelligentTieringConfigurationRequestBuilder
    implements
        Builder<DeleteBucketIntelligentTieringConfigurationRequest,
            DeleteBucketIntelligentTieringConfigurationRequestBuilder> {
  _$DeleteBucketIntelligentTieringConfigurationRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  DeleteBucketIntelligentTieringConfigurationRequestBuilder() {
    DeleteBucketIntelligentTieringConfigurationRequest._init(this);
  }

  DeleteBucketIntelligentTieringConfigurationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteBucketIntelligentTieringConfigurationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteBucketIntelligentTieringConfigurationRequest;
  }

  @override
  void update(
      void Function(DeleteBucketIntelligentTieringConfigurationRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteBucketIntelligentTieringConfigurationRequest build() => _build();

  _$DeleteBucketIntelligentTieringConfigurationRequest _build() {
    final _$result = _$v ??
        new _$DeleteBucketIntelligentTieringConfigurationRequest._(
            bucket: BuiltValueNullFieldError.checkNotNull(
                bucket,
                r'DeleteBucketIntelligentTieringConfigurationRequest',
                'bucket'),
            id: BuiltValueNullFieldError.checkNotNull(id,
                r'DeleteBucketIntelligentTieringConfigurationRequest', 'id'));
    replace(_$result);
    return _$result;
  }
}

class _$DeleteBucketIntelligentTieringConfigurationRequestPayload
    extends DeleteBucketIntelligentTieringConfigurationRequestPayload {
  factory _$DeleteBucketIntelligentTieringConfigurationRequestPayload(
          [void Function(
                  DeleteBucketIntelligentTieringConfigurationRequestPayloadBuilder)?
              updates]) =>
      (new DeleteBucketIntelligentTieringConfigurationRequestPayloadBuilder()
            ..update(updates))
          ._build();

  _$DeleteBucketIntelligentTieringConfigurationRequestPayload._() : super._();

  @override
  DeleteBucketIntelligentTieringConfigurationRequestPayload rebuild(
          void Function(
                  DeleteBucketIntelligentTieringConfigurationRequestPayloadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteBucketIntelligentTieringConfigurationRequestPayloadBuilder
      toBuilder() =>
          new DeleteBucketIntelligentTieringConfigurationRequestPayloadBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteBucketIntelligentTieringConfigurationRequestPayload;
  }

  @override
  int get hashCode {
    return 396532135;
  }
}

class DeleteBucketIntelligentTieringConfigurationRequestPayloadBuilder
    implements
        Builder<DeleteBucketIntelligentTieringConfigurationRequestPayload,
            DeleteBucketIntelligentTieringConfigurationRequestPayloadBuilder> {
  _$DeleteBucketIntelligentTieringConfigurationRequestPayload? _$v;

  DeleteBucketIntelligentTieringConfigurationRequestPayloadBuilder() {
    DeleteBucketIntelligentTieringConfigurationRequestPayload._init(this);
  }

  @override
  void replace(
      DeleteBucketIntelligentTieringConfigurationRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteBucketIntelligentTieringConfigurationRequestPayload;
  }

  @override
  void update(
      void Function(
              DeleteBucketIntelligentTieringConfigurationRequestPayloadBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteBucketIntelligentTieringConfigurationRequestPayload build() => _build();

  _$DeleteBucketIntelligentTieringConfigurationRequestPayload _build() {
    final _$result = _$v ??
        new _$DeleteBucketIntelligentTieringConfigurationRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

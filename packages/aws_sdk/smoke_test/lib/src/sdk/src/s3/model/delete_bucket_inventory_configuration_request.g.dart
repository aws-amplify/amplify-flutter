// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_bucket_inventory_configuration_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteBucketInventoryConfigurationRequest
    extends DeleteBucketInventoryConfigurationRequest {
  @override
  final String bucket;
  @override
  final String id;
  @override
  final String? expectedBucketOwner;

  factory _$DeleteBucketInventoryConfigurationRequest(
          [void Function(DeleteBucketInventoryConfigurationRequestBuilder)?
              updates]) =>
      (new DeleteBucketInventoryConfigurationRequestBuilder()..update(updates))
          ._build();

  _$DeleteBucketInventoryConfigurationRequest._(
      {required this.bucket, required this.id, this.expectedBucketOwner})
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
        id == other.id &&
        expectedBucketOwner == other.expectedBucketOwner;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, expectedBucketOwner.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  DeleteBucketInventoryConfigurationRequestBuilder();

  DeleteBucketInventoryConfigurationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _id = $v.id;
      _expectedBucketOwner = $v.expectedBucketOwner;
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
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'DeleteBucketInventoryConfigurationRequest', 'id'),
            expectedBucketOwner: expectedBucketOwner);
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

  DeleteBucketInventoryConfigurationRequestPayloadBuilder();

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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

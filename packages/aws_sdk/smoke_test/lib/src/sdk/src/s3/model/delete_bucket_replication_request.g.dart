// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_bucket_replication_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteBucketReplicationRequest extends DeleteBucketReplicationRequest {
  @override
  final String bucket;
  @override
  final String? expectedBucketOwner;

  factory _$DeleteBucketReplicationRequest(
          [void Function(DeleteBucketReplicationRequestBuilder)? updates]) =>
      (new DeleteBucketReplicationRequestBuilder()..update(updates))._build();

  _$DeleteBucketReplicationRequest._(
      {required this.bucket, this.expectedBucketOwner})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'DeleteBucketReplicationRequest', 'bucket');
  }

  @override
  DeleteBucketReplicationRequest rebuild(
          void Function(DeleteBucketReplicationRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteBucketReplicationRequestBuilder toBuilder() =>
      new DeleteBucketReplicationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteBucketReplicationRequest &&
        bucket == other.bucket &&
        expectedBucketOwner == other.expectedBucketOwner;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, expectedBucketOwner.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteBucketReplicationRequestBuilder
    implements
        Builder<DeleteBucketReplicationRequest,
            DeleteBucketReplicationRequestBuilder> {
  _$DeleteBucketReplicationRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  DeleteBucketReplicationRequestBuilder();

  DeleteBucketReplicationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteBucketReplicationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteBucketReplicationRequest;
  }

  @override
  void update(void Function(DeleteBucketReplicationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteBucketReplicationRequest build() => _build();

  _$DeleteBucketReplicationRequest _build() {
    final _$result = _$v ??
        new _$DeleteBucketReplicationRequest._(
            bucket: BuiltValueNullFieldError.checkNotNull(
                bucket, r'DeleteBucketReplicationRequest', 'bucket'),
            expectedBucketOwner: expectedBucketOwner);
    replace(_$result);
    return _$result;
  }
}

class _$DeleteBucketReplicationRequestPayload
    extends DeleteBucketReplicationRequestPayload {
  factory _$DeleteBucketReplicationRequestPayload(
          [void Function(DeleteBucketReplicationRequestPayloadBuilder)?
              updates]) =>
      (new DeleteBucketReplicationRequestPayloadBuilder()..update(updates))
          ._build();

  _$DeleteBucketReplicationRequestPayload._() : super._();

  @override
  DeleteBucketReplicationRequestPayload rebuild(
          void Function(DeleteBucketReplicationRequestPayloadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteBucketReplicationRequestPayloadBuilder toBuilder() =>
      new DeleteBucketReplicationRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteBucketReplicationRequestPayload;
  }

  @override
  int get hashCode {
    return 92642088;
  }
}

class DeleteBucketReplicationRequestPayloadBuilder
    implements
        Builder<DeleteBucketReplicationRequestPayload,
            DeleteBucketReplicationRequestPayloadBuilder> {
  _$DeleteBucketReplicationRequestPayload? _$v;

  DeleteBucketReplicationRequestPayloadBuilder();

  @override
  void replace(DeleteBucketReplicationRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteBucketReplicationRequestPayload;
  }

  @override
  void update(
      void Function(DeleteBucketReplicationRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteBucketReplicationRequestPayload build() => _build();

  _$DeleteBucketReplicationRequestPayload _build() {
    final _$result = _$v ?? new _$DeleteBucketReplicationRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
